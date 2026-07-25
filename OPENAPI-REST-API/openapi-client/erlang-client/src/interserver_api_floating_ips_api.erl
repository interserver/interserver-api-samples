-module(interserver_api_floating_ips_api).

-export([add_floating_ip/2, add_floating_ip/3,
         floating_ips_cancel/2, floating_ips_cancel/3,
         get_floating_ip_info/2, get_floating_ip_info/3,
         get_floating_ip_invoices/2, get_floating_ip_invoices/3,
         get_floating_ips_list/1, get_floating_ips_list/2,
         get_floating_ips_welcome_email/2, get_floating_ips_welcome_email/3,
         get_new_floating_ip/1, get_new_floating_ip/2,
         post_floating_ips_change_ip/3, post_floating_ips_change_ip/4,
         put_floating_ips/2, put_floating_ips/3,
         update_floating_ip_info/2, update_floating_ip_info/3]).

-define(BASE_URL, <<"/apiv2">>).

%% @doc Place a real Floating IP order, create billing records, and provision the service
%% Charges the customer and creates a new Floating IP service via `place_buy_floating_ip`. Validate first with `putFloating_ips` to avoid surprise failures. Body (form-encoded): `serviceType` (required, `services_id`), `coupon` (optional), `comment` (optional internal note). On success returns `{ continue:true, errors, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }` — `iid` is the master invoice ID, `serviceId` is the new `floating_ip_id`. On validation failure returns `{ continue:false, errors:[...] }` with no charge. Errors: 401 if unauthenticated; soft errors in `errors[]`. The newly-issued IP starts unassigned — point it at a target with `postFloatingIpsChangeIp` once the service is `active`.  Sibling ops: `getNewFloatingIp` (catalog), `putFloating_ips` (validate), `getFloatingIpInfo` (poll), `postFloatingIpsChangeIp` (route), `getBillingInvoice` + `initiatePayment` (settle invoice), `floating_ipsCancel`.
-spec add_floating_ip(ctx:ctx(), interserver_api_floating_ip_order_request:interserver_api_floating_ip_order_request()) -> {ok, interserver_api_service_order_post_response:interserver_api_service_order_post_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_floating_ip(Ctx, InterserverApiFloatingIpOrderRequest) ->
    add_floating_ip(Ctx, InterserverApiFloatingIpOrderRequest, #{}).

-spec add_floating_ip(ctx:ctx(), interserver_api_floating_ip_order_request:interserver_api_floating_ip_order_request(), maps:map()) -> {ok, interserver_api_service_order_post_response:interserver_api_service_order_post_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_floating_ip(Ctx, InterserverApiFloatingIpOrderRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/floating_ips/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiFloatingIpOrderRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel a Floating IP service and release the IP — destructive, billing stops
%% Cancels the Floating IP via the shared `Api\\Billing\\CancelService` flow — flips status to canceled, halts recurring billing, and releases the IP back to the pool so it can no longer be re-routed. Not reversible: the customer cannot recover the same IP after release. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `FloatingIpsCancelResponse` shape (success text / cancellation outcome). Errors: 401 if unauthenticated; 404 / cross-customer hidden when `id` is not owned by the caller; 409 if already canceled or otherwise non-cancelable. Confirm with the customer before calling — for routing changes use `postFloatingIpsChangeIp` instead of cancel-and-reorder.  Sibling ops: `getFloatingIpInfo` (status), `getFloatingIpInvoices` (outstanding charges), `postFloatingIpsChangeIp` (re-route instead of cancel), `addFloatingIp` (re-order).
-spec floating_ips_cancel(ctx:ctx(), integer()) -> {ok, interserver_api_floating_ips_cancel_200_response:interserver_api_floating_ips_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
floating_ips_cancel(Ctx, Id) ->
    floating_ips_cancel(Ctx, Id, #{}).

-spec floating_ips_cancel(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_floating_ips_cancel_200_response:interserver_api_floating_ips_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
floating_ips_cancel(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/floating_ips/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch full details for one Floating IP service, including current target IP
%% Use for a Floating IP detail screen, or to read `floating_ip_ip` / `floating_ip_target_ip` before calling `postFloatingIpsChangeIp`. Read-only. Path param `id` (integer, `floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ViewFloatingIp.getDetails()` payload — service info, billing/cost summary, status, target IP, and `client_links` (action URLs the UI can render). Internal-only fields (`admin_links`, `settings`, `csrf`) are stripped. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller (`get_service` filters by custid). Siblings: `postFloatingIpsChangeIp`, `updateFloatingIpInfo`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, `floating_ipsCancel`.
-spec get_floating_ip_info(ctx:ctx(), integer()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_floating_ip_info(Ctx, Id) ->
    get_floating_ip_info(Ctx, Id, #{}).

-spec get_floating_ip_info(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_floating_ip_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/floating_ips/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all billing invoices charged against a specific Floating IP service
%% Use for a per-service billing history view — pulls the standard `Api\\Billing\\InvoicesList` rows scoped to this Floating IP. Read-only. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ChargeInvoiceRows` schema: array of invoice rows with id, date, amount, status, etc. Use the invoice IDs with the global billing endpoints (`getBillingInvoice`, `initiatePayment`) for line-item detail. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller. Siblings: `getFloatingIpInfo` (service details), `getFloatingIpsWelcomeEmail`.
-spec get_floating_ip_invoices(ctx:ctx(), integer()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_floating_ip_invoices(Ctx, Id) ->
    get_floating_ip_invoices(Ctx, Id, #{}).

-spec get_floating_ip_invoices(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_floating_ip_invoices(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/floating_ips/", Id, "/invoices"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all Floating IP services on the authenticated customer's account
%% Use to enumerate every Floating IP the caller owns before drilling into a specific one. Read-only; safe to call frequently. No params, no body. Returns an array of rows: `floating_ip_id`, `repeat_invoices_cost` (recurring price), `floating_ip_ip` (the portable IP), `floating_ip_target_ip` (the IP it currently routes to), `floating_ip_status` (active/pending/canceled/etc.), `services_name` (package label). Empty array if the account owns no Floating IPs. Errors: 401 if unauthenticated. Use returned IDs with `getFloatingIpInfo`, `postFloatingIpsChangeIp`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, or `floating_ipsCancel`. To order a new one see `getNewFloatingIp` / `addFloatingIp`.  Sibling ops: `getFloatingIpInfo`, `getNewFloatingIp` (catalog), `addFloatingIp` (order).
-spec get_floating_ips_list(ctx:ctx()) -> {ok, [maps:map()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_floating_ips_list(Ctx) ->
    get_floating_ips_list(Ctx, #{}).

-spec get_floating_ips_list(ctx:ctx(), maps:map()) -> {ok, [maps:map()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_floating_ips_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/floating_ips"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Resend the Floating IP welcome / setup email to the account contact
%% Triggers `floating_ip_welcome_email($id)` to re-deliver the original setup email (the IP, routing instructions, etc.) to the customer's on-file address. Useful when the email was lost or the customer needs the IP/setup details again. No body, no params besides path `id` (`floating_ip_id`). Returns `{ text: 'Welcome Email has been resent.' }`. Errors: 401 if unauthenticated; 404 (`Invalid Service Passed`) if `id` is not owned by the caller; 409 (`Service is not active`) if status is not `active`. Side effect: sends an outbound email — avoid in tight loops. Read state first via `getFloatingIpInfo` if unsure of status.  Sibling ops: `getFloatingIpInfo` (status), `addFloatingIp` (new order), `floating_ipsCancel`.
-spec get_floating_ips_welcome_email(ctx:ctx(), integer()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_floating_ips_welcome_email(Ctx, Id) ->
    get_floating_ips_welcome_email(Ctx, Id, #{}).

-spec get_floating_ips_welcome_email(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_floating_ips_welcome_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/floating_ips/", Id, "/welcome_email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get pricing and service-type options for ordering a new Floating IP
%% Use before showing a Floating IP order form, or before calling `addFloatingIp`, to discover which service types (`serviceTypes`) and prices (`packageCosts`, keyed by `services_id` in the customer's currency) are currently buyable. Read-only; no side effects. No params, no body. Returns `{ packageCosts: { <services_id>: <cost> }, serviceTypes: [ ... ] } `. Costs are `services.services_cost` filtered to `services_buyable=1` for module `floating_ips`. Errors: 401 if unauthenticated. Next steps: validate the chosen `serviceType` with `putFloating_ips`, then place the order with `addFloatingIp`. Floating IPs are portable IPv4 addresses that route to a target IP on one of the customer's active services.  Sibling ops: `putFloating_ips` (validate), `addFloatingIp` (commit), `getFloatingIpsList` (existing IPs).
-spec get_new_floating_ip(ctx:ctx()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_floating_ip(Ctx) ->
    get_new_floating_ip(Ctx, #{}).

-spec get_new_floating_ip(ctx:ctx(), maps:map()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_floating_ip(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/floating_ips/order"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Re-point a Floating IP to a different target IP on one of the customer's services
%% Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via `Sshwitch`), then updates `floating_ip_target_ip`. Use to move a portable IP between the customer's VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param `id` (`floating_ip_id`). Body: `{ ip: <new target IP> }` (also accepts multipart form). Returns `{ success:true, text:'IP Changed' }`. Errors (returned via `json_error`): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: `getFloatingIpInfo` (read current target), `getFloatingIpsList`, `floating_ipsCancel`. Read current target with `getFloatingIpInfo` first.
-spec post_floating_ips_change_ip(ctx:ctx(), integer(), binary()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_floating_ips_change_ip(Ctx, Id, Ip) ->
    post_floating_ips_change_ip(Ctx, Id, Ip, #{}).

-spec post_floating_ips_change_ip(ctx:ctx(), integer(), binary(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_floating_ips_change_ip(Ctx, Id, Ip, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/floating_ips/", Id, "/change_ip"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"ip">>, Ip}]++interserver_api_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"multipart/form-data">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate a Floating IP order and price it without charging the customer
%% Dry-run for `addFloatingIp` — runs `validate_buy_floating_ip` to apply coupons, compute intro/repeat pricing, and surface errors before committing. No charge, no service created. Body fields (form-encoded): `serviceType` (required, `services_id` from `getNewFloatingIp.packageCosts`), `coupon` (optional code). Returns `{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, password, introFrequency, coupon, couponCode }`. `continue=true` means the order would succeed; `continue=false` plus populated `errors[]` means it would not. Errors: 401 if unauthenticated; 422-style soft errors arrive in the `errors` array. Use the returned `serviceType` and `couponCode` when calling `addFloatingIp`. Sibling ops: `getNewFloatingIp` (catalog), `addFloatingIp` (commit).
-spec put_floating_ips(ctx:ctx(), interserver_api_floating_ip_order_request:interserver_api_floating_ip_order_request()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_floating_ips(Ctx, InterserverApiFloatingIpOrderRequest) ->
    put_floating_ips(Ctx, InterserverApiFloatingIpOrderRequest, #{}).

-spec put_floating_ips(ctx:ctx(), interserver_api_floating_ip_order_request:interserver_api_floating_ip_order_request(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_floating_ips(Ctx, InterserverApiFloatingIpOrderRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/floating_ips/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiFloatingIpOrderRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Floating IP service's editable settings (label / metadata)
%% Stub edit endpoint that delegates to the same handler as `getFloatingIpInfo` — currently used for label/metadata edits surfaced by `ViewFloatingIp`. To re-route the IP to a different target use the dedicated `postFloatingIpsChangeIp` instead; this op does not change routing. Path param `id` (`floating_ip_id`). Body: form-encoded fields exposed by the Floating IP edit form (label/comment style). Returns the standard success-text response. Errors: 401 if unauthenticated; effectively 404 if `id` not owned by the caller. Read state first with `getFloatingIpInfo`.  Sibling ops: `getFloatingIpInfo` (read), `postFloatingIpsChangeIp` (re-route), `floating_ipsCancel`.
-spec update_floating_ip_info(ctx:ctx(), binary()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_floating_ip_info(Ctx, Id) ->
    update_floating_ip_info(Ctx, Id, #{}).

-spec update_floating_ip_info(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_floating_ip_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/floating_ips/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).



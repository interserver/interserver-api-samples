-module(interserver_api_ssl_certificates_api).

-export([add_ssl/2, add_ssl/3,
         get_new_ssl/1, get_new_ssl/2,
         get_ssl_info/2, get_ssl_info/3,
         get_ssl_invoices/2, get_ssl_invoices/3,
         get_ssl_list/1, get_ssl_list/2,
         get_ssl_welcome_email/2, get_ssl_welcome_email/3,
         put_ssl/2, put_ssl/3,
         ssl_cancel/2, ssl_cancel/3,
         update_ssl_info/2, update_ssl_info/3]).

-define(BASE_URL, <<"/apiv2">>).

%% @doc Place a new SSL certificate order - creates invoice and queues issuance
%% [DESTRUCTIVE] Use after putSsl returns continue=true to commit the SSL order. Body (form): frequency (default 12 months), service_type, hostname, csr, coupon_code, plus per-type vars/extra. Re-runs validate_buy_ssl then calls place_buy_ssl which creates the service row, generates invoice (iid/iids/real_iids), and returns serviceId, serviceCost, invoice_description. CA validation is async - issuance takes minutes to hours and may require DNS or email validation post-order. If validation fails, returns continue=false with errors and no charge. Returns 401 unauthenticated, 422 invalid input. Caveat: cert is not active until invoice paid AND CA validation completes. Poll status via getSslInfo; resend instructions via getSslWelcomeEmail.  Sibling ops: `getNewSsl` (catalog), `putSsl` (validate), `getSslInfo` (poll), `getSslInvoices`, `initiatePayment` (settle invoice), `getSslWelcomeEmail`, `sslCancel`.
-spec add_ssl(ctx:ctx(), interserver_api_ssl_order_request:interserver_api_ssl_order_request()) -> {ok, interserver_api_service_order_post_response:interserver_api_service_order_post_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_ssl(Ctx, InterserverApiSslOrderRequest) ->
    add_ssl(Ctx, InterserverApiSslOrderRequest, #{}).

-spec add_ssl(ctx:ctx(), interserver_api_ssl_order_request:interserver_api_ssl_order_request(), maps:map()) -> {ok, interserver_api_service_order_post_response:interserver_api_service_order_post_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_ssl(Ctx, InterserverApiSslOrderRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/ssl/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiSslOrderRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get available SSL certificate packages and pricing for placing a new order
%% Use before addSsl to discover which DV/OV/EV certificate types and validation tiers are buyable, plus their costs. Returns object with packageCosts (services_id keyed map of float costs) and serviceTypes (full list of SSL product offerings from the get_service_types event). No parameters required - prices are in the customer's currency. Returns 401 if unauthenticated. Show these to the customer to pick a service_type, then call putSsl to dry-run validation (hostname, CSR, coupon) without charging, then addSsl to commit. Costs do not include taxes or applied coupons — putSsl returns the actual computed price with discounts.  Sibling ops: `putSsl` (validate), `addSsl` (commit), `getSslList` (existing certs), `getSslInfo` (per-cert).
-spec get_new_ssl(ctx:ctx()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_ssl(Ctx) ->
    get_new_ssl(Ctx, #{}).

-spec get_new_ssl(ctx:ctx(), maps:map()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_ssl(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/ssl/order"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get full details for one SSL certificate by id - status, expiration, links
%% Use to inspect a single SSL cert after locating its id via getSslList. Path param id (integer, required) is the ssl_id; cross-account ids return 404 (get_service enforces ownership). Returns the ViewSSL detail payload: hostname, service_type, status, expiration, company, plus client_links (rewrite/reissue/install actions available to the customer). admin_links, settings, csrf are stripped from client responses. Returns 401 unauthenticated, 404 if id not owned by the session customer. Reissue/rekey/install actions surfaced in client_links are time-sensitive and may require fresh DNS validation. Pair with getSslInvoices for billing history, getSslWelcomeEmail to resend, sslCancel to terminate, updateSslInfo to modify settings.  Sibling ops: `updateSslInfo`, `getSslInvoices`, `getSslWelcomeEmail`, `sslCancel`, `getSslList`.
-spec get_ssl_info(ctx:ctx(), integer()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ssl_info(Ctx, Id) ->
    get_ssl_info(Ctx, Id, #{}).

-spec get_ssl_info(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ssl_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/ssl/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all billing invoices and charges tied to one SSL certificate by id
%% Use to retrieve the full invoice history for a single SSL cert - initial order, renewals, and any addon charges. Path param id (integer, required) is the ssl_id; ownership is enforced via get_service so cross-account ids return an Invalid Service error. Returns ChargeInvoiceRows: success bool plus invoices array of charge/invoice rows with iid, date, cost, status (paid/unpaid/refunded), and description. Returns 401 unauthenticated, 400 if the id resolves to no service. Useful for auditing renewals before sslCancel, reconciling payment failures, or showing the customer their billing history.  Sibling ops: `getSslInfo`, `sslCancel`, `getSslWelcomeEmail`, `getBillingInvoice` (per-invoice detail), `initiatePayment` (settle unpaid).
-spec get_ssl_invoices(ctx:ctx(), integer()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ssl_invoices(Ctx, Id) ->
    get_ssl_invoices(Ctx, Id, #{}).

-spec get_ssl_invoices(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ssl_invoices(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/ssl/", Id, "/invoices"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all SSL certificates on the authenticated customer account with status and hostname
%% Use to enumerate every SSL certificate (DV/OV/EV) the current customer owns before drilling into a specific cert. Returns an array of SslRow objects with id, hostname, services_name (package), status (pending/active/expired/canceled), and company. No query parameters - results are auto-scoped to the session account_id. Empty array if customer has no certs. Returns 401 if unauthenticated. Pair the returned id with getSslInfo for full details, getSslInvoices for billing, getSslWelcomeEmail to resend credentials, sslCancel to terminate, or addSsl to order a new cert. Status values may be stale relative to CA - issuance/validation can take minutes to hours after order.  Sibling ops: `getSslInfo`, `getNewSsl` (catalog), `addSsl` (order new cert).
-spec get_ssl_list(ctx:ctx()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ssl_list(Ctx) ->
    get_ssl_list(Ctx, #{}).

-spec get_ssl_list(ctx:ctx(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ssl_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/ssl"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Resend the SSL welcome email with cert credentials and install instructions
%% Use when a customer lost the original welcome email containing CSR submission steps, validation links, or installation guidance for an active SSL cert. Path param id (integer, required) is the ssl_id. Triggers the module's ssl_welcome_email function to re-send to the account's email on file. Returns SuccessTextResponse: text='Welcome Email has been resent.' Returns 401 unauthenticated, 404 if id not found or not owned by session customer ('Invalid Service Passed'), 409 if cert status is not 'active' (pending/canceled/expired certs do not have a welcome email to resend). Caveat: cannot change the destination email - update the account profile first if the customer's address has changed.  Sibling ops: `getSslInfo` (verify status), `sslCancel` (terminate), `updateAccountInfo` (change email first).
-spec get_ssl_welcome_email(ctx:ctx(), integer()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ssl_welcome_email(Ctx, Id) ->
    get_ssl_welcome_email(Ctx, Id, #{}).

-spec get_ssl_welcome_email(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ssl_welcome_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/ssl/", Id, "/welcome_email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate an SSL certificate order without charging - dry-run before addSsl
%% Use after getNewSsl and before addSsl to verify hostname, CSR, service_type, frequency, and coupon_code are acceptable without creating an invoice or charging the customer. Body params (form): frequency (months, default 12), service_type, hostname, csr, coupon_code, plus extra/vars per cert type. Returns continue (bool), errors (array), serviceType, serviceCost (after coupon), originalCost, hostname, couponCode. If continue=false the errors array explains what to fix - typical issues are invalid hostname/CSR mismatch, expired coupon, or unsupported service_type. Returns 401 if unauthenticated, 422 on validation failure semantics. No state is mutated. Always run this before addSsl to prevent failed charges. Sibling ops: `getNewSsl` (catalog), `addSsl` (commit).
-spec put_ssl(ctx:ctx(), interserver_api_ssl_order_request:interserver_api_ssl_order_request()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_ssl(Ctx, InterserverApiSslOrderRequest) ->
    put_ssl(Ctx, InterserverApiSslOrderRequest, #{}).

-spec put_ssl(ctx:ctx(), interserver_api_ssl_order_request:interserver_api_ssl_order_request(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_ssl(Ctx, InterserverApiSslOrderRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/ssl/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiSslOrderRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel an SSL certificate service - stops renewals at end of billing cycle
%% [DESTRUCTIVE] Use to cancel a customer-owned SSL cert. Path param id (integer, required) is the ssl_id. Cancellation marks the service for non-renewal - the cert stays valid until its current paid period ends, after which auto-billing stops. The CA-issued certificate itself is NOT revoked by this call (file a separate revocation request if needed). Returns SSLCancelResponse with success bool and text. Returns 401 unauthenticated, 404 if id not owned by session customer, error if the cancel_service hook fails. Caveat: irreversible at the billing level - re-enabling requires a new addSsl order. Verify the right cert with getSslInfo and confirm no unpaid charges via getSslInvoices first.  Sibling ops: `getSslInfo` (verify cert), `getSslInvoices` (check unpaid), `addSsl` (re-order).
-spec ssl_cancel(ctx:ctx(), integer()) -> {ok, interserver_api_ssl_cancel_200_response:interserver_api_ssl_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
ssl_cancel(Ctx, Id) ->
    ssl_cancel(Ctx, Id, #{}).

-spec ssl_cancel(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_ssl_cancel_200_response:interserver_api_ssl_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
ssl_cancel(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/ssl/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update mutable settings on an existing SSL certificate order by id
%% Use to modify mutable fields on a customer-owned SSL cert (e.g. contact info, renewal preferences, hostname or CSR data depending on cert state and CA rules). Path param id (string/int, required) is the ssl_id. Body params depend on the cert package and which fields the underlying service supports - inspect getSslInfo client_links first to see which actions are exposed. Returns SuccessTextResponse on success. Returns 401 unauthenticated, 404 if id not owned, 409 if cert state forbids the change (e.g. canceled or pending CA validation), 422 on invalid field values. Caveat: changes that affect the certificate identity (hostname, CSR) typically trigger a reissue with the CA which is time-sensitive and may require new DNS or email validation.  Sibling ops: `getSslInfo` (read), `sslCancel` (terminate), `getSslWelcomeEmail`.
-spec update_ssl_info(ctx:ctx(), binary()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_ssl_info(Ctx, Id) ->
    update_ssl_info(Ctx, Id, #{}).

-spec update_ssl_info(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_ssl_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/ssl/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).



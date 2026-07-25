-module(interserver_api_scrub_ips_api).

-export([cancel_scrub_ip/2, cancel_scrub_ip/3,
         create_filter/3, create_filter/4,
         create_geo_rule/3, create_geo_rule/4,
         create_rule/3, create_rule/4,
         delete_filter/3, delete_filter/4,
         disable_scrub/2, disable_scrub/3,
         enable_scrub/2, enable_scrub/3,
         get_order_detail/1, get_order_detail/2,
         get_scrub_ip_details/2, get_scrub_ip_details/3,
         get_scrub_ip_filter_types/1, get_scrub_ip_filter_types/2,
         get_scrub_ip_invoices/2, get_scrub_ip_invoices/3,
         get_scrub_ip_logs/2, get_scrub_ip_logs/3,
         get_scrub_ips_list/1, get_scrub_ips_list/2,
         place_scrub_order/2, place_scrub_order/3,
         put_scrub_ips/2, put_scrub_ips/3,
         scrub_ips_delete_geo_rule/3, scrub_ips_delete_geo_rule/4,
         scrub_ips_delete_rule/3, scrub_ips_delete_rule/4]).

-define(BASE_URL, <<"/apiv2">>).

%% @doc Cancel a Scrub IP service and stop its recurring DDoS billing
%% Cancels the Scrub IP DDoS protection service. The protected IP is removed from the scrubbing infrastructure and the recurring invoice is closed; protection stops at end of the current billing cycle. Use only when the customer no longer needs DDoS scrubbing for the IP. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body. Returns {success: true, text: 'Scrub Ips is canceled.'}. Errors: 401 unauthenticated; 404/Invalid Service if id is not owned by the session account; 409 if the service is not in a cancellable state. Caveat: leaves the underlying VPS/server IP exposed to attacks once protection ends; contact billing for refund handling. Siblings: getScrubIpDetails, disableScrub, getScrubIpInvoices.
-spec cancel_scrub_ip(ctx:ctx(), integer()) -> {ok, interserver_api_cancel_scrub_ip_200_response:interserver_api_cancel_scrub_ip_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
cancel_scrub_ip(Ctx, Id) ->
    cancel_scrub_ip(Ctx, Id, #{}).

-spec cancel_scrub_ip(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_cancel_scrub_ip_200_response:interserver_api_cancel_scrub_ip_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
cancel_scrub_ip(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/scrub_ips/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
%% Attaches a named scrubbing profile to a destination port on the protected IP, applying protocol-aware mitigation (DNS amplification protection, HTTP rate limiting, synproxy SYN-cookies). Call getScrubIpFilterTypes first to list valid `filter_type` values. Path param: `id` (integer, required) — service ID. Body (CreateFilter): `filter_type` (string, required, one of getScrubIpFilterTypes keys), `port` (int, required, >= 0). Destination IP is locked to the service IP server-side; synproxy uses a different shape internally. Returns 201 {success: true, text: 'New filter has been created.'}. Errors: 400 'Filter type is empty/invalid', 'Port is invalid', or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::filterCreate fails. Siblings: deleteFilter, getScrubIpFilterTypes, createRule.
-spec create_filter(ctx:ctx(), integer(), interserver_api_create_filter:interserver_api_create_filter()) -> {ok, interserver_api_create_filter_201_response:interserver_api_create_filter_201_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
create_filter(Ctx, Id, InterserverApiCreateFilter) ->
    create_filter(Ctx, Id, InterserverApiCreateFilter, #{}).

-spec create_filter(ctx:ctx(), integer(), interserver_api_create_filter:interserver_api_create_filter(), maps:map()) -> {ok, interserver_api_create_filter_201_response:interserver_api_create_filter_201_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
create_filter(Ctx, Id, InterserverApiCreateFilter, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/create_filter"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiCreateFilter,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add a geographic firewall rule (block/allow by country code or ASN)
%% Creates a geo-based XDP rule on the scrubber for the service's protected IP. Use to block traffic from specific countries or ASNs (botnet source regions) or to allow only known regions. Path param: `id` (integer, required) — service ID. Body (CreateGeoFirewallRule): `country_code` (int, country numeric ID) OR `asn` (int) — at least one is required, `destination_port` (int, defaults 80), `xdp_action` (0 allow, 1 drop, defaults 1). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 errors[] 'Country or Asn is required.' or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::geoFirewallCreate fails. Caveat: country_code is an internal numeric ID, not ISO-3166. Siblings: scrubIpsDeleteGeoRule, createRule, createFilter.
-spec create_geo_rule(ctx:ctx(), integer(), interserver_api_create_geo_firewall_rule:interserver_api_create_geo_firewall_rule()) -> {ok, interserver_api_create_rule_201_response:interserver_api_create_rule_201_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
create_geo_rule(Ctx, Id, InterserverApiCreateGeoFirewallRule) ->
    create_geo_rule(Ctx, Id, InterserverApiCreateGeoFirewallRule, #{}).

-spec create_geo_rule(ctx:ctx(), integer(), interserver_api_create_geo_firewall_rule:interserver_api_create_geo_firewall_rule(), maps:map()) -> {ok, interserver_api_create_rule_201_response:interserver_api_create_rule_201_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
create_geo_rule(Ctx, Id, InterserverApiCreateGeoFirewallRule, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/create_geo_rule"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiCreateGeoFirewallRule,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
%% Creates an XDP firewall rule on the scrubber for the service's protected IP. Use to whitelist a known good source, block an abusive source, or restrict a destination port. Path param: `id` (integer, required) — service ID. Body (CreateFirewallRule): `source_ip` (IPv4, 0 = any), `source_port` (int, 0 = any), `destination_port` (int, 0 = any), `protocol_id` (1 ICMP or 2 TCP/UDP — must be 1 or 2), `xdp_action` (0 allow, 1 drop). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 with `errors[]` for invalid source_ip/protocol_id/xdp_action or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::firewallCreate fails. Caveat: rules are stateless and may interact with active filters. Siblings: scrubIpsDeleteRule, createGeoRule, createFilter.
-spec create_rule(ctx:ctx(), integer(), interserver_api_create_firewall_rule:interserver_api_create_firewall_rule()) -> {ok, interserver_api_create_rule_201_response:interserver_api_create_rule_201_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
create_rule(Ctx, Id, InterserverApiCreateFirewallRule) ->
    create_rule(Ctx, Id, InterserverApiCreateFirewallRule, #{}).

-spec create_rule(ctx:ctx(), integer(), interserver_api_create_firewall_rule:interserver_api_create_firewall_rule(), maps:map()) -> {ok, interserver_api_create_rule_201_response:interserver_api_create_rule_201_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
create_rule(Ctx, Id, InterserverApiCreateFirewallRule, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/create_rule"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiCreateFirewallRule,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Remove a scrubbing filter by matching filter_type and port
%% Removes a previously attached scrubbing profile from the protected IP. Identification is by composite key, not `rule_id` — pass the same `filter_type` and `port` that were used in `createFilter`. The endpoint splits `filter_type` on `_` to dispatch to the correct delete shape (synproxy vs generic). Sibling ops: `createFilter`, `getScrubIpFilterTypes`.  **Path:** `id` (integer, required) — Scrub IP service ID.  **Body fields:** - `filter_type` (string, required) — must match an enabled type from `getScrubIpFilterTypes`. - `port` (integer, required) — must be `> 0`.  **Returns:** `{ success: true, text: 'Filter is deleted.' }`.  **Errors:** - `400` — `'Filter is required.'` / `'Port is required.'` / `'Invalid filter'` / `Invalid Service`. - `401` — unauthenticated. - `500` — upstream `Scrub::filterDelete` failed.  **Caveat:** the port loses its protocol-specific scrubbing protection until `createFilter` is called again with the same composite key. 
-spec delete_filter(ctx:ctx(), integer(), interserver_api_create_filter:interserver_api_create_filter()) -> {ok, interserver_api_delete_filter_200_response:interserver_api_delete_filter_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_filter(Ctx, Id, InterserverApiCreateFilter) ->
    delete_filter(Ctx, Id, InterserverApiCreateFilter, #{}).

-spec delete_filter(ctx:ctx(), integer(), interserver_api_create_filter:interserver_api_create_filter(), maps:map()) -> {ok, interserver_api_delete_filter_200_response:interserver_api_delete_filter_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_filter(Ctx, Id, InterserverApiCreateFilter, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/delete_filter"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiCreateFilter,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Disable DDoS scrubbing and remove the BGP announcement on the IP
%% Withdraws the BGP announcement from Wanguard so the IP stops being routed through scrubbing; traffic resumes flowing directly to the backend. Use for maintenance windows or migration off scrub. Path param: `id` (integer, required) — service ID from getScrubIpsList. No body (HTTP GET). The endpoint reads the stored Wanguard `href` from the service's `extra` JSON to know which announcement to delete; clears `extra` on success. Returns {success: true, text: 'Scrub is disabled on your IP.'}. Errors: 400 Invalid Service if id is not owned, or 'Scrub is not enabled in this service.' if there is no active announcement; 401 unauthenticated; 500 if upstream delete fails. Caveat: leaves the IP unprotected against DDoS until enableScrub is called. Siblings: enableScrub, cancelScrubIp, getScrubIpDetails.
-spec disable_scrub(ctx:ctx(), integer()) -> {ok, interserver_api_disable_scrub_200_response:interserver_api_disable_scrub_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
disable_scrub(Ctx, Id) ->
    disable_scrub(Ctx, Id, #{}).

-spec disable_scrub(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_disable_scrub_200_response:interserver_api_disable_scrub_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
disable_scrub(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/disable"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Enable DDoS scrubbing (BGP announcement) on the service's protected IP
%% Routes the service's protected IP through the Wanguard scrubbing infrastructure by creating a BGP announcement, so inbound traffic passes through filtering before reaching the backend. Call after placeScrubOrder activation, after disableScrub, or whenever the announcement was lost. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body (HTTP GET). Returns {success: true, text: 'Scrub is enabled on your IP.'} on 201 from Wanguard, persisted into the service's `extra` column. Errors: 400 Invalid Service if id is not owned by the session account; 401 unauthenticated; 500 if the upstream Wanguard call fails. Caveat: enabling re-routes live traffic and can briefly disrupt active sessions. Siblings: disableScrub, getScrubIpDetails, getScrubIpLogs.
-spec enable_scrub(ctx:ctx(), integer()) -> {ok, interserver_api_enable_scrub_200_response:interserver_api_enable_scrub_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
enable_scrub(Ctx, Id) ->
    enable_scrub(Ctx, Id, #{}).

-spec enable_scrub(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_enable_scrub_200_response:interserver_api_enable_scrub_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
enable_scrub(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/enable"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get plans, pricing, and eligible IPs for a new Scrub IP order
%% Returns the data needed to render a new-order form: `packageCosts` (default services_id and recurring price in customer currency with symbol), `serviceTypes` (each buyable plan with services_id, services_name, services_cost, services_module), and `ips` (the customer's existing VPS/server/floating IPs eligible to be put behind a scrubber, each with service_id, service_module, service_hostname). Use as a precursor to putScrubIps (validate) or placeScrubOrder (commit). No path/query/body parameters. Returns object. Errors: 401 unauthenticated. Caveat: ips list is filtered to the session account; pricing is converted to the customer's currency. Siblings: putScrubIps, placeScrubOrder, getScrubIpsList.
-spec get_order_detail(ctx:ctx()) -> {ok, interserver_api_get_order_detail_200_response:interserver_api_get_order_detail_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_order_detail(Ctx) ->
    get_order_detail(Ctx, #{}).

-spec get_order_detail(ctx:ctx(), maps:map()) -> {ok, interserver_api_get_order_detail_200_response:interserver_api_get_order_detail_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_order_detail(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/scrub_ips/order"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get full Scrub IP service detail (rules + geo + filters)
%% Returns the full service-detail payload for one Scrub IP — used to render the dashboard or before mutating rules/filters. Includes `serviceInfo` (status, scrubbed IP, custid), `billingDetails` (cost, frequency), `client_links` (allowed self-service actions), and `filter_firewall` with the active firewall `rules`, geographic `geo_rules`, and traffic `filters`. Each rule/filter row carries its own `id` used by the delete endpoints. Sibling ops: `getScrubIpsList`, `enableScrub`, `disableScrub`, `createRule`, `scrubIpsDeleteRule`, `createGeoRule`, `scrubIpsDeleteGeoRule`, `createFilter`, `deleteFilter`, `getScrubIpInvoices`, `getScrubIpLogs`, `cancelScrubIp`.  **Path:** `id` (integer, required) — service ID from `getScrubIpsList`.  **Body / query:** None.  **Returns:** object with `serviceInfo`, `billingDetails`, `client_links`, `filter_firewall` (`rules` / `geo_rules` / `filters`).  **Auth:** Session/API key. Ownership enforced via `scrub_ips_custid`.  **Errors:** - `401` — unauthenticated. - `Invalid Service` — `id` is not owned by the session account.  **Caveat:** rule/filter IDs are regenerated after recreate — re-fetch before calling a delete endpoint.  **Related calls:** - **Mutations:** `enableScrub`, `disableScrub`, `createRule`, `createGeoRule`, `createFilter`. - **Deletes:** `scrubIpsDeleteRule`, `scrubIpsDeleteGeoRule`, `deleteFilter`. - **Billing / activity:** `getScrubIpInvoices`, `getScrubIpLogs`. - **Cancel:** `cancelScrubIp`. 
-spec get_scrub_ip_details(ctx:ctx(), integer()) -> {ok, interserver_api_get_scrub_ip_details_200_response:interserver_api_get_scrub_ip_details_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ip_details(Ctx, Id) ->
    get_scrub_ip_details(Ctx, Id, #{}).

-spec get_scrub_ip_details(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_get_scrub_ip_details_200_response:interserver_api_get_scrub_ip_details_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ip_details(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/scrub_ips/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List enabled traffic filter profiles available for createFilter
%% Returns the catalog of scrub filter profiles (e.g. dns, http, synproxy) currently enabled on the scrubbing platform, keyed by filter_name with a humanized display `name` and `desc`. Call this to populate a dropdown before invoking createFilter — the `filter_type` field on that endpoint must be one of the keys returned here. Not service-scoped: no path/query/body parameters and the same set applies to every Scrub IP. Returns {success: true, filters: {<filter_name>: {name, desc}, ...}}. Errors: 401 unauthenticated. Caveat: only filters with enabled=1 are returned; profile semantics are platform-defined (synproxy uses different request shape internally). Siblings: createFilter, deleteFilter, getScrubIpDetails.
-spec get_scrub_ip_filter_types(ctx:ctx()) -> {ok, interserver_api_scrub_ip_filter_types:interserver_api_scrub_ip_filter_types(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ip_filter_types(Ctx) ->
    get_scrub_ip_filter_types(Ctx, #{}).

-spec get_scrub_ip_filter_types(ctx:ctx(), maps:map()) -> {ok, interserver_api_scrub_ip_filter_types:interserver_api_scrub_ip_filter_types(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ip_filter_types(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/scrub_ips/filter_types"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List recurring and one-time invoices billed for this Scrub IP service
%% Returns the recurring and one-time invoices generated for the Scrub IP service so the caller can verify billing status, present a payment history, or initiate payment on an unpaid invoice. Use after placeScrubOrder (to find the new invoice id) or before cancelScrubIp (to surface outstanding balance). Path param: `id` (integer, required) — service ID from getScrubIpsList. No body/query parameters. Returns ChargeInvoiceRows (array of invoice objects with id, amount, status, due dates). Errors: 401 unauthenticated; empty result if id is not owned by the session account. Caveat: paid invoices remain in history; filter on status client-side. Siblings: getScrubIpDetails, placeScrubOrder, cancelScrubIp.
-spec get_scrub_ip_invoices(ctx:ctx(), integer()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ip_invoices(Ctx, Id) ->
    get_scrub_ip_invoices(Ctx, Id, #{}).

-spec get_scrub_ip_invoices(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ip_invoices(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/invoices"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get last 50000 packet/event log entries for the protected IP
%% Pulls scrubbing telemetry directly from the SCRUBLOGS clickhouse-style backend: timestamp, source IP, target IP, target port, protocol (ICMP/IGMP/TCP/UDP/etc.), byte_count, action (Allow/Drop/Challenge), and the matching filter label. Use for incident analysis, validating new firewall rules, or proving a DDoS attack hit the scrubber. Path param: `id` (string, required) — service ID. No body/query parameters. Timestamps are converted to the customer's timezone. Returns array of log rows (ScrubIpsLogRowSchema), most recent first, capped at 50000. Errors: 401 unauthenticated; returns false if id is not owned or upstream returns no data — not a 404. Caveat: large response; logs are not real-time and source IPs are reverse-byte-ordered. Siblings: getScrubIpDetails, enableScrub, createRule.
-spec get_scrub_ip_logs(ctx:ctx(), binary()) -> {ok, [interserver_api_scrub_ips_log_row_schema:interserver_api_scrub_ips_log_row_schema()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ip_logs(Ctx, Id) ->
    get_scrub_ip_logs(Ctx, Id, #{}).

-spec get_scrub_ip_logs(ctx:ctx(), binary(), maps:map()) -> {ok, [interserver_api_scrub_ips_log_row_schema:interserver_api_scrub_ips_log_row_schema()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ip_logs(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/logs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all Scrub IP DDoS protection services on the authenticated account
%% Returns every Scrub IP service belonging to the authenticated customer with status, protected IP, plan name, and recurring cost. Use this for dashboards, picking a service ID for downstream calls (getScrubIpDetails, enableScrub, createRule, getScrubIpLogs), or auditing which IPs are routed through DDoS scrubbing. No path/query/body parameters; service ownership is enforced via session account_id. Returns an array of {id, repeat_invoices_cost, ip, status, services_name}; empty array if no scrub services. Errors: 401 unauthenticated. Caveat: only customer-owned services are visible. Siblings: getScrubIpDetails, getOrderDetail, placeScrubOrder, cancelScrubIp.
-spec get_scrub_ips_list(ctx:ctx()) -> {ok, [interserver_api_scrub_ips_row_schema:interserver_api_scrub_ips_row_schema()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ips_list(Ctx) ->
    get_scrub_ips_list(Ctx, #{}).

-spec get_scrub_ips_list(ctx:ctx(), maps:map()) -> {ok, [interserver_api_scrub_ips_row_schema:interserver_api_scrub_ips_row_schema()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_scrub_ips_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/scrub_ips"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Place a new Scrub IP DDoS protection order and generate an invoice
%% Commits the order: re-runs validate_buy_scrub_ip then place_buy_scrub_ip which creates the service row, repeat_invoice, and a one-time invoice for the prorated charge. Use putScrubIps first to surface errors without billing. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id), `ip` (eligible IP from getOrderDetail). Returns 201 {success: true, text: 'ScrubIp order is placed.', order_details: {total_cost, service_id, invoice_id, invoice_description, cj_params}}. Errors: 400 {success: false, text: 'Unable to place order.', errors: []} on validation; 401 unauthenticated; 422 on invalid serviceType/ip; 409 if the IP is already protected. Caveat: invoice is unpaid at creation — pay via Pay endpoints to activate. Siblings: putScrubIps, getOrderDetail, enableScrub, getScrubIpInvoices.
-spec place_scrub_order(ctx:ctx(), interserver_api_scrub_ip_place_order:interserver_api_scrub_ip_place_order()) -> {ok, interserver_api_place_scrub_order_201_response:interserver_api_place_scrub_order_201_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
place_scrub_order(Ctx, InterserverApiScrubIpPlaceOrder) ->
    place_scrub_order(Ctx, InterserverApiScrubIpPlaceOrder, #{}).

-spec place_scrub_order(ctx:ctx(), interserver_api_scrub_ip_place_order:interserver_api_scrub_ip_place_order(), maps:map()) -> {ok, interserver_api_place_scrub_order_201_response:interserver_api_place_scrub_order_201_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
place_scrub_order(Ctx, InterserverApiScrubIpPlaceOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/scrub_ips/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiScrubIpPlaceOrder,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate a Scrub IP order and return effective pricing without billing
%% Dry-runs a Scrub IP purchase via validate_buy_scrub_ip and returns whether the order would succeed plus the resolved pricing — without creating an invoice. Use to render a real-time price/error panel as the user picks options. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id from getOrderDetail.serviceTypes), `ip` (one of getOrderDetail.ips), optional `coupon`. Returns {continue: bool, errors: [], serviceType, serviceCost, originalCost, repeatServiceCost}. Errors: 401 unauthenticated; validation failures appear in `errors`, not as HTTP 4xx. Caveat: idempotent — call as often as needed; 422 on invalid coupon surfaces in the errors array. Siblings: getOrderDetail, placeScrubOrder, getScrubIpsList.
-spec put_scrub_ips(ctx:ctx(), interserver_api_scrub_ip_place_order:interserver_api_scrub_ip_place_order()) -> {ok, interserver_api_put_scrub_ips_200_response:interserver_api_put_scrub_ips_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_scrub_ips(Ctx, InterserverApiScrubIpPlaceOrder) ->
    put_scrub_ips(Ctx, InterserverApiScrubIpPlaceOrder, #{}).

-spec put_scrub_ips(ctx:ctx(), interserver_api_scrub_ip_place_order:interserver_api_scrub_ip_place_order(), maps:map()) -> {ok, interserver_api_put_scrub_ips_200_response:interserver_api_put_scrub_ips_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_scrub_ips(Ctx, InterserverApiScrubIpPlaceOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/scrub_ips/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiScrubIpPlaceOrder,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a geo firewall rule by rule_id from getScrubIpDetails
%% Removes a previously created geographic firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.geo_rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'Rule Id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::geoFirewallDelete fails. Caveat: removing a country/ASN block re-admits that traffic. Siblings: createGeoRule, scrubIpsDeleteRule, deleteFilter, getScrubIpDetails.
-spec scrub_ips_delete_geo_rule(ctx:ctx(), integer(), interserver_api_delete_geo_firewall_rule:interserver_api_delete_geo_firewall_rule()) -> {ok, interserver_api_scrub_ips_delete_rule_200_response:interserver_api_scrub_ips_delete_rule_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
scrub_ips_delete_geo_rule(Ctx, Id, InterserverApiDeleteGeoFirewallRule) ->
    scrub_ips_delete_geo_rule(Ctx, Id, InterserverApiDeleteGeoFirewallRule, #{}).

-spec scrub_ips_delete_geo_rule(ctx:ctx(), integer(), interserver_api_delete_geo_firewall_rule:interserver_api_delete_geo_firewall_rule(), maps:map()) -> {ok, interserver_api_scrub_ips_delete_rule_200_response:interserver_api_scrub_ips_delete_rule_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
scrub_ips_delete_geo_rule(Ctx, Id, InterserverApiDeleteGeoFirewallRule, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/delete_geo_rule"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiDeleteGeoFirewallRule,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
%% Removes a previously created L3/L4 firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'rule_id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::firewallDelete fails. Caveat: if the rule was the only protection against a specific source, deleting it re-exposes the IP. Siblings: createRule, scrubIpsDeleteGeoRule, deleteFilter, getScrubIpDetails.
-spec scrub_ips_delete_rule(ctx:ctx(), integer(), interserver_api_delete_firewall_rule:interserver_api_delete_firewall_rule()) -> {ok, interserver_api_scrub_ips_delete_rule_200_response:interserver_api_scrub_ips_delete_rule_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
scrub_ips_delete_rule(Ctx, Id, InterserverApiDeleteFirewallRule) ->
    scrub_ips_delete_rule(Ctx, Id, InterserverApiDeleteFirewallRule, #{}).

-spec scrub_ips_delete_rule(ctx:ctx(), integer(), interserver_api_delete_firewall_rule:interserver_api_delete_firewall_rule(), maps:map()) -> {ok, interserver_api_scrub_ips_delete_rule_200_response:interserver_api_scrub_ips_delete_rule_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
scrub_ips_delete_rule(Ctx, Id, InterserverApiDeleteFirewallRule, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/scrub_ips/", Id, "/delete_rule"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiDeleteFirewallRule,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).



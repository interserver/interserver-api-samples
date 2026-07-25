-module(interserver_api_servers_api).

-export([add_server/2, add_server/3,
         buy_it_now_server_order/1, buy_it_now_server_order/2,
         get_mp_servers/1, get_mp_servers/2,
         get_new_server/1, get_new_server/2,
         get_server_info/2, get_server_info/3,
         get_server_invoices/2, get_server_invoices/3,
         get_server_list/1, get_server_list/2,
         get_server_reverse_dns/2, get_server_reverse_dns/3,
         get_servers_welcome_email/2, get_servers_welcome_email/3,
         place_buy_now_server/2, place_buy_now_server/3,
         post_server_reverse_dns/3, post_server_reverse_dns/4,
         server_bulk_ipmi_power_get/2, server_bulk_ipmi_power_get/3,
         server_ipmi_live_get/2, server_ipmi_live_get/3,
         server_ipmi_live_post/3, server_ipmi_live_post/4,
         server_ipmi_power_get/2, server_ipmi_power_get/3,
         server_ipmi_power_post/3, server_ipmi_power_post/4,
         servers_cancel/2, servers_cancel/3,
         update_server_info/2, update_server_info/3]).

-define(BASE_URL, <<"/apiv2">>).

%% @doc Place a custom dedicated server order, creating a real billable invoice
%% Submits a fully custom dedicated server order. Creates a `pending` `servers` row, a `Repeat_Invoice`, and the first invoice, then emails customer + admin. Caveat: real billable order — confirm with the user first. Body (form fields): `cpu` (id from `cpu_li`), `hd[]` (array of drive ids), `memory`, `bandwidth`, `ips`, `os`, `cp`, `raid` (ids from `getNewServer`), `region` (region_id), `servername` (valid hostname), `rootpass`, `tos` (must be true), optional `comment`. `account.server_order_discount` (if set) applies. Returns: `{ text:'Order Completed', invoice, order }`. Errors: 422 'Missing/Invalid <field>'; 401 unauth. Sibling ops: `getNewServer` (options), `placeBuyNowServer` (pre-built path), `getServerInfo` (view new order), `getServerInvoices`.
-spec add_server(ctx:ctx(), interserver_api_server_order_post_request:interserver_api_server_order_post_request()) -> {ok, interserver_api_add_server_200_response:interserver_api_add_server_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_server(Ctx, InterserverApiServerOrderPostRequest) ->
    add_server(Ctx, InterserverApiServerOrderPostRequest, #{}).

-spec add_server(ctx:ctx(), interserver_api_server_order_post_request:interserver_api_server_order_post_request(), maps:map()) -> {ok, interserver_api_add_server_200_response:interserver_api_add_server_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_server(Ctx, InterserverApiServerOrderPostRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/servers/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiServerOrderPostRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get configurable options for a Rapid Deploy / coupon dedicated server
%% Step 1 of the Rapid Deploy / coupon dedicated server order flow. Returns options + pricing for either a marketplace asset (`a=<asset_id>`) or a coupon (`c=<coupon_name>`) so the order form can be rendered before `placeBuyNowServer`. Read-only; no charge. Sibling ops: `placeBuyNowServer` (commit), `getMPServers` (browse marketplace), `addServer` (custom build flow).  **Query (one required):** - `a` (integer) — asset_id from `getMPServers`. - `c` (string) — `server_coupons.name`.  **Returns:** `{ bandwidth[], ips[], os[], cp[], raid[], regions[], a?: {asset + items}, c?: {coupon + region} }`. Each option row is `{ id, short_desc, long_desc, monthly_price }` — feed those ids into `placeBuyNowServer`.  **Auth:** Session/API key.  **Errors:** - `400` — `'No Server Coupon or Market-Place Asset Specified'` when neither `a` nor `c` is passed. - `400` — `'Invalid Asset ID'` / `'No Server Coupon with that name'`. - `409` — `'Server already sold!'` (asset already in-cart) or `'Server Out of stock'` (coupon). - `401` — unauthenticated.  **Related calls:** - **Next:** `placeBuyNowServer` (commit the order). - **Browse:** `getMPServers`. - **Custom build alternative:** `addServer`. 
-spec buy_it_now_server_order(ctx:ctx()) -> {ok, interserver_api_buy_it_now_server_order_200_response:interserver_api_buy_it_now_server_order_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
buy_it_now_server_order(Ctx) ->
    buy_it_now_server_order(Ctx, #{}).

-spec buy_it_now_server_order(ctx:ctx(), maps:map()) -> {ok, interserver_api_buy_it_now_server_order_200_response:interserver_api_buy_it_now_server_order_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
buy_it_now_server_order(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers/order/buy_now_server"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
%% Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`. Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired. Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).
-spec get_mp_servers(ctx:ctx()) -> {ok, interserver_api_buy_it_now_list:interserver_api_buy_it_now_list(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mp_servers(Ctx) ->
    get_mp_servers(Ctx, #{}).

-spec get_mp_servers(ctx:ctx(), maps:map()) -> {ok, interserver_api_buy_it_now_list:interserver_api_buy_it_now_list(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mp_servers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/buy_now_servers_list"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get custom dedicated server ordering options, regions, and pricing
%% Use before placing a fully custom (non-Rapid-Deploy) dedicated server order to discover available CPUs, drives, memory tiers, OS images, control panels, RAID levels, bandwidth packages, IP blocks, and regions with monthly prices. No params, no body. Returns: object with `config_li` keyed by category (`cpu_li`, `hd_li`, `memory_li`, `bandwidth_li`, `ips_li`, `os_li`, `cp_li`, `raid_li`) plus `regions`. Use returned IDs as POST values for `addServer`. Note `hd_li` and `memory_li` are nested by `cpu` id — the chosen CPU constrains valid drive/memory options. Errors: 401 if not authenticated. Sibling ops: `addServer` (commits the order), `buyItNowServerOrder` (pre-built marketplace alternative), `getMPServers` (browse marketplace).
-spec get_new_server(ctx:ctx()) -> {ok, interserver_api_server_order:interserver_api_server_order(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_server(Ctx) ->
    get_new_server(Ctx, #{}).

-spec get_new_server(ctx:ctx(), maps:map()) -> {ok, interserver_api_server_order:interserver_api_server_order(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_server(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers/order"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get full hardware, network, and lifecycle details for a dedicated server
%% Use to fetch complete configuration for one dedicated server — hardware, network/VLAN/IP layout, asset assignments, location, status, billing references, and client action links. Path param: `id` (integer server_id, from `getServerList`). No body. Returns: `ViewServer::getDetails()` shape: `serviceInfo`, `networkInfo` (vlans + assets, with `ipmi_admin_username`/`ipmi_admin_password` and admin lease creds REDACTED for client safety), normalized `client_links`, `serviceType`. `admin_links`/raw `settings`/`csrf` stripped. Errors: 404 not owned; 401 unauth. Sibling ops: `getServerInvoices`, `serverIpmiLiveGet`, `serverIpmiPowerGet` (single — prefer `serverBulkIpmiPowerGet` for many), `getServerReverseDns`, `getServersWelcomeEmail`, `serversCancel`.
-spec get_server_info(ctx:ctx(), integer()) -> {ok, interserver_api_server:interserver_api_server(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_server_info(Ctx, Id) ->
    get_server_info(Ctx, Id, #{}).

-spec get_server_info(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_server:interserver_api_server(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_server_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List billing invoices (charges + payments) tied to one dedicated server
%% Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: `id` (integer server_id from `getServerList`). No body. Inherits from `MyAdmin\\Api\\Billing\\InvoicesList` with module=servers. Returns: `ChargeInvoiceRows` array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if `id` not owned by the caller; 401 unauth. Sibling ops: `getServerInfo` (current service state), `serversCancel` (cancel), `getBillingInvoice` (single invoice by invoice id), `getVpsInvoices`/`getDomainInvoices` for other modules, `getServersWelcomeEmail` to resend setup info.
-spec get_server_invoices(ctx:ctx(), integer()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_server_invoices(Ctx, Id) ->
    get_server_invoices(Ctx, Id, #{}).

-spec get_server_invoices(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_server_invoices(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers/", Id, "/invoices"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all dedicated servers owned by the authenticated customer
%% Use to enumerate physical bare-metal dedicated servers on the calling account. No params, no body. Filters `servers` by session `account_id`. Returns: array of `{ server_id, account_lid, server_hostname, server_status }`. Use `server_id` with `getServerInfo` for full hardware/network/IPMI details, `getServerInvoices` for billing, or `serverIpmiPowerGet` for chassis power state. Errors: 401 if not authenticated; empty array if account owns no servers. Sibling ops: `getServerInfo` (details), `getVpsList` (virtual instead of physical hardware), `getMPServers` (purchasable inventory, not owned). For IPMI status across many servers in one call, prefer `serverBulkIpmiPowerGet`.
-spec get_server_list(ctx:ctx()) -> {ok, [interserver_api_server_row:interserver_api_server_row()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_server_list(Ctx) ->
    get_server_list(Ctx, #{}).

-spec get_server_list(ctx:ctx(), maps:map()) -> {ok, [interserver_api_server_row:interserver_api_server_row()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_server_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List current reverse-DNS (PTR) records for a dedicated server's IPs
%% Use to read the existing PTR/rDNS hostnames assigned to each public IP in the server's VLANs — typically before calling `postServerReverseDns` to update them. Path param: `id` (integer server_id). No body. Walks `networkInfo.vlans`, expands each network to usable host IPs (handles /31 and /32 edge cases), and resolves each via `get_hostname()`. Returns: `{ ips: { '<ipv4>': '<ptr_or_empty_string>', ... } }`. Empty string indicates no PTR set. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: `postServerReverseDns` (update PTRs), `getServerInfo` (full network), `getVpsReverseDns` for VPS, `getDomainNameservers` / DNS endpoints for forward records. Note rDNS propagation is delegated to the in-addr.arpa zone — changes are not always instant.
-spec get_server_reverse_dns(ctx:ctx(), integer()) -> {ok, interserver_api_reverse_dns_entries:interserver_api_reverse_dns_entries(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_server_reverse_dns(Ctx, Id) ->
    get_server_reverse_dns(Ctx, Id, #{}).

-spec get_server_reverse_dns(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_reverse_dns_entries:interserver_api_reverse_dns_entries(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_server_reverse_dns(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers/", Id, "/reverse_dns"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Resend the dedicated server welcome email with setup credentials
%% Use when the customer asks for the original setup/login info to be re-sent (root password, IPs, control-panel URL). Path param: `id` (integer server_id, must be `active`). No body. Invokes `server_welcome_email($id)` which re-sends the welcome message to the account's email. Returns: `{ text:'Welcome Email has been resent.' }`. Errors: 404 if `id` not owned by caller; 409 if service not active (cancelled/pending/suspended); 401 unauth. Caveat: re-sending is rate-sensitive; do not call repeatedly in a loop. The email may contain root credentials — confirm intent before triggering. Sibling ops: `getServerInfo` (status check), `getServerInvoices`, `getVpsWelcomeEmail` for VPS, `getDomainsWelcomeEmail` for domains.
-spec get_servers_welcome_email(ctx:ctx(), integer()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_servers_welcome_email(Ctx, Id) ->
    get_servers_welcome_email(Ctx, Id, #{}).

-spec get_servers_welcome_email(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_servers_welcome_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers/", Id, "/welcome_email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Place a Rapid Deploy / coupon dedicated server order; creates real invoice
%% Step 2 of the Rapid Deploy / coupon order flow. Commits a marketplace asset OR coupon-based dedicated server order. Inserts the `servers` row, creates a `Repeat_Invoice` plus the first `invoices` row, marks the asset `MarketPlace-Incart` (or decrements `server_coupons.in_stock`), then emails customer + admin. **Real billable order — confirm intent first.** Sibling ops: `buyItNowServerOrder` (catalog), `getServerInfo` (poll provisioning), `getServerInvoices` (billing), `addServer` (custom build alternative).  **Query (one required, same as `buyItNowServerOrder`):** - `a` (integer) — asset_id. - `c` (string) — `server_coupons.name`.  **Body fields:** - `hostname` (string, required) — valid FQDN; validated by `valid_hostname`. - `enablepassword` (boolean, optional, default `false`) — when true the client must supply `rootPassword`; otherwise a secure password is generated server-side via `generate_password()`. - `rootPassword` (string, required when `enablepassword=true`) — must be ≥8 chars with at least one uppercase, lowercase, digit, and special character (`valid_password`). - `os`, `bandwidth`, `ips`, `cp`, `raid` (integer, optional) — option ids from `buyItNowServerOrder`; defaults `30` / `10` / `9` / `1` / `0` applied when missing. - `comments` (string, optional) — appended to the order comment.  **Returns:** `201 { success: true, text: 'Server order is placed.', service_id, invoice_id }`.  **Auth:** Session/API key.  **Errors:** - `400` — `'Server Hostname is missing.'` / `'Invalid Hostname!'` / `'Server Password is missing.'` / password complexity message. - `409` — `'Server already sold!'` / `'Server Out of stock.'` - `401` — unauthenticated.  **Side effects:** inserts `servers` row, creates `repeat_invoices` + `invoices` rows, updates `assets.status` or `server_coupons.in_stock`, queues admin + customer welcome emails.  **Related calls:** - **Prerequisite:** `buyItNowServerOrder`. - **Next:** `getBillingInvoice` + `initiatePayment` to pay, then poll `getServerInfo` for provisioning state. - **Custom build alternative:** `addServer`. 
-spec place_buy_now_server(ctx:ctx()) -> {ok, interserver_api_servers_buy_now_response:interserver_api_servers_buy_now_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
place_buy_now_server(Ctx) ->
    place_buy_now_server(Ctx, #{}).

-spec place_buy_now_server(ctx:ctx(), maps:map()) -> {ok, interserver_api_servers_buy_now_response:interserver_api_servers_buy_now_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
place_buy_now_server(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/servers/order/buy_now_server"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiPlaceBuyNowServerRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update reverse-DNS (PTR) hostnames on a dedicated server's IPs
%% Use to set or remove PTR records for the server's public IPs. Path param: `id` (server_id). Body: `ips` (object mapping `'<ipv4>'` to desired hostname; empty string removes the PTR). Only IPs that already exist on the server's VLANs and whose hostname differs from current are updated; each diff calls `reverse_dns($ip, $host, 'set_reverse'|'remove_reverse')`. Returns: `{ message, success:bool }`. `success:false` with 'No valid IPs were passed or there were no changes' when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream. Sibling ops: `getServerReverseDns` (read first), `getServerInfo`, VPS counterpart `postVpsReverseDns`.
-spec post_server_reverse_dns(ctx:ctx(), integer(), interserver_api_reverse_dns_entries:interserver_api_reverse_dns_entries()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_server_reverse_dns(Ctx, Id, InterserverApiReverseDnsEntries) ->
    post_server_reverse_dns(Ctx, Id, InterserverApiReverseDnsEntries, #{}).

-spec post_server_reverse_dns(ctx:ctx(), integer(), interserver_api_reverse_dns_entries:interserver_api_reverse_dns_entries(), maps:map()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_server_reverse_dns(Ctx, Id, InterserverApiReverseDnsEntries, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/servers/", Id, "/reverse_dns"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiReverseDnsEntries,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Read IPMI chassis power status for many dedicated servers in one call
%% Use when you need power status for several owned servers at once (dashboards, mass health checks). Each server is queried independently; per-server failures (invalid id, inactive service, no asset, BMC error) are reported in the same response without aborting the batch. Read-only — does NOT change power state. Query: `ids` (required) — comma-separated string `?ids=2313,2314,2315` OR repeated `ids[]` array. Duplicates de-duped; non-positive ints become per-row errors. Returns: `{ results: [ { id, asset?, text|error } ] }`. Errors: 400 'No server IDs provided.' if `ids` empty/missing; 401 unauth. Sibling ops: `serverIpmiPowerGet` (single-server equivalent), `serverIpmiPowerPost` (DESTRUCTIVE — change power; no bulk equivalent — call per server), `getServerList` (discover ids).
-spec server_bulk_ipmi_power_get(ctx:ctx(), binary()) -> {ok, interserver_api_server_bulk_ipmi_power_response:interserver_api_server_bulk_ipmi_power_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_bulk_ipmi_power_get(Ctx, Ids) ->
    server_bulk_ipmi_power_get(Ctx, Ids, #{}).

-spec server_bulk_ipmi_power_get(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_server_bulk_ipmi_power_response:interserver_api_server_bulk_ipmi_power_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_bulk_ipmi_power_get(Ctx, Ids, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers/bulk/ipmi_power"],
    QS = lists:flatten([{<<"ids">>, Ids}])++interserver_api_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
%% Reads the active IPMI Live session for a dedicated server — the temporary whitelisted public IP, the customer-side IPMI gateway URL, and the IPMI client (read-only) credentials so the customer can open the KVM/console. Looks up the asset's IPMI IP, the location's IPMI group, and any active `ipmi_ips` lease (3-hour TTL). Sibling ops: `serverIpmiLivePost` (allocate whitelist slot), `serverIpmiPowerGet` / `serverIpmiPowerPost` (chassis power).  **Path:** `id` (integer, required) — server_id from `getServerList`.  **Body / query:** None. Optionally pass `asset` (asset_id) to target a specific asset; default is first asset.  **Returns:** when an active lease exists `{ text (html), public_ip, allowed_ip, client_username, client_password }`. When no lease yet: `{ text: 'Setup not yet completed' }` — then call `serverIpmiLivePost` to allocate a slot.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'` when the asset/location is not configured for IPMI Live.  **Caveat:** returns `client_password` — never log/echo verbatim.  **Related calls:** - **Allocate:** `serverIpmiLivePost`. - **Chassis power:** `serverIpmiPowerGet`, `serverIpmiPowerPost`. 
-spec server_ipmi_live_get(ctx:ctx(), integer()) -> {ok, interserver_api_server_ipmi_live_info:interserver_api_server_ipmi_live_info(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_ipmi_live_get(Ctx, Id) ->
    server_ipmi_live_get(Ctx, Id, #{}).

-spec server_ipmi_live_get(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_server_ipmi_live_info:interserver_api_server_ipmi_live_info(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_ipmi_live_get(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers/", Id, "/ipmi_live"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
%% Allocates / refreshes an IPMI Live whitelist slot so the customer's specified IP can reach the BMC's KVM/console for 3 hours. Picks a free `ipmi_ips` row for the location's `ipmi_group`, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via `ipmi_live_setup()`. Sibling ops: `serverIpmiLiveGet` (read current lease), `serverIpmiPowerPost` (DESTRUCTIVE — chassis power).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `ip` (string, required) — public IPv4 to whitelist. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text (html), public_ip, allowed_ip, client_username, client_password }` for KVM login.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'An Invalid IP was passed.'`, `'No Live IPs are currently free for use with the IPMI Gateway. Please wait <duration> for the next IP to free up.'`, `'There was an error communicating with the IPMI Management server'`, `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'`.  **Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.  **Related calls:** - **Read current lease:** `serverIpmiLiveGet`. - **Power control:** `serverIpmiPowerPost`. 
-spec server_ipmi_live_post(ctx:ctx(), integer(), binary()) -> {ok, interserver_api_server_ipmi_live_info:interserver_api_server_ipmi_live_info(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_ipmi_live_post(Ctx, Id, Ip) ->
    server_ipmi_live_post(Ctx, Id, Ip, #{}).

-spec server_ipmi_live_post(ctx:ctx(), integer(), binary(), maps:map()) -> {ok, interserver_api_server_ipmi_live_info:interserver_api_server_ipmi_live_info(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_ipmi_live_post(Ctx, Id, Ip, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/servers/", Id, "/ipmi_live"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"ip">>, Ip}]++interserver_api_utils:optional_params(['asset'], _OptionalParams)},
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"multipart/form-data">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Read IPMI chassis power status for a dedicated server (single)
%% Use to check whether a server's chassis is currently `on`/`off` via IPMI before issuing a power action. Path param: `id` (integer server_id). Optional body `asset` (asset_id — defaults to first asset). Issues `ipmitool power status` against the asset's `ipmi_ip` using its location IPMI group/credentials. Returns: `{ text:'Chassis Power is on' }` (or 'off'). Errors: 404 if `id` not owned by caller; 409 if service not active; 'There was an error sending the IPMI command' if BMC unreachable. Caveat: BMCs occasionally rate-limit — back off on repeated errors. Sibling ops: `serverBulkIpmiPowerGet` (preferred when polling many servers — single round-trip), `serverIpmiPowerPost` (DESTRUCTIVE — change power), `getServerInfo` (full state), `serverIpmiLiveGet` (IPMI Live KVM).
-spec server_ipmi_power_get(ctx:ctx(), integer()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_ipmi_power_get(Ctx, Id) ->
    server_ipmi_power_get(Ctx, Id, #{}).

-spec server_ipmi_power_get(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_ipmi_power_get(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/servers/", Id, "/ipmi_power"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc DESTRUCTIVE — change chassis power state on a bare-metal server
%% Sends an IPMI chassis power command (`on`, `off`, `cycle`, `reset`, `soft`) to a customer's physical dedicated server. **DESTRUCTIVE on running hardware:** `off` / `cycle` / `reset` are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. `soft` requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: `serverIpmiPowerGet` (read first), `serverBulkIpmiPowerGet` (status only), `serverIpmiLivePost` (KVM access).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `action` (string, required) — one of `on` / `off` / `cycle` / `reset` / `soft`. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text: 'Power command sent. Response: <ipmi output>' }`.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `422` / inline error text — `Invalid Action` when `action` is not in the allowed set. - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'There was an error sending the IPMI command.'` when BMC is unreachable or rate-limiting.  **Related calls:** - **Status (single / bulk):** `serverIpmiPowerGet`, `serverBulkIpmiPowerGet`. - **KVM console:** `serverIpmiLivePost`. 
-spec server_ipmi_power_post(ctx:ctx(), integer(), binary()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_ipmi_power_post(Ctx, Id, Action) ->
    server_ipmi_power_post(Ctx, Id, Action, #{}).

-spec server_ipmi_power_post(ctx:ctx(), integer(), binary(), maps:map()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
server_ipmi_power_post(Ctx, Id, Action, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/servers/", Id, "/ipmi_power"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"action">>, Action}]++interserver_api_utils:optional_params(['asset'], _OptionalParams)},
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"multipart/form-data">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel a dedicated server service at the end of the current billing cycle
%% Submits a cancellation request for a dedicated server. The server is deprovisioned and recurring billing stops at the end of the current billing cycle (not an immediate refund). Path param: `id` (integer server_id, from `getServerList`). No body. Caveat: billing-affecting action — always confirm with the user. Hardware-attached data may be wiped on deprovisioning. Returns: `{ success:bool, text:'Servers is canceled.' }`. Errors: 404 if `id` not owned by caller; 409 if already cancelled or non-active; 401 unauth. Sibling ops: `getServerInfo` (current status), `getServerInvoices` (outstanding charges), VPS counterpart `VPSCancel`. To re-order after cancel use `addServer` or `placeBuyNowServer`.
-spec servers_cancel(ctx:ctx(), integer()) -> {ok, interserver_api_servers_cancel_200_response:interserver_api_servers_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
servers_cancel(Ctx, Id) ->
    servers_cancel(Ctx, Id, #{}).

-spec servers_cancel(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_servers_cancel_200_response:interserver_api_servers_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
servers_cancel(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/servers/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update settings on a dedicated server order (shares handler with view)
%% Use to modify metadata on an existing dedicated server order. Path param: `id` (integer server_id). Currently this method shares the same handler as `getServerInfo` (`View::go()`) — no dedicated update fields are processed; treat it as deprecated/no-op pending field-specific endpoints. For hostname, password, or rDNS changes use the dedicated ops below. Returns: same payload shape as `getServerInfo`. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: prefer `postServerReverseDns` (rDNS), `serverIpmiPowerPost` (power), `serverIpmiLivePost` (IPMI access), `serversCancel` (cancel). For new orders use `addServer` or `placeBuyNowServer`. View-only: `getServerInfo`.
-spec update_server_info(ctx:ctx(), binary()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_server_info(Ctx, Id) ->
    update_server_info(Ctx, Id, #{}).

-spec update_server_info(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_server_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/servers/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).



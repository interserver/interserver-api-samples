# ServersApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_server**](ServersApi.md#add_server) | **POST** /servers/order | Place a custom dedicated server order, creating a real billable invoice
[**buy_it_now_server_order**](ServersApi.md#buy_it_now_server_order) | **GET** /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server
[**get_m_p_servers**](ServersApi.md#get_m_p_servers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
[**get_new_server**](ServersApi.md#get_new_server) | **GET** /servers/order | Get custom dedicated server ordering options, regions, and pricing
[**get_server_info**](ServersApi.md#get_server_info) | **GET** /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server
[**get_server_invoices**](ServersApi.md#get_server_invoices) | **GET** /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server
[**get_server_list**](ServersApi.md#get_server_list) | **GET** /servers | List all dedicated servers owned by the authenticated customer
[**get_server_reverse_dns**](ServersApi.md#get_server_reverse_dns) | **GET** /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server&#39;s IPs
[**get_servers_welcome_email**](ServersApi.md#get_servers_welcome_email) | **GET** /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials
[**place_buy_now_server**](ServersApi.md#place_buy_now_server) | **POST** /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice
[**post_server_reverse_dns**](ServersApi.md#post_server_reverse_dns) | **POST** /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server&#39;s IPs
[**server_bulk_ipmi_power_get**](ServersApi.md#server_bulk_ipmi_power_get) | **GET** /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call
[**server_ipmi_live_get**](ServersApi.md#server_ipmi_live_get) | **GET** /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
[**server_ipmi_live_post**](ServersApi.md#server_ipmi_live_post) | **POST** /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
[**server_ipmi_power_get**](ServersApi.md#server_ipmi_power_get) | **GET** /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single)
[**server_ipmi_power_post**](ServersApi.md#server_ipmi_power_post) | **POST** /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server
[**servers_cancel**](ServersApi.md#servers_cancel) | **DELETE** /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle
[**update_server_info**](ServersApi.md#update_server_info) | **POST** /servers/{id} | Update settings on a dedicated server order (shares handler with view)


# **add_server**
> `add_server`(_api::`ServersApi`, `server_order_post_request`::`ServerOrderPostRequest`; _mediaType=nothing) -> `AddServer200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `add_server`(_api::`ServersApi`, response_stream::`Channel`, `server_order_post_request`::`ServerOrderPostRequest`; _mediaType=nothing) -> `Channel`{ `AddServer200Response` }, `OpenAPI.Clients.ApiResponse`

Place a custom dedicated server order, creating a real billable invoice

Submits a fully custom dedicated server order. Creates a `pending` `servers` row, a `Repeat_Invoice`, and the first invoice, then emails customer + admin. Caveat: real billable order — confirm with the user first. Body (form fields): `cpu` (id from `cpu_li`), `hd[]` (array of drive ids), `memory`, `bandwidth`, `ips`, `os`, `cp`, `raid` (ids from `getNewServer`), `region` (region_id), `servername` (valid hostname), `rootpass`, `tos` (must be true), optional `comment`. `account.server_order_discount` (if set) applies. Returns: `{ text:'Order Completed', invoice, order }`. Errors: 422 'Missing/Invalid <field>'; 401 unauth. Sibling ops: `getNewServer` (options), `placeBuyNowServer` (pre-built path), `getServerInfo` (view new order), `getServerInvoices`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`server_order_post_request`** | [**`ServerOrderPostRequest`**](ServerOrderPostRequest.md) |  |

### Return type

[**`AddServer200Response`**](AddServer200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **buy_it_now_server_order**
> `buy_it_now_server_order`(_api::`ServersApi`; _mediaType=nothing) -> `BuyItNowServerOrder200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `buy_it_now_server_order`(_api::`ServersApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `BuyItNowServerOrder200Response` }, `OpenAPI.Clients.ApiResponse`

Get configurable options for a Rapid Deploy / coupon dedicated server

Step 1 of the Rapid Deploy / coupon dedicated server order flow. Returns options + pricing for either a marketplace asset (`a=<asset_id>`) or a coupon (`c=<coupon_name>`) so the order form can be rendered before `placeBuyNowServer`. Read-only; no charge. Sibling ops: `placeBuyNowServer` (commit), `getMPServers` (browse marketplace), `addServer` (custom build flow).  **Query (one required):** - `a` (integer) — asset_id from `getMPServers`. - `c` (string) — `server_coupons.name`.  **Returns:** `{ bandwidth[], ips[], os[], cp[], raid[], regions[], a?: {asset + items}, c?: {coupon + region} }`. Each option row is `{ id, short_desc, long_desc, monthly_price }` — feed those ids into `placeBuyNowServer`.  **Auth:** Session/API key.  **Errors:** - `400` — `'No Server Coupon or Market-Place Asset Specified'` when neither `a` nor `c` is passed. - `400` — `'Invalid Asset ID'` / `'No Server Coupon with that name'`. - `409` — `'Server already sold!'` (asset already in-cart) or `'Server Out of stock'` (coupon). - `401` — unauthenticated.  **Related calls:** - **Next:** `placeBuyNowServer` (commit the order). - **Browse:** `getMPServers`. - **Custom build alternative:** `addServer`. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`BuyItNowServerOrder200Response`**](BuyItNowServerOrder200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_m_p_servers**
> `get_m_p_servers`(_api::`ServersApi`; _mediaType=nothing) -> `BuyItNowList`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_m_p_servers`(_api::`ServersApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `BuyItNowList` }, `OpenAPI.Clients.ApiResponse`

List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing

Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`. Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired. Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`BuyItNowList`**](BuyItNowList.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_new_server**
> `get_new_server`(_api::`ServersApi`; _mediaType=nothing) -> `ServerOrder`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_new_server`(_api::`ServersApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `ServerOrder` }, `OpenAPI.Clients.ApiResponse`

Get custom dedicated server ordering options, regions, and pricing

Use before placing a fully custom (non-Rapid-Deploy) dedicated server order to discover available CPUs, drives, memory tiers, OS images, control panels, RAID levels, bandwidth packages, IP blocks, and regions with monthly prices. No params, no body. Returns: object with `config_li` keyed by category (`cpu_li`, `hd_li`, `memory_li`, `bandwidth_li`, `ips_li`, `os_li`, `cp_li`, `raid_li`) plus `regions`. Use returned IDs as POST values for `addServer`. Note `hd_li` and `memory_li` are nested by `cpu` id — the chosen CPU constrains valid drive/memory options. Errors: 401 if not authenticated. Sibling ops: `addServer` (commits the order), `buyItNowServerOrder` (pre-built marketplace alternative), `getMPServers` (browse marketplace).

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`ServerOrder`**](ServerOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_server_info**
> `get_server_info`(_api::`ServersApi`, `id`::`Int64`; _mediaType=nothing) -> `Server`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_server_info`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `Server` }, `OpenAPI.Clients.ApiResponse`

Get full hardware, network, and lifecycle details for a dedicated server

Use to fetch complete configuration for one dedicated server — hardware, network/VLAN/IP layout, asset assignments, location, status, billing references, and client action links. Path param: `id` (integer server_id, from `getServerList`). No body. Returns: `ViewServer::getDetails()` shape: `serviceInfo`, `networkInfo` (vlans + assets, with `ipmi_admin_username`/`ipmi_admin_password` and admin lease creds REDACTED for client safety), normalized `client_links`, `serviceType`. `admin_links`/raw `settings`/`csrf` stripped. Errors: 404 not owned; 401 unauth. Sibling ops: `getServerInvoices`, `serverIpmiLiveGet`, `serverIpmiPowerGet` (single — prefer `serverBulkIpmiPowerGet` for many), `getServerReverseDns`, `getServersWelcomeEmail`, `serversCancel`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number. |

### Return type

[**`Server`**](Server.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_server_invoices**
> `get_server_invoices`(_api::`ServersApi`, `id`::`Int64`; _mediaType=nothing) -> `ChargeInvoiceRows`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_server_invoices`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `ChargeInvoiceRows` }, `OpenAPI.Clients.ApiResponse`

List billing invoices (charges + payments) tied to one dedicated server

Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: `id` (integer server_id from `getServerList`). No body. Inherits from `MyAdmin\\Api\\Billing\\InvoicesList` with module=servers. Returns: `ChargeInvoiceRows` array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if `id` not owned by the caller; 401 unauth. Sibling ops: `getServerInfo` (current service state), `serversCancel` (cancel), `getBillingInvoice` (single invoice by invoice id), `getVpsInvoices`/`getDomainInvoices` for other modules, `getServersWelcomeEmail` to resend setup info.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number |

### Return type

[**`ChargeInvoiceRows`**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_server_list**
> `get_server_list`(_api::`ServersApi`; _mediaType=nothing) -> `Vector{ServerRow}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_server_list`(_api::`ServersApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Vector{ServerRow}` }, `OpenAPI.Clients.ApiResponse`

List all dedicated servers owned by the authenticated customer

Use to enumerate physical bare-metal dedicated servers on the calling account. No params, no body. Filters `servers` by session `account_id`. Returns: array of `{ server_id, account_lid, server_hostname, server_status }`. Use `server_id` with `getServerInfo` for full hardware/network/IPMI details, `getServerInvoices` for billing, or `serverIpmiPowerGet` for chassis power state. Errors: 401 if not authenticated; empty array if account owns no servers. Sibling ops: `getServerInfo` (details), `getVpsList` (virtual instead of physical hardware), `getMPServers` (purchasable inventory, not owned). For IPMI status across many servers in one call, prefer `serverBulkIpmiPowerGet`.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`Vector{ServerRow}`**](ServerRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_server_reverse_dns**
> `get_server_reverse_dns`(_api::`ServersApi`, `id`::`Int64`; _mediaType=nothing) -> `ReverseDnsEntries`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_server_reverse_dns`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `ReverseDnsEntries` }, `OpenAPI.Clients.ApiResponse`

List current reverse-DNS (PTR) records for a dedicated server's IPs

Use to read the existing PTR/rDNS hostnames assigned to each public IP in the server's VLANs — typically before calling `postServerReverseDns` to update them. Path param: `id` (integer server_id). No body. Walks `networkInfo.vlans`, expands each network to usable host IPs (handles /31 and /32 edge cases), and resolves each via `get_hostname()`. Returns: `{ ips: { '<ipv4>': '<ptr_or_empty_string>', ... } }`. Empty string indicates no PTR set. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: `postServerReverseDns` (update PTRs), `getServerInfo` (full network), `getVpsReverseDns` for VPS, `getDomainNameservers` / DNS endpoints for forward records. Note rDNS propagation is delegated to the in-addr.arpa zone — changes are not always instant.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number |

### Return type

[**`ReverseDnsEntries`**](ReverseDnsEntries.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_servers_welcome_email**
> `get_servers_welcome_email`(_api::`ServersApi`, `id`::`Int64`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_servers_welcome_email`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Resend the dedicated server welcome email with setup credentials

Use when the customer asks for the original setup/login info to be re-sent (root password, IPs, control-panel URL). Path param: `id` (integer server_id, must be `active`). No body. Invokes `server_welcome_email($id)` which re-sends the welcome message to the account's email. Returns: `{ text:'Welcome Email has been resent.' }`. Errors: 404 if `id` not owned by caller; 409 if service not active (cancelled/pending/suspended); 401 unauth. Caveat: re-sending is rate-sensitive; do not call repeatedly in a loop. The email may contain root credentials — confirm intent before triggering. Sibling ops: `getServerInfo` (status check), `getServerInvoices`, `getVpsWelcomeEmail` for VPS, `getDomainsWelcomeEmail` for domains.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **place_buy_now_server**
> `place_buy_now_server`(_api::`ServersApi`; `place_buy_now_server_request`=nothing, _mediaType=nothing) -> `ServersBuyNowResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `place_buy_now_server`(_api::`ServersApi`, response_stream::`Channel`; `place_buy_now_server_request`=nothing, _mediaType=nothing) -> `Channel`{ `ServersBuyNowResponse` }, `OpenAPI.Clients.ApiResponse`

Place a Rapid Deploy / coupon dedicated server order; creates real invoice

Step 2 of the Rapid Deploy / coupon order flow. Commits a marketplace asset OR coupon-based dedicated server order. Inserts the `servers` row, creates a `Repeat_Invoice` plus the first `invoices` row, marks the asset `MarketPlace-Incart` (or decrements `server_coupons.in_stock`), then emails customer + admin. **Real billable order — confirm intent first.** Sibling ops: `buyItNowServerOrder` (catalog), `getServerInfo` (poll provisioning), `getServerInvoices` (billing), `addServer` (custom build alternative).  **Query (one required, same as `buyItNowServerOrder`):** - `a` (integer) — asset_id. - `c` (string) — `server_coupons.name`.  **Body fields:** - `hostname` (string, required) — valid FQDN; validated by `valid_hostname`. - `enablepassword` (boolean, optional, default `false`) — when true the client must supply `rootPassword`; otherwise a secure password is generated server-side via `generate_password()`. - `rootPassword` (string, required when `enablepassword=true`) — must be ≥8 chars with at least one uppercase, lowercase, digit, and special character (`valid_password`). - `os`, `bandwidth`, `ips`, `cp`, `raid` (integer, optional) — option ids from `buyItNowServerOrder`; defaults `30` / `10` / `9` / `1` / `0` applied when missing. - `comments` (string, optional) — appended to the order comment.  **Returns:** `201 { success: true, text: 'Server order is placed.', service_id, invoice_id }`.  **Auth:** Session/API key.  **Errors:** - `400` — `'Server Hostname is missing.'` / `'Invalid Hostname!'` / `'Server Password is missing.'` / password complexity message. - `409` — `'Server already sold!'` / `'Server Out of stock.'` - `401` — unauthenticated.  **Side effects:** inserts `servers` row, creates `repeat_invoices` + `invoices` rows, updates `assets.status` or `server_coupons.in_stock`, queues admin + customer welcome emails.  **Related calls:** - **Prerequisite:** `buyItNowServerOrder`. - **Next:** `getBillingInvoice` + `initiatePayment` to pay, then poll `getServerInfo` for provisioning state. - **Custom build alternative:** `addServer`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`place_buy_now_server_request`** | [**`PlaceBuyNowServerRequest`**](PlaceBuyNowServerRequest.md) |  | 

### Return type

[**`ServersBuyNowResponse`**](ServersBuyNowResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_server_reverse_dns**
> `post_server_reverse_dns`(_api::`ServersApi`, `id`::`Int64`, `reverse_dns_entries`::`ReverseDnsEntries`; _mediaType=nothing) -> `TextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_server_reverse_dns`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`, `reverse_dns_entries`::`ReverseDnsEntries`; _mediaType=nothing) -> `Channel`{ `TextResponse` }, `OpenAPI.Clients.ApiResponse`

Update reverse-DNS (PTR) hostnames on a dedicated server's IPs

Use to set or remove PTR records for the server's public IPs. Path param: `id` (server_id). Body: `ips` (object mapping `'<ipv4>'` to desired hostname; empty string removes the PTR). Only IPs that already exist on the server's VLANs and whose hostname differs from current are updated; each diff calls `reverse_dns($ip, $host, 'set_reverse'|'remove_reverse')`. Returns: `{ message, success:bool }`. `success:false` with 'No valid IPs were passed or there were no changes' when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream. Sibling ops: `getServerReverseDns` (read first), `getServerInfo`, VPS counterpart `postVpsReverseDns`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number |
**`reverse_dns_entries`** | [**`ReverseDnsEntries`**](ReverseDnsEntries.md) |  |

### Return type

[**`TextResponse`**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **server_bulk_ipmi_power_get**
> `server_bulk_ipmi_power_get`(_api::`ServersApi`, `ids`::`String`; _mediaType=nothing) -> `ServerBulkIpmiPowerResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `server_bulk_ipmi_power_get`(_api::`ServersApi`, response_stream::`Channel`, `ids`::`String`; _mediaType=nothing) -> `Channel`{ `ServerBulkIpmiPowerResponse` }, `OpenAPI.Clients.ApiResponse`

Read IPMI chassis power status for many dedicated servers in one call

Use when you need power status for several owned servers at once (dashboards, mass health checks). Each server is queried independently; per-server failures (invalid id, inactive service, no asset, BMC error) are reported in the same response without aborting the batch. Read-only — does NOT change power state. Query: `ids` (required) — comma-separated string `?ids=2313,2314,2315` OR repeated `ids[]` array. Duplicates de-duped; non-positive ints become per-row errors. Returns: `{ results: [ { id, asset?, text|error } ] }`. Errors: 400 'No server IDs provided.' if `ids` empty/missing; 401 unauth. Sibling ops: `serverIpmiPowerGet` (single-server equivalent), `serverIpmiPowerPost` (DESTRUCTIVE — change power; no bulk equivalent — call per server), `getServerList` (discover ids).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`ids`** | **`String`** | Comma-separated list of Server IDs to query (e.g. &#x60;2313,2314,2315&#x60;). May also be passed as repeated &#x60;ids[]&#x60; query parameters. |

### Return type

[**`ServerBulkIpmiPowerResponse`**](ServerBulkIpmiPowerResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **server_ipmi_live_get**
> `server_ipmi_live_get`(_api::`ServersApi`, `id`::`Int64`; _mediaType=nothing) -> `ServerIpmiLiveInfo`, `OpenAPI.Clients.ApiResponse` <br/>
> `server_ipmi_live_get`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `ServerIpmiLiveInfo` }, `OpenAPI.Clients.ApiResponse`

Read current IPMI Live whitelist + KVM gateway URL for a dedicated server

Reads the active IPMI Live session for a dedicated server — the temporary whitelisted public IP, the customer-side IPMI gateway URL, and the IPMI client (read-only) credentials so the customer can open the KVM/console. Looks up the asset's IPMI IP, the location's IPMI group, and any active `ipmi_ips` lease (3-hour TTL). Sibling ops: `serverIpmiLivePost` (allocate whitelist slot), `serverIpmiPowerGet` / `serverIpmiPowerPost` (chassis power).  **Path:** `id` (integer, required) — server_id from `getServerList`.  **Body / query:** None. Optionally pass `asset` (asset_id) to target a specific asset; default is first asset.  **Returns:** when an active lease exists `{ text (html), public_ip, allowed_ip, client_username, client_password }`. When no lease yet: `{ text: 'Setup not yet completed' }` — then call `serverIpmiLivePost` to allocate a slot.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'` when the asset/location is not configured for IPMI Live.  **Caveat:** returns `client_password` — never log/echo verbatim.  **Related calls:** - **Allocate:** `serverIpmiLivePost`. - **Chassis power:** `serverIpmiPowerGet`, `serverIpmiPowerPost`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number |

### Return type

[**`ServerIpmiLiveInfo`**](ServerIpmiLiveInfo.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **server_ipmi_live_post**
> `server_ipmi_live_post`(_api::`ServersApi`, `id`::`Int64`, `ip`::`String`; `asset`=nothing, _mediaType=nothing) -> `ServerIpmiLiveInfo`, `OpenAPI.Clients.ApiResponse` <br/>
> `server_ipmi_live_post`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`, `ip`::`String`; `asset`=nothing, _mediaType=nothing) -> `Channel`{ `ServerIpmiLiveInfo` }, `OpenAPI.Clients.ApiResponse`

Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)

Allocates / refreshes an IPMI Live whitelist slot so the customer's specified IP can reach the BMC's KVM/console for 3 hours. Picks a free `ipmi_ips` row for the location's `ipmi_group`, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via `ipmi_live_setup()`. Sibling ops: `serverIpmiLiveGet` (read current lease), `serverIpmiPowerPost` (DESTRUCTIVE — chassis power).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `ip` (string, required) — public IPv4 to whitelist. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text (html), public_ip, allowed_ip, client_username, client_password }` for KVM login.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'An Invalid IP was passed.'`, `'No Live IPs are currently free for use with the IPMI Gateway. Please wait <duration> for the next IP to free up.'`, `'There was an error communicating with the IPMI Management server'`, `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'`.  **Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.  **Related calls:** - **Read current lease:** `serverIpmiLiveGet`. - **Power control:** `serverIpmiPowerPost`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number |
**`ip`** | **`String`** | Your IP Address you wish to connect to the IPMI system from. |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`asset`** | **`Int64`** | Asset ID | [default to nothing]

### Return type

[**`ServerIpmiLiveInfo`**](ServerIpmiLiveInfo.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **server_ipmi_power_get**
> `server_ipmi_power_get`(_api::`ServersApi`, `id`::`Int64`; _mediaType=nothing) -> `TextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `server_ipmi_power_get`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `TextResponse` }, `OpenAPI.Clients.ApiResponse`

Read IPMI chassis power status for a dedicated server (single)

Use to check whether a server's chassis is currently `on`/`off` via IPMI before issuing a power action. Path param: `id` (integer server_id). Optional body `asset` (asset_id — defaults to first asset). Issues `ipmitool power status` against the asset's `ipmi_ip` using its location IPMI group/credentials. Returns: `{ text:'Chassis Power is on' }` (or 'off'). Errors: 404 if `id` not owned by caller; 409 if service not active; 'There was an error sending the IPMI command' if BMC unreachable. Caveat: BMCs occasionally rate-limit — back off on repeated errors. Sibling ops: `serverBulkIpmiPowerGet` (preferred when polling many servers — single round-trip), `serverIpmiPowerPost` (DESTRUCTIVE — change power), `getServerInfo` (full state), `serverIpmiLiveGet` (IPMI Live KVM).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number |

### Return type

[**`TextResponse`**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **server_ipmi_power_post**
> `server_ipmi_power_post`(_api::`ServersApi`, `id`::`Int64`, `action`::`String`; `asset`=nothing, _mediaType=nothing) -> `TextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `server_ipmi_power_post`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`, `action`::`String`; `asset`=nothing, _mediaType=nothing) -> `Channel`{ `TextResponse` }, `OpenAPI.Clients.ApiResponse`

DESTRUCTIVE — change chassis power state on a bare-metal server

Sends an IPMI chassis power command (`on`, `off`, `cycle`, `reset`, `soft`) to a customer's physical dedicated server. **DESTRUCTIVE on running hardware:** `off` / `cycle` / `reset` are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. `soft` requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: `serverIpmiPowerGet` (read first), `serverBulkIpmiPowerGet` (status only), `serverIpmiLivePost` (KVM access).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `action` (string, required) — one of `on` / `off` / `cycle` / `reset` / `soft`. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text: 'Power command sent. Response: <ipmi output>' }`.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `422` / inline error text — `Invalid Action` when `action` is not in the allowed set. - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'There was an error sending the IPMI command.'` when BMC is unreachable or rate-limiting.  **Related calls:** - **Status (single / bulk):** `serverIpmiPowerGet`, `serverBulkIpmiPowerGet`. - **KVM console:** `serverIpmiLivePost`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number |
**`action`** | **`String`** | The power action to send to the ipmi controller. |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`asset`** | **`Int64`** | The Asset ID | [default to nothing]

### Return type

[**`TextResponse`**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **servers_cancel**
> `servers_cancel`(_api::`ServersApi`, `id`::`Int64`; _mediaType=nothing) -> `ServersCancel200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `servers_cancel`(_api::`ServersApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `ServersCancel200Response` }, `OpenAPI.Clients.ApiResponse`

Cancel a dedicated server service at the end of the current billing cycle

Submits a cancellation request for a dedicated server. The server is deprovisioned and recurring billing stops at the end of the current billing cycle (not an immediate refund). Path param: `id` (integer server_id, from `getServerList`). No body. Caveat: billing-affecting action — always confirm with the user. Hardware-attached data may be wiped on deprovisioning. Returns: `{ success:bool, text:'Servers is canceled.' }`. Errors: 404 if `id` not owned by caller; 409 if already cancelled or non-active; 401 unauth. Sibling ops: `getServerInfo` (current status), `getServerInvoices` (outstanding charges), VPS counterpart `VPSCancel`. To re-order after cancel use `addServer` or `placeBuyNowServer`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`Int64`** | Server ID number |

### Return type

[**`ServersCancel200Response`**](ServersCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_server_info**
> `update_server_info`(_api::`ServersApi`, `id`::`String`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_server_info`(_api::`ServersApi`, response_stream::`Channel`, `id`::`String`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Update settings on a dedicated server order (shares handler with view)

Use to modify metadata on an existing dedicated server order. Path param: `id` (integer server_id). Currently this method shares the same handler as `getServerInfo` (`View::go()`) — no dedicated update fields are processed; treat it as deprecated/no-op pending field-specific endpoints. For hostname, password, or rDNS changes use the dedicated ops below. Returns: same payload shape as `getServerInfo`. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: prefer `postServerReverseDns` (rDNS), `serverIpmiPowerPost` (power), `serverIpmiLivePost` (IPMI access), `serversCancel` (cancel). For new orders use `addServer` or `placeBuyNowServer`. View-only: `getServerInfo`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`ServersApi`** | API context | 
**`id`** | **`String`** | Server ID number. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


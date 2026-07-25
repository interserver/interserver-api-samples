# WebhostingApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_website**](WebhostingApi.md#add_website) | **POST** /websites/order | Place a new webhosting order, create the invoice, and queue provisioning
[**get_new_website**](WebhostingApi.md#get_new_website) | **GET** /websites/order | Read the webhosting order catalog — plans, packages, promo offers, pricing
[**get_website_buy_ip**](WebhostingApi.md#get_website_buy_ip) | **GET** /websites/{id}/buy_ip | Read website IPs, current reverse DNS, and additional-IP pricing
[**get_website_info**](WebhostingApi.md#get_website_info) | **GET** /websites/{id} | Read full configuration and status detail for one webhosting service
[**get_website_invoices**](WebhostingApi.md#get_website_invoices) | **GET** /websites/{id}/invoices | List all billing invoices and recurring charges scoped to one website
[**get_website_list**](WebhostingApi.md#get_website_list) | **GET** /websites | List the caller&#39;s webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
[**get_websites_backups**](WebhostingApi.md#get_websites_backups) | **GET** /websites/{id}/backups | List off-site cpmove backups stored in Swift — list or inline-download archive
[**get_websites_login**](WebhostingApi.md#get_websites_login) | **GET** /websites/{id}/login | Get a one-time auto-login URL for the website&#39;s control panel
[**get_websites_welcome_email**](WebhostingApi.md#get_websites_welcome_email) | **GET** /websites/{id}/welcome_email | Resend the webhosting welcome email with control-panel credentials and URL
[**gett_website_reverse_dns**](WebhostingApi.md#gett_website_reverse_dns) | **GET** /websites/{id}/reverse_dns | Read current reverse-DNS (PTR) records for the website&#39;s IPs
[**post_website_buy_ip**](WebhostingApi.md#post_website_buy_ip) | **POST** /websites/{id}/buy_ip | Buy an additional IP for the website OR update reverse DNS records
[**post_website_migration**](WebhostingApi.md#post_website_migration) | **POST** /websites/{id}/migration | Submit a request for InterServer staff to migrate a website from another host
[**post_websites_reverse_dns**](WebhostingApi.md#post_websites_reverse_dns) | **POST** /websites/{id}/reverse_dns | Bulk-update reverse-DNS (PTR) records for one or more website IPs
[**put_websites**](WebhostingApi.md#put_websites) | **PUT** /websites/order | Validate a webhosting order and preview cost — dry run, no charge
[**update_website_info**](WebhostingApi.md#update_website_info) | **POST** /websites/{id} | POST mutation hook for the website detail page (use dedicated ops where possible)
[**webhosting_cancel**](WebhostingApi.md#webhosting_cancel) | **DELETE** /websites/{id} | Schedule termination of a webhosting service — wipes panel account at cycle end


# **add_website**
> `add_website`(_api::`WebhostingApi`, `website_order_post_request`::`WebsiteOrderPostRequest`; _mediaType=nothing) -> `ServiceOrderPostResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `add_website`(_api::`WebhostingApi`, response_stream::`Channel`, `website_order_post_request`::`WebsiteOrderPostRequest`; _mediaType=nothing) -> `Channel`{ `ServiceOrderPostResponse` }, `OpenAPI.Clients.ApiResponse`

Place a new webhosting order, create the invoice, and queue provisioning

Step 3 of the webhosting order flow — actually places the order. Revalidates via `validate_buy_website()` (same checks as `putWebsites`), then calls `place_buy_website()` to allocate a backing webhosting server, create the `webhosting` service row in `pending` status, generate a `Repeat_Invoice` recurring billing row, produce an initial `invoices` row, and (when `registerDomain=true`) also kick off a domain order with its own invoice. The activator runs once the invoice is paid; `getWebsitesWelcomeEmail` then fires automatically with control-panel credentials. **Real money** — call `putWebsites` first to preview cost. Sibling ops: `getNewWebsite`, `putWebsites`, `getWebsiteInfo`, `webhostingCancel`.  **Body fields:** Identical to `putWebsites`. Required: `hostname`, `packageId`. Optional: `rootpass` (auto-generated if blank), `period`, `coupon`, `serviceOfferId`, `script`, `comment`, `registerDomain`.  **Returns** (schema `ServiceOrderPostResponse`): - `total_cost` (string/decimal) — total to pay across all generated invoices. - `iid` (string) — primary invoice id (numeric). - `iids` (array) — tagged invoice ids (e.g. `SERVICEwebhosting12345`). - `real_iids` (array) — numeric invoice ids to pass to `initiatePayment`. - `serviceId` (integer) — new `website_id`; use with `getWebsiteInfo` to poll status. - `invoice_description` (string) — human-readable summary. - `cj_params` (object) — Commission Junction tracking parameters.  **Side effects:** - Inserts `webhosting` service row (`website_status='pending'`). - Inserts `repeat_invoices` row for recurring charge. - Inserts `invoices` row for the first period. - When `registerDomain=true`: also creates a domain service row and its own invoice (`domain_serviceid`, `diid` returned alongside). - Hashes/encrypts `rootpass` to `history_log`.  **Auth:** Session/API key.  **Errors:** - When validation fails: response is the same `errors` array from `putWebsites` (HTTP 200 with `continue=false` shape). - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `getNewWebsite`, `putWebsites`. - **Next:** `getBillingInvoice` (confirm), `initiatePayment` (pay with `real_iids`), then poll `getWebsiteInfo` until `website_status=='active'`. - **Resend credentials after activation:** `getWebsitesWelcomeEmail`. - **Cancel before paying:** `webhostingCancel` (or `deleteBillingInvoice` for the pending invoice).  **Full ordering happy path:** ```text GET /websites/order                              -> catalog (getNewWebsite) PUT /websites/order { ...config }                -> price quote (putWebsites) POST /websites/order { ...config }               -> { serviceId, real_iids } (addWebsite) GET /billing/invoices/{iid}                      -> confirm invoice (getBillingInvoice) GET /billing/pay/cc/{real_iids[0]}               -> pay (initiatePayment) GET /websites/{serviceId}                        -> poll until website_status==\"active\" GET /websites/{serviceId}/welcome_email          -> resend credentials if needed ``` 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`website_order_post_request`** | [**`WebsiteOrderPostRequest`**](WebsiteOrderPostRequest.md) |  |

### Return type

[**`ServiceOrderPostResponse`**](ServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_new_website**
> `get_new_website`(_api::`WebhostingApi`; _mediaType=nothing) -> `WebsitesOrder`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_new_website`(_api::`WebhostingApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `WebsitesOrder` }, `OpenAPI.Clients.ApiResponse`

Read the webhosting order catalog — plans, packages, promo offers, pricing

Step 1 of the webhosting order flow. Returns the full ordering catalog needed to build a valid order: available `serviceTypes` (plans), `serviceOffers` (promotional bundles), `packages`, billing `period` options, the customer's currency symbol, default `serviceOfferId`, and `enableDomainRegistering` (whether free/paid domain registration is bundled). Read-only — no service or invoice created. Sibling discovery endpoints in other modules: `getNewVps`, `getNewMail`, `getNewDomain`. Sibling order-flow ops: `putWebsites`, `addWebsite`.  **Path/Query/Body:** None.  **Returns** (schema `WebsitesOrder`): - `currencySymbol` (string) — locale currency symbol for display. - `step` (integer) — current step in the multi-step order wizard. - `website` (integer) — pre-selected default plan id. - `period` (integer) — pre-selected default billing frequency. - `serviceOfferId` (integer) — pre-selected promo offer. - `serviceTypes` (array) — every plan; `services_ourcost` stripped server-side. Keys per row: `services_id`, `services_name`, `services_cost`, `services_type` (`WEB_CPANEL` / `WEB_DIRECTADMIN` / `WEB_PLESK` / `WEB_VESTA` / `WEB_PPA` / `WEB_WORDPRESS` / `WEB_STORAGE`), etc. - `serviceOffers` (array) — current promotional bundles. - `packages`, `packges` (array — legacy field name preserved alongside `packages`). - `enableDomainRegistering` (bool) — when `true`, the order can also register/transfer a domain. - `jsonServices`, `jsonServiceOffers` (string) — JSON-encoded copies for inline use in HTML.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Next:** `putWebsites` (validate + quote — no charge), `addWebsite` (place order).  **Example abridged response:** ```json {   \"currencySymbol\": \"$\",   \"step\": 1,   \"website\": 23,   \"period\": 1,   \"enableDomainRegistering\": true,   \"serviceTypes\": [     {\"services_id\": 23, \"services_name\": \"Standard\", \"services_cost\": 8.00, \"services_type\": 1},     {\"services_id\": 25, \"services_name\": \"Reseller\", \"services_cost\": 24.95, \"services_type\": 1}   ] } ``` 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`WebsitesOrder`**](WebsitesOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_website_buy_ip**
> `get_website_buy_ip`(_api::`WebhostingApi`, `id`::`Int64`; _mediaType=nothing) -> `GetWebsiteBuyIp200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_website_buy_ip`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `GetWebsiteBuyIp200Response` }, `OpenAPI.Clients.ApiResponse`

Read website IPs, current reverse DNS, and additional-IP pricing

Combined IP/billing view for a website: returns the primary `website_ip` plus any addon extras, each mapped to its current PTR hostname (via `get_hostname()`), the list of existing additional-IP repeat invoices (with `cancel_link` URLs), the count of paid extras, and the per-IP cost (in the website's billing currency, falling back to USD/`WEBSITE_IP_COST`). Read-only. Use to populate a \"buy another IP\" form or to audit current IP allocations. Sibling ops: `postWebsiteBuyIp` (buy or update PTR), `gettWebsiteReverseDns` (PTR-only view), `postWebsitesReverseDns` (PTR-only update).  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** - `ips` (object) — `{\"<ipv4>\": \"<ptr-hostname>\", ...}` for every IP attached. - `ipsDetails` (array) — existing addon invoices with each row's `ip`, `cancel_link` (`cancel_addon?module=webhosting&r=<rid>`), invoice metadata. - `ipCount` (integer) — count of paid addon IPs. - `ipCost` (float) — per-IP recurring cost in `currency`. - `currency` (string), `currencySymbol` (string).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Website Passed` — `id` not owned by caller. - `409 Website is not active` — `website_status != \"active\"`.  **Related calls:** - **Buy another IP:** `postWebsiteBuyIp`. - **Update PTRs only:** `postWebsitesReverseDns` (or `postWebsiteBuyIp` with `action=reverse_dns`). - **Cancel an addon IP:** follow the `cancel_link` URL. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |

### Return type

[**`GetWebsiteBuyIp200Response`**](GetWebsiteBuyIp200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_website_info**
> `get_website_info`(_api::`WebhostingApi`, `id`::`Int64`; _mediaType=nothing) -> `Website`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_website_info`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `Website` }, `OpenAPI.Clients.ApiResponse`

Read full configuration and status detail for one webhosting service

Returns everything the customer dashboard shows for one website — status, hostname, control-panel username, primary IP, host server, plan, billing summary, action `client_links`, and supported addons. Read-only. Backed by `ViewWebsite::getDetails()`. Internal `admin_links`, `settings`, `csrf`, and `serviceMaster.website_key` (the API key) are stripped before return. Use to render a website detail page, verify ownership before mutating, or poll `website_status` after `addWebsite`. Sibling ops: `getWebsiteList`, `getWebsitesLogin`, `getWebsitesBackups`, `getWebsiteInvoices`, `webhostingCancel`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns** (schema `Website`): - `serviceInfo` — `website_id`, `website_hostname`, `website_username`, `website_ip`, `website_server`, `website_type` (plan id), `website_status`, `website_comment`. - `serviceMaster` — host-server row (cPanel/DA/Plesk hostname, panel URL). `website_key` is stripped. - `serviceType` — plan row (`services_ourcost` stripped). - `client_links` (array) — `{name, link, icon}` for restart, login, backup, etc. Internal `?link=queue&action=...` URLs are pre-resolved to plain action names. - `serviceAddons` — extra IPs, additional resources.  **Auth:** Session/API key. Ownership enforced via `website_custid`.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` (legacy text — webhosting reuses the helper) — `id` not owned by caller.  **Related calls:** - **Login to panel:** `getWebsitesLogin` (auto-login URL). - **Backups + restore:** `getWebsitesBackups`. - **Billing:** `getWebsiteInvoices`. - **Reverse DNS:** `gettWebsiteReverseDns`, `postWebsitesReverseDns`. - **Buy extra IP:** `getWebsiteBuyIp`, `postWebsiteBuyIp`. - **Migration:** `postWebsiteMigration`. - **Resend welcome email:** `getWebsitesWelcomeEmail`. - **Cancel:** `webhostingCancel`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |

### Return type

[**`Website`**](Website.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_website_invoices**
> `get_website_invoices`(_api::`WebhostingApi`, `id`::`Int64`; _mediaType=nothing) -> `ChargeInvoiceRows`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_website_invoices`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `ChargeInvoiceRows` }, `OpenAPI.Clients.ApiResponse`

List all billing invoices and recurring charges scoped to one website

Returns the billing history for one webhosting service — initial purchase invoice, recurring monthly/period invoices, and any IP-addon invoices created via `postWebsiteBuyIp`. Backed by `Billing\\InvoicesList::go()` with `module='webhosting'` (same handler pattern as VPS/Mail/etc. per-service invoice endpoints). Use to render a per-website billing-history view or find an unpaid invoice id to pass to `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, sibling cross-module: `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`. For account-wide history use top-level `getBillingInvoices`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `ChargeInvoiceRows` — array of invoice rows: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `currency`, `module=webhosting`, `service={id}`.  **Auth:** Session/API key. Ownership enforced via parent website.  **Errors:** - `401` — unauthenticated. - `400 Invalid Service` — `id` not owned by caller.  **Related calls:** - **Single invoice detail:** `getBillingInvoice`. - **Pay an unpaid invoice:** `initiatePayment`. - **Account-wide history:** `getBillingInvoices`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |

### Return type

[**`ChargeInvoiceRows`**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_website_list**
> `get_website_list`(_api::`WebhostingApi`; _mediaType=nothing) -> `Vector{WebsiteRow}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_website_list`(_api::`WebhostingApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Vector{WebsiteRow}` }, `OpenAPI.Clients.ApiResponse`

List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services

Enumerates every shared/reseller hosting account (\"website\") owned by the authenticated customer. The canonical entry point for discovering a `website_id` to pass into other webhosting endpoints. Filtered server-side by `website_custid = session account_id` — cross-customer leaks are not possible. Empty array means the account has no websites (not an error). Sibling ops: `getWebsiteInfo`, `getWebsitesLogin`, `getWebsitesBackups`, `getWebsiteInvoices`, `webhostingCancel`, `getNewWebsite` (order a new one).  **Path/Query/Body:** None.  **Returns:** Array of `WebsiteRow` — per-website summary: - `website_id` (integer) — canonical id used in `/websites/{id}/*` paths. - `website_hostname` (string) — primary FQDN. - `website_status` (string enum) — `pending` / `active` / `pending-cancel` / `canceled`. - `services_name` (string) — plan/package label (e.g. `Standard`, `Reseller`). - `repeat_invoices_cost` (decimal) — current recurring cost in the website's billing currency. - `website_comment` (string|null) — customer-provided note.  **Auth:** Session/API key. Ownership filter enforced via `website_custid`.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-website detail:** `getWebsiteInfo` (full). - **Control panel:** `getWebsitesLogin` (auto-login URL). - **Backups + restore points:** `getWebsitesBackups`. - **Billing:** `getWebsiteInvoices`. - **Order a new site:** `getNewWebsite` → `putWebsites` → `addWebsite`. - **Cancel:** `webhostingCancel`. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`Vector{WebsiteRow}`**](WebsiteRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_websites_backups**
> `get_websites_backups`(_api::`WebhostingApi`, `id`::`Int64`; _mediaType=nothing) -> `WebsiteBackups`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_websites_backups`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `WebsiteBackups` }, `OpenAPI.Clients.ApiResponse`

List off-site cpmove backups stored in Swift — list or inline-download archive

Returns the list of off-site cpmove backups stored for the webhosting account, or — with the `download=<name>` query param — inline-streams the chosen archive as base64. Backups are read from the OpenStack Swift container `serviceMaster.website_name` (authenticated with `SWIFT_WEBHOSTING_USER`/`SWIFT_WEBHOSTING_PASS`) and filtered to objects matching `cpmove-{website_username}-*`. Use to find restore points before a risky change or before `webhostingCancel`. Empty array means no off-site cpmoves have been pushed for this account. Sibling ops: `webhostingCancel` (snapshot before terminating), `getWebsiteInfo`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Query params:** - `download` (string, optional) — when set to a backup `name` from the list, switches to inline download mode (returns the file base64-encoded). **Large payload** — only fetch when actually restoring.  **Returns:** - **List mode** (no `download`): array of `{name: \"<cpmove-...>\", size: \"<human-scaled>\"}` (size from `Content-Length` via `Scale($len, 'bytes', 1)`). - **Download mode** (`?download=<name>`): single object `{name, size, file: \"<base64-encoded-archive>\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller. - `409 Website is not active` — `website_status != \"active\"`.  **Related calls:** - **Take a backup before cancelling:** `getWebsitesBackups` (with `download=`) → `webhostingCancel`. - **Migrate to/from another host:** `postWebsiteMigration`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |

### Return type

[**`WebsiteBackups`**](WebsiteBackups.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_websites_login**
> `get_websites_login`(_api::`WebhostingApi`, `id`::`Int64`; _mediaType=nothing) -> `WebsiteLoginResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_websites_login`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `WebsiteLoginResponse` }, `OpenAPI.Clients.ApiResponse`

Get a one-time auto-login URL for the website's control panel

Returns a single-use auto-login URL so the customer can jump into their control panel without entering credentials. Branches on `serviceMaster.website_type`: - **WEB_CPANEL** (default): calls WHM `create_user_session` for the `cpaneld` service, returns a session-bound cPanel URL. - **WEB_DIRECTADMIN**: calls DA `CMD_API_LOGIN_KEYS` (`max_uses=2`, IP-locked to `127.0.0.1` plus the caller's `client_ip`); returns one-time URL. - **WEB_PLESK**: calls Plesk SDK `createSession`, returns `https://<host>:8443/enterprise/rsession_init.php?PLESKSESSID=...`. - **WEB_PPA**, **WEB_VESTA**: placeholders (return `Unhandled Server Type`).  Sibling ops: `getWebsiteInfo`, `getWebsitesWelcomeEmail` (re-send credentials instead).  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `{type: \"location\", location: \"<one-time-url>\"}`.  **Side effects:** - WHM/DA/Plesk-side session creation; sessions usually expire after first use (DirectAdmin: `max_uses=2`, IP-locked).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `Invalid Website Passed` — `id` not owned by caller. - `Website is <status>, only websites that are \"active\" can do this.` — `website_status != \"active\"`. - `No Host server or username` — service has no `website_username` or `website_server` resolved. - `Sorry! something went wrong, couldn't connect to <panel>!` — panel-side failure. - `Unhandled Server Type` — `website_type` is WEB_PPA / WEB_VESTA (or unrecognized).  **Related calls:** - **If you need the credentials themselves:** `getWebsitesWelcomeEmail` (re-sends the welcome email with username/password). - **List sites first:** `getWebsiteList`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |

### Return type

[**`WebsiteLoginResponse`**](WebsiteLoginResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_websites_welcome_email**
> `get_websites_welcome_email`(_api::`WebhostingApi`, `id`::`Int64`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_websites_welcome_email`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Resend the webhosting welcome email with control-panel credentials and URL

Resends the webhosting welcome email — the new-account email containing control-panel hostname, username, password, and getting-started instructions. Calls the dynamically-resolved `website_welcome_email($id)` helper which composes and dispatches the message to the account's `account_lid`. Idempotent — safe to call multiple times. Use after `addWebsite` finishes provisioning, or whenever a customer reports losing the original. Sibling welcome-email endpoints in other modules: `getVpsWelcomeEmail`, `getDomainsWelcomeEmail`, `getMailWelcomeEmail`. For an auto-login URL (no password reveal), use `getWebsitesLogin` instead.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `SuccessTextResponse` — `{text: \"Welcome Email has been resent.\"}`.  **Side effects:** - Sends an email to the account's billing email address with the control-panel credentials currently stored in `history_log` for this website.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service Passed` — `id` not owned by caller. - `409 Service is not active` — `website_status != \"active\"`.  **Related calls:** - **Auto-login instead:** `getWebsitesLogin` (one-time URL, no password disclosure). - **List sites first:** `getWebsiteList`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **gett_website_reverse_dns**
> `gett_website_reverse_dns`(_api::`WebhostingApi`, `id`::`Int64`; _mediaType=nothing) -> `ReverseDnsEntries`, `OpenAPI.Clients.ApiResponse` <br/>
> `gett_website_reverse_dns`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `ReverseDnsEntries` }, `OpenAPI.Clients.ApiResponse`

Read current reverse-DNS (PTR) records for the website's IPs

Returns the current PTR/reverse-DNS hostname for every IP attached to the website — primary `website_ip` plus any addons (from `get_service_addons().extra_ips`). PTRs are read live via `get_hostname()`, not cached. Use to render a PTR editor before calling `postWebsitesReverseDns`. **Note:** the operationId has a typo (`gettWebsiteReverseDns` with double-t) preserved for back-compat — do not rename. Sibling ops: `postWebsitesReverseDns` (update), `getWebsiteBuyIp` (broader IP+billing view), `postWebsiteBuyIp` (also supports `action=reverse_dns`).  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `ReverseDnsEntries` — `{\"ips\": {\"<ip>\": \"<ptr-hostname>\", ...}}`. Empty string for IPs with no PTR set.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller. - `409 Website is not active` — `website_status != \"active\"`.  **Related calls:** - **Update PTRs:** `postWebsitesReverseDns`. - **Add IPs first:** `getWebsiteBuyIp` → `postWebsiteBuyIp`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |

### Return type

[**`ReverseDnsEntries`**](ReverseDnsEntries.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_website_buy_ip**
> `post_website_buy_ip`(_api::`WebhostingApi`, `id`::`Int64`, `post_website_buy_ip_request`::`PostWebsiteBuyIpRequest`; _mediaType=nothing) -> `PostWebsiteBuyIp200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_website_buy_ip`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`, `post_website_buy_ip_request`::`PostWebsiteBuyIpRequest`; _mediaType=nothing) -> `Channel`{ `PostWebsiteBuyIp200Response` }, `OpenAPI.Clients.ApiResponse`

Buy an additional IP for the website OR update reverse DNS records

Dual-purpose mutation that branches on the `action` body field. **`action=buy_ip`** (default): allocates a new addon IP via `website_addon_get_free_ips`, creates an addon `repeat_invoices` row at `WEBSITE_IP_COST` (currency-converted to the parent invoice's currency), and emits a one-period `invoices` row to fund the first month — provisioning waits on payment and free-IP availability on the host server. **Real money**. **`action=reverse_dns`**: skips billing entirely and updates PTR records via `reverse_dns()` for any IP in the `ips` map whose new hostname differs from the current `get_hostname()` value. Sibling ops: `getWebsiteBuyIp` (preview), `gettWebsiteReverseDns` / `postWebsitesReverseDns` (PTR-only).  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body fields:** - `action` (string, optional, default `buy_ip`) — `buy_ip` or `reverse_dns`. - For `action=reverse_dns`: `ips` (object, required) — `{\"<ip>\": \"<new-hostname>\", ...}`. Only IPs already on the website are updated; others ignored. Empty-string values skipped.  **Returns:** - For `buy_ip`: `{text: \"Ordered Additional IP successfully.\", invoice: <integer>, repeatInvoice: <integer>}`. - For `reverse_dns`: `{message: \"DNS Updated\", success: true}`.  **Side effects:** - `buy_ip`: inserts `repeat_invoices` row (`Additional IP for Webhosting <id>`) and an `invoices` row for the first period. - `reverse_dns`: writes PTR records to the in-addr.arpa zone for changed IPs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Website Passed`. - `409 Website is not active`. - `No available free IPs on this server. Please contact support to order additional IPs.` — host has no free IPs.  **Related calls:** - **Preview first:** `getWebsiteBuyIp`. - **Pay the new addon invoice:** `initiatePayment` with the returned `invoice`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |
**`post_website_buy_ip_request`** | [**`PostWebsiteBuyIpRequest`**](PostWebsiteBuyIpRequest.md) |  |

### Return type

[**`PostWebsiteBuyIp200Response`**](PostWebsiteBuyIp200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_website_migration**
> `post_website_migration`(_api::`WebhostingApi`, `id`::`Int64`, `post_website_migration_request`::`PostWebsiteMigrationRequest`; _mediaType=nothing) -> `PostWebsiteMigration200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_website_migration`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`, `post_website_migration_request`::`PostWebsiteMigrationRequest`; _mediaType=nothing) -> `Channel`{ `PostWebsiteMigration200Response` }, `OpenAPI.Clients.ApiResponse`

Submit a request for InterServer staff to migrate a website from another host

Submits a migration request: opens a support ticket containing the customer's credentials for their current host (cPanel/FTP/domain registrar) so InterServer staff can copy the site, databases, and email into this webhosting account. **Sensitive** — the body contains plaintext credentials for the source host. Do not log responses. The created ticket's id is returned; track progress with the helpdesk/tickets API. Sibling ops: `getWebsiteInfo`, `getWebsitesBackups`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body fields** (JSON or multipart): - `custPortal` (string) — URL of the current hosting provider's customer portal (e.g. `sso.godaddy.com`). - `regEmail` (string) — email/username at the current host. - `password` (string) — password at the current host. - `ctrlPanel` (string) — current control-panel URL (e.g. `yourdomain.com/cpanel/`). - `ftpUsername` (string), `ftpPassword` (string) — FTP credentials. - `siteBusyMig` (string) — info on site traffic / whether a holding page can be shown during migration. - `splReqMig` (string) — special requirements (PHP version, modules, etc.). - `domainReg` (string) — whether domain-registration transfer is also needed (`yes`/`no` or freeform). - `dataMig` (string) — nameserver switch timing preference. - `domainRegPortal`, `domainRegEmail`, `domainRegPassword` (strings) — domain-registrar credentials.  **Returns:** `{text: \"Your migration request has been sucessfully submitted...\", ticket: <integer>}` — pass `ticket` to the tickets API to monitor.  **Side effects:** - Creates a support ticket via `create_ticket()` with the credentials in the ticket body. - Inserts a `history_log` row of type `Webhost Migration`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service Passed` — `id` not owned by caller.  **Related calls:** - **Track migration progress:** Tickets API (use the returned `ticket` id). - **Verify after migration:** `getWebsitesLogin`, `getWebsiteInfo`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |
**`post_website_migration_request`** | [**`PostWebsiteMigrationRequest`**](PostWebsiteMigrationRequest.md) |  |

### Return type

[**`PostWebsiteMigration200Response`**](PostWebsiteMigration200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_websites_reverse_dns**
> `post_websites_reverse_dns`(_api::`WebhostingApi`, `id`::`Int64`, `reverse_dns_entries`::`ReverseDnsEntries`; _mediaType=nothing) -> `TextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_websites_reverse_dns`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`Int64`, `reverse_dns_entries`::`ReverseDnsEntries`; _mediaType=nothing) -> `Channel`{ `TextResponse` }, `OpenAPI.Clients.ApiResponse`

Bulk-update reverse-DNS (PTR) records for one or more website IPs

Sets the PTR hostname for each IP in the website's IP set. Calls `reverse_dns($ip, $newHostname)` for every IP in the body whose value differs from the current PTR and is non-empty; IPs not in the body are left alone. Always returns `{message: \"DNS Updated\", success: true}` even if no entries actually changed. PTR propagation is asynchronous — re-call `gettWebsiteReverseDns` after a few minutes to confirm. Equivalent to calling `postWebsiteBuyIp` with `action=reverse_dns`. Sibling ops: `gettWebsiteReverseDns`, `getWebsiteBuyIp`, `postWebsiteBuyIp`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body fields** (schema `ReverseDnsEntries`): - `ips` (object, required) — `{\"<ip>\": \"<new-hostname>\", ...}`. Only IPs that already belong to the website are updated; others ignored. Empty-string values skipped.  **Returns:** `{message: \"DNS Updated\", success: true}`.  **Side effects:** - One `reverse_dns()` call per IP whose value changed. Records are written to the in-addr.arpa zone; TTL-dependent propagation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller. - `409 Website is not active` — `website_status != \"active\"`.  **Related calls:** - **Read current PTRs first:** `gettWebsiteReverseDns`. - **Equivalent endpoint:** `postWebsiteBuyIp` (`action=reverse_dns`). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`Int64`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |
**`reverse_dns_entries`** | [**`ReverseDnsEntries`**](ReverseDnsEntries.md) |  |

### Return type

[**`TextResponse`**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **put_websites**
> `put_websites`(_api::`WebhostingApi`, `website_order_put_request`::`WebsiteOrderPutRequest`; _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `put_websites`(_api::`WebhostingApi`, response_stream::`Channel`, `website_order_put_request`::`WebsiteOrderPutRequest`; _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`

Validate a webhosting order and preview cost — dry run, no charge

Step 2 of the webhosting order flow. Dry-runs the order through `validate_buy_website()`: checks `hostname` against `valid_hostname()` and the keyword blocklist, validates `packageId` against the customer's plan eligibility, confirms the chosen plan's hypervisor pool is in stock (`OUTOFSTOCK_WEBHOSTING_*` constants), applies any coupon and frequency discount, and returns a cost preview plus any validation errors. No invoice or service record is created. **Always call before `addWebsite`** to surface coupon/pricing/hostname problems cheaply. Sibling ops: `getNewWebsite` (catalog), `addWebsite` (place order).  **Body fields (form or JSON):** - `hostname` (string, required) — primary FQDN for the website. Must pass `valid_hostname()`, must not contain `interserver.net` (non-admin), must not be on the blocked-keyword list, must match the plan's TOS rules. - `rootpass` (string, optional) — control-panel admin password; if blank, a random 8-char password is generated server-side via `generateRandomString(8,1,1,1,1)`. - `packageId` (integer, required) — plan id from `getNewWebsite.serviceTypes[].services_id`. Must have `services_module='webhosting'` and `services_buyable=1` (non-admin). - `period` (integer, optional, default 1) — billing cycle in months: 1 / 6 / 12 / 24 / 36. Same frequency discounts as VPS apply. - `coupon` (string, optional) — coupon code. - `serviceOfferId` (integer, optional) — promo bundle from `getNewWebsite.serviceOffers`. - `script` (integer, optional, default 0) — auto-installer id (Softaculous/WordPress/etc., 0 = none). - `comment` (string, optional) — free-form note saved on the service row. - `registerDomain` (bool, optional) — when `true` and `enableDomainRegistering=true` from the catalog, also registers/transfers the domain through the order. - Implicit: TOS acceptance (validated via `tos='yes'` in source — required for non-admin).  **Returns** (validation envelope): - `continue` (bool) — `true` if the order can safely be POSTed. - `errors` (array of strings) — human-readable validation messages. - `frequency` (integer) — resolved billing frequency. - `coupon` (string) — the applied coupon name (echoed). - `couponCode` (integer) — the matched coupon row id, or `0` if none. - `serviceType` (integer) — resolved plan id. - `serviceCost` (float) — first-period total cost (includes coupon + period discount). - `originalCost` (float) — undiscounted reference. - `repeatServiceCost` (float) — recurring cost after discounts. - `hostname`, `password` (string) — final sanitized values (may differ from input — e.g. random password generated). - `introFrequency` (integer) — first-period bonus length (intro pricing).  **Side effects:** None — pure read.  **Auth:** Session/API key.  **Errors (within `errors` array, `continue=false`):** - `Invalid Billing Interval` — `period` not numeric. - `All webhosting servers are currently full.` — `OUTOFSTOCK_WEBHOSTING`. - `Invalid Package Specified.` — plan id not in the webhosting module or not buyable. - `Our <Plan> Webhosting Servers are currently full.` — plan-specific stock check. - `The hostname cannot contain interserver.net`. - `Hostname \"<x>\" Contains Invalid Characters Or Is Blank`. - `Hostname contains a blocked keyword.`. - `You must agree to the terms of service and click the checkbox saying so.`. - `Invalid Coupon Specified` — coupon not usable for this plan/customer.  Top-level HTTP errors: `401` unauthenticated.  **Related calls:** - **Prerequisite:** `getNewWebsite` (catalog). - **Next:** `addWebsite` (same body — actually places the order).  **Example request body:** ```json {   \"hostname\": \"mystore.example.com\",   \"rootpass\": \"Sup3rS3cret!\",   \"packageId\": 23,   \"period\": 12,   \"coupon\": \"\",   \"registerDomain\": false,   \"script\": 0 } ``` 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`website_order_put_request`** | [**`WebsiteOrderPutRequest`**](WebsiteOrderPutRequest.md) |  |

### Return type

`Nothing`

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_website_info**
> `update_website_info`(_api::`WebhostingApi`, `id`::`String`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_website_info`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`String`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

POST mutation hook for the website detail page (use dedicated ops where possible)

POST mutation hook for the website detail page. The implementation currently routes through the same `View::go()` handler as `getWebsiteInfo`; concrete update behavior depends on which `client_links` action the form is driving. **For specific changes, prefer the dedicated endpoints** — they enforce field-level validation and queue the correct hypervisor/panel actions. Sibling ops: `getWebsiteInfo`, all dedicated mutation endpoints below.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** Form-encoded fields appropriate to the `client_links` action being driven.  **Returns:** `SuccessTextResponse` — `{text: \"...\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Prefer these dedicated endpoints:** - **Buy a paid IP or update reverse DNS:** `postWebsiteBuyIp` (the latter via `action=reverse_dns`). - **PTR-only changes:** `postWebsitesReverseDns`. - **Migrate site from another host:** `postWebsiteMigration`. - **Resend control-panel credentials:** `getWebsitesWelcomeEmail`. - **Auto-login to cPanel/DA/Plesk:** `getWebsitesLogin`. - **Cancel:** `webhostingCancel`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`String`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **webhosting_cancel**
> `webhosting_cancel`(_api::`WebhostingApi`, `id`::`String`; _mediaType=nothing) -> `WebhostingCancel200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `webhosting_cancel`(_api::`WebhostingApi`, response_stream::`Channel`, `id`::`String`; _mediaType=nothing) -> `Channel`{ `WebhostingCancel200Response` }, `OpenAPI.Clients.ApiResponse`

Schedule termination of a webhosting service — wipes panel account at cycle end

**DESTRUCTIVE.** Schedules the website for cancellation via the shared `Billing\\CancelService::go($id)` flow with `module='webhosting'`. Marks the service `pending-cancel`, halts the recurring invoice, and queues deprovisioning so cPanel/DirectAdmin/Plesk/Webuzo removes the account and **all hosted files, databases, mailboxes, and DNS** at end-of-cycle. **There is no client-side restore** — take a cpmove backup via `getWebsitesBackups` first (with `download=<name>`) if data must be preserved. Sibling ops: `getWebsitesBackups`, `getWebsiteInfo` (verify status flipped), `getWebsiteInvoices`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `WebsiteCancelResponse` — cancel-service confirmation payload.  **Side effects:** - Sets `website_status='pending-cancel'`. - Marks the `repeat_invoices` row as non-renewing. - Logs the cancellation in `history_log`. - Queues deprovisioning to run at end-of-cycle (the cPanel/DA/Plesk account, all hosted files, databases, email accounts, and DNS will be removed). - Customer retains panel access until the cycle ends.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — service in a state that cannot be cancelled (already `canceled`, etc.).  **Related calls:** - **Before cancelling:** `getWebsitesBackups` (download a cpmove archive — irretrievable after deprovisioning). - **After cancelling:** `getWebsiteInfo` (confirm `pending-cancel`), `getWebsiteInvoices` (final invoices). - **Sibling cancels on other modules:** `VPSCancel`, `CancelDomain`, `mailCancel`, etc. all use the same `CancelService` handler. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`WebhostingApi`** | API context | 
**`id`** | **`String`** | The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. |

### Return type

[**`WebhostingCancel200Response`**](WebhostingCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


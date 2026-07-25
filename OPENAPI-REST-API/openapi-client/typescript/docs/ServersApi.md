# .ServersApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addServer**](ServersApi.md#addServer) | **POST** /servers/order | Place a custom dedicated server order, creating a real billable invoice
[**buyItNowServerOrder**](ServersApi.md#buyItNowServerOrder) | **GET** /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server
[**getMPServers**](ServersApi.md#getMPServers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
[**getNewServer**](ServersApi.md#getNewServer) | **GET** /servers/order | Get custom dedicated server ordering options, regions, and pricing
[**getServerInfo**](ServersApi.md#getServerInfo) | **GET** /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server
[**getServerInvoices**](ServersApi.md#getServerInvoices) | **GET** /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server
[**getServerList**](ServersApi.md#getServerList) | **GET** /servers | List all dedicated servers owned by the authenticated customer
[**getServerReverseDns**](ServersApi.md#getServerReverseDns) | **GET** /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server\&#39;s IPs
[**getServersWelcomeEmail**](ServersApi.md#getServersWelcomeEmail) | **GET** /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials
[**placeBuyNowServer**](ServersApi.md#placeBuyNowServer) | **POST** /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice
[**postServerReverseDns**](ServersApi.md#postServerReverseDns) | **POST** /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server\&#39;s IPs
[**serverBulkIpmiPowerGet**](ServersApi.md#serverBulkIpmiPowerGet) | **GET** /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call
[**serverIpmiLiveGet**](ServersApi.md#serverIpmiLiveGet) | **GET** /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
[**serverIpmiLivePost**](ServersApi.md#serverIpmiLivePost) | **POST** /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
[**serverIpmiPowerGet**](ServersApi.md#serverIpmiPowerGet) | **GET** /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single)
[**serverIpmiPowerPost**](ServersApi.md#serverIpmiPowerPost) | **POST** /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server
[**serversCancel**](ServersApi.md#serversCancel) | **DELETE** /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle
[**updateServerInfo**](ServersApi.md#updateServerInfo) | **POST** /servers/{id} | Update settings on a dedicated server order (shares handler with view)


# **addServer**
> AddServer200Response addServer(serverOrderPostRequest)

Submits a fully custom dedicated server order. Creates a `pending` `servers` row, a `Repeat_Invoice`, and the first invoice, then emails customer + admin. Caveat: real billable order — confirm with the user first. Body (form fields): `cpu` (id from `cpu_li`), `hd[]` (array of drive ids), `memory`, `bandwidth`, `ips`, `os`, `cp`, `raid` (ids from `getNewServer`), `region` (region_id), `servername` (valid hostname), `rootpass`, `tos` (must be true), optional `comment`. `account.server_order_discount` (if set) applies. Returns: `{ text:\'Order Completed\', invoice, order }`. Errors: 422 \'Missing/Invalid <field>\'; 401 unauth. Sibling ops: `getNewServer` (options), `placeBuyNowServer` (pre-built path), `getServerInfo` (view new order), `getServerInvoices`.

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiAddServerRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiAddServerRequest = {
  
  serverOrderPostRequest: {
    cpu: 1,
    hd: null,
    memory: 1,
    bandwidth: 1,
    ips: 1,
    os: 1,
    cp: 1,
    raid: 1,
    region: 1,
    servername: "servername_example",
    rootpass: "rootpass_example",
    tos: true,
    comment: "",
  },
};

const data = await apiInstance.addServer(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serverOrderPostRequest** | **ServerOrderPostRequest**|  |


### Return type

**AddServer200Response**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Server order placed successfully. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **buyItNowServerOrder**
> BuyItNowServerOrder200Response buyItNowServerOrder()

Step 1 of the Rapid Deploy / coupon dedicated server order flow. Returns options + pricing for either a marketplace asset (`a=<asset_id>`) or a coupon (`c=<coupon_name>`) so the order form can be rendered before `placeBuyNowServer`. Read-only; no charge. Sibling ops: `placeBuyNowServer` (commit), `getMPServers` (browse marketplace), `addServer` (custom build flow).  **Query (one required):** - `a` (integer) — asset_id from `getMPServers`. - `c` (string) — `server_coupons.name`.  **Returns:** `{ bandwidth[], ips[], os[], cp[], raid[], regions[], a?: {asset + items}, c?: {coupon + region} }`. Each option row is `{ id, short_desc, long_desc, monthly_price }` — feed those ids into `placeBuyNowServer`.  **Auth:** Session/API key.  **Errors:** - `400` — `\'No Server Coupon or Market-Place Asset Specified\'` when neither `a` nor `c` is passed. - `400` — `\'Invalid Asset ID\'` / `\'No Server Coupon with that name\'`. - `409` — `\'Server already sold!\'` (asset already in-cart) or `\'Server Out of stock\'` (coupon). - `401` — unauthenticated.  **Related calls:** - **Next:** `placeBuyNowServer` (commit the order). - **Browse:** `getMPServers`. - **Custom build alternative:** `addServer`. 

### Example


```typescript
import { createConfiguration, ServersApi } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request = {};

const data = await apiInstance.buyItNowServerOrder(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**BuyItNowServerOrder200Response**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Available server configurations with pricing and hardware options. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getMPServers**
> BuyItNowList getMPServers()

Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`. Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired. Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).

### Example


```typescript
import { createConfiguration, ServersApi } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request = {};

const data = await apiInstance.getMPServers(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**BuyItNowList**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Marketplace Buy it now servers list |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getNewServer**
> ServerOrder getNewServer()

Use before placing a fully custom (non-Rapid-Deploy) dedicated server order to discover available CPUs, drives, memory tiers, OS images, control panels, RAID levels, bandwidth packages, IP blocks, and regions with monthly prices. No params, no body. Returns: object with `config_li` keyed by category (`cpu_li`, `hd_li`, `memory_li`, `bandwidth_li`, `ips_li`, `os_li`, `cp_li`, `raid_li`) plus `regions`. Use returned IDs as POST values for `addServer`. Note `hd_li` and `memory_li` are nested by `cpu` id — the chosen CPU constrains valid drive/memory options. Errors: 401 if not authenticated. Sibling ops: `addServer` (commits the order), `buyItNowServerOrder` (pre-built marketplace alternative), `getMPServers` (browse marketplace).

### Example


```typescript
import { createConfiguration, ServersApi } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request = {};

const data = await apiInstance.getNewServer(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**ServerOrder**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Server Ordering details |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getServerInfo**
> Server getServerInfo()

Use to fetch complete configuration for one dedicated server — hardware, network/VLAN/IP layout, asset assignments, location, status, billing references, and client action links. Path param: `id` (integer server_id, from `getServerList`). No body. Returns: `ViewServer::getDetails()` shape: `serviceInfo`, `networkInfo` (vlans + assets, with `ipmi_admin_username`/`ipmi_admin_password` and admin lease creds REDACTED for client safety), normalized `client_links`, `serviceType`. `admin_links`/raw `settings`/`csrf` stripped. Errors: 404 not owned; 401 unauth. Sibling ops: `getServerInvoices`, `serverIpmiLiveGet`, `serverIpmiPowerGet` (single — prefer `serverBulkIpmiPowerGet` for many), `getServerReverseDns`, `getServersWelcomeEmail`, `serversCancel`.

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiGetServerInfoRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiGetServerInfoRequest = {
    // Server ID number.
  id: 1,
};

const data = await apiInstance.getServerInfo(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | Server ID number. | defaults to undefined


### Return type

**Server**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Server details |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getServerInvoices**
> ChargeInvoiceRows getServerInvoices()

Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: `id` (integer server_id from `getServerList`). No body. Inherits from `MyAdmin\\Api\\Billing\\InvoicesList` with module=servers. Returns: `ChargeInvoiceRows` array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if `id` not owned by the caller; 401 unauth. Sibling ops: `getServerInfo` (current service state), `serversCancel` (cancel), `getBillingInvoice` (single invoice by invoice id), `getVpsInvoices`/`getDomainInvoices` for other modules, `getServersWelcomeEmail` to resend setup info.

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiGetServerInvoicesRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiGetServerInvoicesRequest = {
    // Server ID number
  id: 1,
};

const data = await apiInstance.getServerInvoices(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | Server ID number | defaults to undefined


### Return type

**ChargeInvoiceRows**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Get Invoices response |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getServerList**
> Array<ServerRow> getServerList()

Use to enumerate physical bare-metal dedicated servers on the calling account. No params, no body. Filters `servers` by session `account_id`. Returns: array of `{ server_id, account_lid, server_hostname, server_status }`. Use `server_id` with `getServerInfo` for full hardware/network/IPMI details, `getServerInvoices` for billing, or `serverIpmiPowerGet` for chassis power state. Errors: 401 if not authenticated; empty array if account owns no servers. Sibling ops: `getServerInfo` (details), `getVpsList` (virtual instead of physical hardware), `getMPServers` (purchasable inventory, not owned). For IPMI status across many servers in one call, prefer `serverBulkIpmiPowerGet`.

### Example


```typescript
import { createConfiguration, ServersApi } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request = {};

const data = await apiInstance.getServerList(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<ServerRow>**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The listing of &#x60;Servers&#x60; services on your account. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getServerReverseDns**
> ReverseDnsEntries getServerReverseDns()

Use to read the existing PTR/rDNS hostnames assigned to each public IP in the server\'s VLANs — typically before calling `postServerReverseDns` to update them. Path param: `id` (integer server_id). No body. Walks `networkInfo.vlans`, expands each network to usable host IPs (handles /31 and /32 edge cases), and resolves each via `get_hostname()`. Returns: `{ ips: { \'<ipv4>\': \'<ptr_or_empty_string>\', ... } }`. Empty string indicates no PTR set. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: `postServerReverseDns` (update PTRs), `getServerInfo` (full network), `getVpsReverseDns` for VPS, `getDomainNameservers` / DNS endpoints for forward records. Note rDNS propagation is delegated to the in-addr.arpa zone — changes are not always instant.

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiGetServerReverseDnsRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiGetServerReverseDnsRequest = {
    // Server ID number
  id: 1,
};

const data = await apiInstance.getServerReverseDns(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | Server ID number | defaults to undefined


### Return type

**ReverseDnsEntries**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Servers Reverse DNS info response |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getServersWelcomeEmail**
> SuccessTextResponse getServersWelcomeEmail()

Use when the customer asks for the original setup/login info to be re-sent (root password, IPs, control-panel URL). Path param: `id` (integer server_id, must be `active`). No body. Invokes `server_welcome_email($id)` which re-sends the welcome message to the account\'s email. Returns: `{ text:\'Welcome Email has been resent.\' }`. Errors: 404 if `id` not owned by caller; 409 if service not active (cancelled/pending/suspended); 401 unauth. Caveat: re-sending is rate-sensitive; do not call repeatedly in a loop. The email may contain root credentials — confirm intent before triggering. Sibling ops: `getServerInfo` (status check), `getServerInvoices`, `getVpsWelcomeEmail` for VPS, `getDomainsWelcomeEmail` for domains.

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiGetServersWelcomeEmailRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiGetServersWelcomeEmailRequest = {
    // Server ID number
  id: 1,
};

const data = await apiInstance.getServersWelcomeEmail(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | Server ID number | defaults to undefined


### Return type

**SuccessTextResponse**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A response indicating the operation completed successfully with a text message. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **placeBuyNowServer**
> ServersBuyNowResponse placeBuyNowServer()

Step 2 of the Rapid Deploy / coupon order flow. Commits a marketplace asset OR coupon-based dedicated server order. Inserts the `servers` row, creates a `Repeat_Invoice` plus the first `invoices` row, marks the asset `MarketPlace-Incart` (or decrements `server_coupons.in_stock`), then emails customer + admin. **Real billable order — confirm intent first.** Sibling ops: `buyItNowServerOrder` (catalog), `getServerInfo` (poll provisioning), `getServerInvoices` (billing), `addServer` (custom build alternative).  **Query (one required, same as `buyItNowServerOrder`):** - `a` (integer) — asset_id. - `c` (string) — `server_coupons.name`.  **Body fields:** - `hostname` (string, required) — valid FQDN; validated by `valid_hostname`. - `enablepassword` (boolean, optional, default `false`) — when true the client must supply `rootPassword`; otherwise a secure password is generated server-side via `generate_password()`. - `rootPassword` (string, required when `enablepassword=true`) — must be ≥8 chars with at least one uppercase, lowercase, digit, and special character (`valid_password`). - `os`, `bandwidth`, `ips`, `cp`, `raid` (integer, optional) — option ids from `buyItNowServerOrder`; defaults `30` / `10` / `9` / `1` / `0` applied when missing. - `comments` (string, optional) — appended to the order comment.  **Returns:** `201 { success: true, text: \'Server order is placed.\', service_id, invoice_id }`.  **Auth:** Session/API key.  **Errors:** - `400` — `\'Server Hostname is missing.\'` / `\'Invalid Hostname!\'` / `\'Server Password is missing.\'` / password complexity message. - `409` — `\'Server already sold!\'` / `\'Server Out of stock.\'` - `401` — unauthenticated.  **Side effects:** inserts `servers` row, creates `repeat_invoices` + `invoices` rows, updates `assets.status` or `server_coupons.in_stock`, queues admin + customer welcome emails.  **Related calls:** - **Prerequisite:** `buyItNowServerOrder`. - **Next:** `getBillingInvoice` + `initiatePayment` to pay, then poll `getServerInfo` for provisioning state. - **Custom build alternative:** `addServer`. 

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiPlaceBuyNowServerRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiPlaceBuyNowServerRequest = {
  
  placeBuyNowServerRequest: {
    server_id: 2343,
    server_hostname: "server.int.com",
    server_root_password: "uD1c!@cgD",
  },
};

const data = await apiInstance.placeBuyNowServer(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeBuyNowServerRequest** | **PlaceBuyNowServerRequest**|  |


### Return type

**ServersBuyNowResponse**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Order placed successfully. |  -  |
**400** | Order validation failed. |  -  |
**401** | Unauthorized |  -  |
**0** | Default response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postServerReverseDns**
> TextResponse postServerReverseDns(reverseDnsEntries)

Use to set or remove PTR records for the server\'s public IPs. Path param: `id` (server_id). Body: `ips` (object mapping `\'<ipv4>\'` to desired hostname; empty string removes the PTR). Only IPs that already exist on the server\'s VLANs and whose hostname differs from current are updated; each diff calls `reverse_dns($ip, $host, \'set_reverse\'|\'remove_reverse\')`. Returns: `{ message, success:bool }`. `success:false` with \'No valid IPs were passed or there were no changes\' when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream. Sibling ops: `getServerReverseDns` (read first), `getServerInfo`, VPS counterpart `postVpsReverseDns`.

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiPostServerReverseDnsRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiPostServerReverseDnsRequest = {
    // Server ID number
  id: 1,
  
  reverseDnsEntries: {
    ips: {},
  },
};

const data = await apiInstance.postServerReverseDns(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reverseDnsEntries** | **ReverseDnsEntries**|  |
 **id** | [**number**] | Server ID number | defaults to undefined


### Return type

**TextResponse**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Update Server Reverse DNS response |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **serverBulkIpmiPowerGet**
> ServerBulkIpmiPowerResponse serverBulkIpmiPowerGet()

Use when you need power status for several owned servers at once (dashboards, mass health checks). Each server is queried independently; per-server failures (invalid id, inactive service, no asset, BMC error) are reported in the same response without aborting the batch. Read-only — does NOT change power state. Query: `ids` (required) — comma-separated string `?ids=2313,2314,2315` OR repeated `ids[]` array. Duplicates de-duped; non-positive ints become per-row errors. Returns: `{ results: [ { id, asset?, text|error } ] }`. Errors: 400 \'No server IDs provided.\' if `ids` empty/missing; 401 unauth. Sibling ops: `serverIpmiPowerGet` (single-server equivalent), `serverIpmiPowerPost` (DESTRUCTIVE — change power; no bulk equivalent — call per server), `getServerList` (discover ids).

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiServerBulkIpmiPowerGetRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiServerBulkIpmiPowerGetRequest = {
    // Comma-separated list of Server IDs to query (e.g. `2313,2314,2315`). May also be passed as repeated `ids[]` query parameters.
  ids: "2313,2314,2315",
};

const data = await apiInstance.serverBulkIpmiPowerGet(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**string**] | Comma-separated list of Server IDs to query (e.g. &#x60;2313,2314,2315&#x60;). May also be passed as repeated &#x60;ids[]&#x60; query parameters. | defaults to undefined


### Return type

**ServerBulkIpmiPowerResponse**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Bulk IPMI power status response, one entry per requested server. |  -  |
**400** | The specified resource was not found |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **serverIpmiLiveGet**
> ServerIpmiLiveInfo serverIpmiLiveGet()

Reads the active IPMI Live session for a dedicated server — the temporary whitelisted public IP, the customer-side IPMI gateway URL, and the IPMI client (read-only) credentials so the customer can open the KVM/console. Looks up the asset\'s IPMI IP, the location\'s IPMI group, and any active `ipmi_ips` lease (3-hour TTL). Sibling ops: `serverIpmiLivePost` (allocate whitelist slot), `serverIpmiPowerGet` / `serverIpmiPowerPost` (chassis power).  **Path:** `id` (integer, required) — server_id from `getServerList`.  **Body / query:** None. Optionally pass `asset` (asset_id) to target a specific asset; default is first asset.  **Returns:** when an active lease exists `{ text (html), public_ip, allowed_ip, client_username, client_password }`. When no lease yet: `{ text: \'Setup not yet completed\' }` — then call `serverIpmiLivePost` to allocate a slot.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text `\'No IPMI IP Set\'` / `\'Invalid IPMI IP\'` / `\'Live IPMI not Available for this location.\'` when the asset/location is not configured for IPMI Live.  **Caveat:** returns `client_password` — never log/echo verbatim.  **Related calls:** - **Allocate:** `serverIpmiLivePost`. - **Chassis power:** `serverIpmiPowerGet`, `serverIpmiPowerPost`. 

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiServerIpmiLiveGetRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiServerIpmiLiveGetRequest = {
    // Server ID number
  id: 1,
};

const data = await apiInstance.serverIpmiLiveGet(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | Server ID number | defaults to undefined


### Return type

**ServerIpmiLiveInfo**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Response from the Servers IPMI Live information request. |  -  |
**404** | The specified resource was not found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **serverIpmiLivePost**
> ServerIpmiLiveInfo serverIpmiLivePost()

Allocates / refreshes an IPMI Live whitelist slot so the customer\'s specified IP can reach the BMC\'s KVM/console for 3 hours. Picks a free `ipmi_ips` row for the location\'s `ipmi_group`, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via `ipmi_live_setup()`. Sibling ops: `serverIpmiLiveGet` (read current lease), `serverIpmiPowerPost` (DESTRUCTIVE — chassis power).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `ip` (string, required) — public IPv4 to whitelist. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text (html), public_ip, allowed_ip, client_username, client_password }` for KVM login.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `\'An Invalid IP was passed.\'`, `\'No Live IPs are currently free for use with the IPMI Gateway. Please wait <duration> for the next IP to free up.\'`, `\'There was an error communicating with the IPMI Management server\'`, `\'No IPMI IP Set\'` / `\'Invalid IPMI IP\'` / `\'Live IPMI not Available for this location.\'`.  **Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.  **Related calls:** - **Read current lease:** `serverIpmiLiveGet`. - **Power control:** `serverIpmiPowerPost`. 

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiServerIpmiLivePostRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiServerIpmiLivePostRequest = {
    // Server ID number
  id: 1,
    // Your IP Address you wish to connect to the IPMI system from.
  ip: "1.2.3.4",
    // Asset ID (optional)
  asset: 5431,
};

const data = await apiInstance.serverIpmiLivePost(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | Server ID number | defaults to undefined
 **ip** | [**string**] | Your IP Address you wish to connect to the IPMI system from. | defaults to undefined
 **asset** | [**number**] | Asset ID | (optional) defaults to undefined


### Return type

**ServerIpmiLiveInfo**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Response from the Servers IPMI Live information request. |  -  |
**404** | The specified resource was not found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **serverIpmiPowerGet**
> TextResponse serverIpmiPowerGet()

Use to check whether a server\'s chassis is currently `on`/`off` via IPMI before issuing a power action. Path param: `id` (integer server_id). Optional body `asset` (asset_id — defaults to first asset). Issues `ipmitool power status` against the asset\'s `ipmi_ip` using its location IPMI group/credentials. Returns: `{ text:\'Chassis Power is on\' }` (or \'off\'). Errors: 404 if `id` not owned by caller; 409 if service not active; \'There was an error sending the IPMI command\' if BMC unreachable. Caveat: BMCs occasionally rate-limit — back off on repeated errors. Sibling ops: `serverBulkIpmiPowerGet` (preferred when polling many servers — single round-trip), `serverIpmiPowerPost` (DESTRUCTIVE — change power), `getServerInfo` (full state), `serverIpmiLiveGet` (IPMI Live KVM).

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiServerIpmiPowerGetRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiServerIpmiPowerGetRequest = {
    // Server ID number
  id: 1,
};

const data = await apiInstance.serverIpmiPowerGet(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | Server ID number | defaults to undefined


### Return type

**TextResponse**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Response with a text message field. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **serverIpmiPowerPost**
> TextResponse serverIpmiPowerPost()

Sends an IPMI chassis power command (`on`, `off`, `cycle`, `reset`, `soft`) to a customer\'s physical dedicated server. **DESTRUCTIVE on running hardware:** `off` / `cycle` / `reset` are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. `soft` requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: `serverIpmiPowerGet` (read first), `serverBulkIpmiPowerGet` (status only), `serverIpmiLivePost` (KVM access).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `action` (string, required) — one of `on` / `off` / `cycle` / `reset` / `soft`. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text: \'Power command sent. Response: <ipmi output>\' }`.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `422` / inline error text — `Invalid Action` when `action` is not in the allowed set. - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `\'There was an error sending the IPMI command.\'` when BMC is unreachable or rate-limiting.  **Related calls:** - **Status (single / bulk):** `serverIpmiPowerGet`, `serverBulkIpmiPowerGet`. - **KVM console:** `serverIpmiLivePost`. 

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiServerIpmiPowerPostRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiServerIpmiPowerPostRequest = {
    // Server ID number
  id: 1,
    // The power action to send to the ipmi controller.
  action: "on",
    // The Asset ID (optional)
  asset: 5432,
};

const data = await apiInstance.serverIpmiPowerPost(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | Server ID number | defaults to undefined
 **action** | [**string**]**Array<&#39;cycle&#39; &#124; &#39;reset&#39; &#124; &#39;on&#39; &#124; &#39;off&#39; &#124; &#39;soft&#39;>** | The power action to send to the ipmi controller. | defaults to undefined
 **asset** | [**number**] | The Asset ID | (optional) defaults to undefined


### Return type

**TextResponse**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Response with a text message field. |  -  |
**400** | The specified resource was not found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **serversCancel**
> ServersCancel200Response serversCancel()

Submits a cancellation request for a dedicated server. The server is deprovisioned and recurring billing stops at the end of the current billing cycle (not an immediate refund). Path param: `id` (integer server_id, from `getServerList`). No body. Caveat: billing-affecting action — always confirm with the user. Hardware-attached data may be wiped on deprovisioning. Returns: `{ success:bool, text:\'Servers is canceled.\' }`. Errors: 404 if `id` not owned by caller; 409 if already cancelled or non-active; 401 unauth. Sibling ops: `getServerInfo` (current status), `getServerInvoices` (outstanding charges), VPS counterpart `VPSCancel`. To re-order after cancel use `addServer` or `placeBuyNowServer`.

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiServersCancelRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiServersCancelRequest = {
    // Server ID number
  id: 1,
};

const data = await apiInstance.serversCancel(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | Server ID number | defaults to undefined


### Return type

**ServersCancel200Response**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Servers Cancel |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **updateServerInfo**
> SuccessTextResponse updateServerInfo()

Use to modify metadata on an existing dedicated server order. Path param: `id` (integer server_id). Currently this method shares the same handler as `getServerInfo` (`View::go()`) — no dedicated update fields are processed; treat it as deprecated/no-op pending field-specific endpoints. For hostname, password, or rDNS changes use the dedicated ops below. Returns: same payload shape as `getServerInfo`. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: prefer `postServerReverseDns` (rDNS), `serverIpmiPowerPost` (power), `serverIpmiLivePost` (IPMI access), `serversCancel` (cancel). For new orders use `addServer` or `placeBuyNowServer`. View-only: `getServerInfo`.

### Example


```typescript
import { createConfiguration, ServersApi } from '';
import type { ServersApiUpdateServerInfoRequest } from '';

const configuration = createConfiguration();
const apiInstance = new ServersApi(configuration);

const request: ServersApiUpdateServerInfoRequest = {
    // Server ID number.
  id: "id_example",
};

const data = await apiInstance.updateServerInfo(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**] | Server ID number. | defaults to undefined


### Return type

**SuccessTextResponse**

### Authorization

[sessionIdCookieAuth](README.md#sessionIdCookieAuth), [apiKeyAuth](README.md#apiKeyAuth), [sessionIdHeaderAuth](README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A response indicating the operation completed successfully with a text message. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)



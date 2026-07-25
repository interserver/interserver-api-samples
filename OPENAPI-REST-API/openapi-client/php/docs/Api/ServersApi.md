# Interserver\\MyAdmin\ServersApi

All URIs are relative to https://my.interserver.net/apiv2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**addServer()**](ServersApi.md#addServer) | **POST** /servers/order | Place a custom dedicated server order, creating a real billable invoice
[**buyItNowServerOrder()**](ServersApi.md#buyItNowServerOrder) | **GET** /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server
[**getMPServers()**](ServersApi.md#getMPServers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
[**getNewServer()**](ServersApi.md#getNewServer) | **GET** /servers/order | Get custom dedicated server ordering options, regions, and pricing
[**getServerInfo()**](ServersApi.md#getServerInfo) | **GET** /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server
[**getServerInvoices()**](ServersApi.md#getServerInvoices) | **GET** /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server
[**getServerList()**](ServersApi.md#getServerList) | **GET** /servers | List all dedicated servers owned by the authenticated customer
[**getServerReverseDns()**](ServersApi.md#getServerReverseDns) | **GET** /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server&#39;s IPs
[**getServersWelcomeEmail()**](ServersApi.md#getServersWelcomeEmail) | **GET** /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials
[**placeBuyNowServer()**](ServersApi.md#placeBuyNowServer) | **POST** /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice
[**postServerReverseDns()**](ServersApi.md#postServerReverseDns) | **POST** /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server&#39;s IPs
[**serverBulkIpmiPowerGet()**](ServersApi.md#serverBulkIpmiPowerGet) | **GET** /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call
[**serverIpmiLiveGet()**](ServersApi.md#serverIpmiLiveGet) | **GET** /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
[**serverIpmiLivePost()**](ServersApi.md#serverIpmiLivePost) | **POST** /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
[**serverIpmiPowerGet()**](ServersApi.md#serverIpmiPowerGet) | **GET** /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single)
[**serverIpmiPowerPost()**](ServersApi.md#serverIpmiPowerPost) | **POST** /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server
[**serversCancel()**](ServersApi.md#serversCancel) | **DELETE** /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle
[**updateServerInfo()**](ServersApi.md#updateServerInfo) | **POST** /servers/{id} | Update settings on a dedicated server order (shares handler with view)


## `addServer()`

```php
addServer($serverOrderPostRequest): \Interserver\\MyAdmin\Model\AddServer200Response
```

Place a custom dedicated server order, creating a real billable invoice

Submits a fully custom dedicated server order. Creates a `pending` `servers` row, a `Repeat_Invoice`, and the first invoice, then emails customer + admin. Caveat: real billable order — confirm with the user first. Body (form fields): `cpu` (id from `cpu_li`), `hd[]` (array of drive ids), `memory`, `bandwidth`, `ips`, `os`, `cp`, `raid` (ids from `getNewServer`), `region` (region_id), `servername` (valid hostname), `rootpass`, `tos` (must be true), optional `comment`. `account.server_order_discount` (if set) applies. Returns: `{ text:'Order Completed', invoice, order }`. Errors: 422 'Missing/Invalid <field>'; 401 unauth. Sibling ops: `getNewServer` (options), `placeBuyNowServer` (pre-built path), `getServerInfo` (view new order), `getServerInvoices`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$serverOrderPostRequest = new \Interserver\\MyAdmin\Model\ServerOrderPostRequest(); // \Interserver\\MyAdmin\Model\ServerOrderPostRequest

try {
    $result = $apiInstance->addServer($serverOrderPostRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->addServer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serverOrderPostRequest** | [**\Interserver\\MyAdmin\Model\ServerOrderPostRequest**](../Model/ServerOrderPostRequest.md)|  |

### Return type

[**\Interserver\\MyAdmin\Model\AddServer200Response**](../Model/AddServer200Response.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `buyItNowServerOrder()`

```php
buyItNowServerOrder(): \Interserver\\MyAdmin\Model\BuyItNowServerOrder200Response
```

Get configurable options for a Rapid Deploy / coupon dedicated server

Step 1 of the Rapid Deploy / coupon dedicated server order flow. Returns options + pricing for either a marketplace asset (`a=<asset_id>`) or a coupon (`c=<coupon_name>`) so the order form can be rendered before `placeBuyNowServer`. Read-only; no charge. Sibling ops: `placeBuyNowServer` (commit), `getMPServers` (browse marketplace), `addServer` (custom build flow).  **Query (one required):** - `a` (integer) — asset_id from `getMPServers`. - `c` (string) — `server_coupons.name`.  **Returns:** `{ bandwidth[], ips[], os[], cp[], raid[], regions[], a?: {asset + items}, c?: {coupon + region} }`. Each option row is `{ id, short_desc, long_desc, monthly_price }` — feed those ids into `placeBuyNowServer`.  **Auth:** Session/API key.  **Errors:** - `400` — `'No Server Coupon or Market-Place Asset Specified'` when neither `a` nor `c` is passed. - `400` — `'Invalid Asset ID'` / `'No Server Coupon with that name'`. - `409` — `'Server already sold!'` (asset already in-cart) or `'Server Out of stock'` (coupon). - `401` — unauthenticated.  **Related calls:** - **Next:** `placeBuyNowServer` (commit the order). - **Browse:** `getMPServers`. - **Custom build alternative:** `addServer`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->buyItNowServerOrder();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->buyItNowServerOrder: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Interserver\\MyAdmin\Model\BuyItNowServerOrder200Response**](../Model/BuyItNowServerOrder200Response.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getMPServers()`

```php
getMPServers(): \Interserver\\MyAdmin\Model\BuyItNowList
```

List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing

Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`. Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired. Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getMPServers();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->getMPServers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Interserver\\MyAdmin\Model\BuyItNowList**](../Model/BuyItNowList.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNewServer()`

```php
getNewServer(): \Interserver\\MyAdmin\Model\ServerOrder
```

Get custom dedicated server ordering options, regions, and pricing

Use before placing a fully custom (non-Rapid-Deploy) dedicated server order to discover available CPUs, drives, memory tiers, OS images, control panels, RAID levels, bandwidth packages, IP blocks, and regions with monthly prices. No params, no body. Returns: object with `config_li` keyed by category (`cpu_li`, `hd_li`, `memory_li`, `bandwidth_li`, `ips_li`, `os_li`, `cp_li`, `raid_li`) plus `regions`. Use returned IDs as POST values for `addServer`. Note `hd_li` and `memory_li` are nested by `cpu` id — the chosen CPU constrains valid drive/memory options. Errors: 401 if not authenticated. Sibling ops: `addServer` (commits the order), `buyItNowServerOrder` (pre-built marketplace alternative), `getMPServers` (browse marketplace).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getNewServer();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->getNewServer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Interserver\\MyAdmin\Model\ServerOrder**](../Model/ServerOrder.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getServerInfo()`

```php
getServerInfo($id): \Interserver\\MyAdmin\Model\Server
```

Get full hardware, network, and lifecycle details for a dedicated server

Use to fetch complete configuration for one dedicated server — hardware, network/VLAN/IP layout, asset assignments, location, status, billing references, and client action links. Path param: `id` (integer server_id, from `getServerList`). No body. Returns: `ViewServer::getDetails()` shape: `serviceInfo`, `networkInfo` (vlans + assets, with `ipmi_admin_username`/`ipmi_admin_password` and admin lease creds REDACTED for client safety), normalized `client_links`, `serviceType`. `admin_links`/raw `settings`/`csrf` stripped. Errors: 404 not owned; 401 unauth. Sibling ops: `getServerInvoices`, `serverIpmiLiveGet`, `serverIpmiPowerGet` (single — prefer `serverBulkIpmiPowerGet` for many), `getServerReverseDns`, `getServersWelcomeEmail`, `serversCancel`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number.

try {
    $result = $apiInstance->getServerInfo($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->getServerInfo: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number. |

### Return type

[**\Interserver\\MyAdmin\Model\Server**](../Model/Server.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getServerInvoices()`

```php
getServerInvoices($id): \Interserver\\MyAdmin\Model\ChargeInvoiceRows
```

List billing invoices (charges + payments) tied to one dedicated server

Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: `id` (integer server_id from `getServerList`). No body. Inherits from `MyAdmin\\Api\\Billing\\InvoicesList` with module=servers. Returns: `ChargeInvoiceRows` array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if `id` not owned by the caller; 401 unauth. Sibling ops: `getServerInfo` (current service state), `serversCancel` (cancel), `getBillingInvoice` (single invoice by invoice id), `getVpsInvoices`/`getDomainInvoices` for other modules, `getServersWelcomeEmail` to resend setup info.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number

try {
    $result = $apiInstance->getServerInvoices($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->getServerInvoices: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number |

### Return type

[**\Interserver\\MyAdmin\Model\ChargeInvoiceRows**](../Model/ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getServerList()`

```php
getServerList(): \Interserver\\MyAdmin\Model\ServerRow[]
```

List all dedicated servers owned by the authenticated customer

Use to enumerate physical bare-metal dedicated servers on the calling account. No params, no body. Filters `servers` by session `account_id`. Returns: array of `{ server_id, account_lid, server_hostname, server_status }`. Use `server_id` with `getServerInfo` for full hardware/network/IPMI details, `getServerInvoices` for billing, or `serverIpmiPowerGet` for chassis power state. Errors: 401 if not authenticated; empty array if account owns no servers. Sibling ops: `getServerInfo` (details), `getVpsList` (virtual instead of physical hardware), `getMPServers` (purchasable inventory, not owned). For IPMI status across many servers in one call, prefer `serverBulkIpmiPowerGet`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getServerList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->getServerList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Interserver\\MyAdmin\Model\ServerRow[]**](../Model/ServerRow.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getServerReverseDns()`

```php
getServerReverseDns($id): \Interserver\\MyAdmin\Model\ReverseDnsEntries
```

List current reverse-DNS (PTR) records for a dedicated server's IPs

Use to read the existing PTR/rDNS hostnames assigned to each public IP in the server's VLANs — typically before calling `postServerReverseDns` to update them. Path param: `id` (integer server_id). No body. Walks `networkInfo.vlans`, expands each network to usable host IPs (handles /31 and /32 edge cases), and resolves each via `get_hostname()`. Returns: `{ ips: { '<ipv4>': '<ptr_or_empty_string>', ... } }`. Empty string indicates no PTR set. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: `postServerReverseDns` (update PTRs), `getServerInfo` (full network), `getVpsReverseDns` for VPS, `getDomainNameservers` / DNS endpoints for forward records. Note rDNS propagation is delegated to the in-addr.arpa zone — changes are not always instant.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number

try {
    $result = $apiInstance->getServerReverseDns($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->getServerReverseDns: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number |

### Return type

[**\Interserver\\MyAdmin\Model\ReverseDnsEntries**](../Model/ReverseDnsEntries.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getServersWelcomeEmail()`

```php
getServersWelcomeEmail($id): \Interserver\\MyAdmin\Model\SuccessTextResponse
```

Resend the dedicated server welcome email with setup credentials

Use when the customer asks for the original setup/login info to be re-sent (root password, IPs, control-panel URL). Path param: `id` (integer server_id, must be `active`). No body. Invokes `server_welcome_email($id)` which re-sends the welcome message to the account's email. Returns: `{ text:'Welcome Email has been resent.' }`. Errors: 404 if `id` not owned by caller; 409 if service not active (cancelled/pending/suspended); 401 unauth. Caveat: re-sending is rate-sensitive; do not call repeatedly in a loop. The email may contain root credentials — confirm intent before triggering. Sibling ops: `getServerInfo` (status check), `getServerInvoices`, `getVpsWelcomeEmail` for VPS, `getDomainsWelcomeEmail` for domains.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number

try {
    $result = $apiInstance->getServersWelcomeEmail($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->getServersWelcomeEmail: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number |

### Return type

[**\Interserver\\MyAdmin\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `placeBuyNowServer()`

```php
placeBuyNowServer($placeBuyNowServerRequest): \Interserver\\MyAdmin\Model\ServersBuyNowResponse
```

Place a Rapid Deploy / coupon dedicated server order; creates real invoice

Step 2 of the Rapid Deploy / coupon order flow. Commits a marketplace asset OR coupon-based dedicated server order. Inserts the `servers` row, creates a `Repeat_Invoice` plus the first `invoices` row, marks the asset `MarketPlace-Incart` (or decrements `server_coupons.in_stock`), then emails customer + admin. **Real billable order — confirm intent first.** Sibling ops: `buyItNowServerOrder` (catalog), `getServerInfo` (poll provisioning), `getServerInvoices` (billing), `addServer` (custom build alternative).  **Query (one required, same as `buyItNowServerOrder`):** - `a` (integer) — asset_id. - `c` (string) — `server_coupons.name`.  **Body fields:** - `hostname` (string, required) — valid FQDN; validated by `valid_hostname`. - `enablepassword` (boolean, optional, default `false`) — when true the client must supply `rootPassword`; otherwise a secure password is generated server-side via `generate_password()`. - `rootPassword` (string, required when `enablepassword=true`) — must be ≥8 chars with at least one uppercase, lowercase, digit, and special character (`valid_password`). - `os`, `bandwidth`, `ips`, `cp`, `raid` (integer, optional) — option ids from `buyItNowServerOrder`; defaults `30` / `10` / `9` / `1` / `0` applied when missing. - `comments` (string, optional) — appended to the order comment.  **Returns:** `201 { success: true, text: 'Server order is placed.', service_id, invoice_id }`.  **Auth:** Session/API key.  **Errors:** - `400` — `'Server Hostname is missing.'` / `'Invalid Hostname!'` / `'Server Password is missing.'` / password complexity message. - `409` — `'Server already sold!'` / `'Server Out of stock.'` - `401` — unauthenticated.  **Side effects:** inserts `servers` row, creates `repeat_invoices` + `invoices` rows, updates `assets.status` or `server_coupons.in_stock`, queues admin + customer welcome emails.  **Related calls:** - **Prerequisite:** `buyItNowServerOrder`. - **Next:** `getBillingInvoice` + `initiatePayment` to pay, then poll `getServerInfo` for provisioning state. - **Custom build alternative:** `addServer`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$placeBuyNowServerRequest = new \Interserver\\MyAdmin\Model\PlaceBuyNowServerRequest(); // \Interserver\\MyAdmin\Model\PlaceBuyNowServerRequest

try {
    $result = $apiInstance->placeBuyNowServer($placeBuyNowServerRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->placeBuyNowServer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeBuyNowServerRequest** | [**\Interserver\\MyAdmin\Model\PlaceBuyNowServerRequest**](../Model/PlaceBuyNowServerRequest.md)|  | [optional]

### Return type

[**\Interserver\\MyAdmin\Model\ServersBuyNowResponse**](../Model/ServersBuyNowResponse.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postServerReverseDns()`

```php
postServerReverseDns($id, $reverseDnsEntries): \Interserver\\MyAdmin\Model\TextResponse
```

Update reverse-DNS (PTR) hostnames on a dedicated server's IPs

Use to set or remove PTR records for the server's public IPs. Path param: `id` (server_id). Body: `ips` (object mapping `'<ipv4>'` to desired hostname; empty string removes the PTR). Only IPs that already exist on the server's VLANs and whose hostname differs from current are updated; each diff calls `reverse_dns($ip, $host, 'set_reverse'|'remove_reverse')`. Returns: `{ message, success:bool }`. `success:false` with 'No valid IPs were passed or there were no changes' when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream. Sibling ops: `getServerReverseDns` (read first), `getServerInfo`, VPS counterpart `postVpsReverseDns`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number
$reverseDnsEntries = new \Interserver\\MyAdmin\Model\ReverseDnsEntries(); // \Interserver\\MyAdmin\Model\ReverseDnsEntries

try {
    $result = $apiInstance->postServerReverseDns($id, $reverseDnsEntries);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->postServerReverseDns: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number |
 **reverseDnsEntries** | [**\Interserver\\MyAdmin\Model\ReverseDnsEntries**](../Model/ReverseDnsEntries.md)|  |

### Return type

[**\Interserver\\MyAdmin\Model\TextResponse**](../Model/TextResponse.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: `application/json`, `multipart/form-data`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `serverBulkIpmiPowerGet()`

```php
serverBulkIpmiPowerGet($ids): \Interserver\\MyAdmin\Model\ServerBulkIpmiPowerResponse
```

Read IPMI chassis power status for many dedicated servers in one call

Use when you need power status for several owned servers at once (dashboards, mass health checks). Each server is queried independently; per-server failures (invalid id, inactive service, no asset, BMC error) are reported in the same response without aborting the batch. Read-only — does NOT change power state. Query: `ids` (required) — comma-separated string `?ids=2313,2314,2315` OR repeated `ids[]` array. Duplicates de-duped; non-positive ints become per-row errors. Returns: `{ results: [ { id, asset?, text|error } ] }`. Errors: 400 'No server IDs provided.' if `ids` empty/missing; 401 unauth. Sibling ops: `serverIpmiPowerGet` (single-server equivalent), `serverIpmiPowerPost` (DESTRUCTIVE — change power; no bulk equivalent — call per server), `getServerList` (discover ids).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$ids = 2313,2314,2315; // string | Comma-separated list of Server IDs to query (e.g. `2313,2314,2315`). May also be passed as repeated `ids[]` query parameters.

try {
    $result = $apiInstance->serverBulkIpmiPowerGet($ids);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->serverBulkIpmiPowerGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **string**| Comma-separated list of Server IDs to query (e.g. &#x60;2313,2314,2315&#x60;). May also be passed as repeated &#x60;ids[]&#x60; query parameters. |

### Return type

[**\Interserver\\MyAdmin\Model\ServerBulkIpmiPowerResponse**](../Model/ServerBulkIpmiPowerResponse.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `serverIpmiLiveGet()`

```php
serverIpmiLiveGet($id): \Interserver\\MyAdmin\Model\ServerIpmiLiveInfo
```

Read current IPMI Live whitelist + KVM gateway URL for a dedicated server

Reads the active IPMI Live session for a dedicated server — the temporary whitelisted public IP, the customer-side IPMI gateway URL, and the IPMI client (read-only) credentials so the customer can open the KVM/console. Looks up the asset's IPMI IP, the location's IPMI group, and any active `ipmi_ips` lease (3-hour TTL). Sibling ops: `serverIpmiLivePost` (allocate whitelist slot), `serverIpmiPowerGet` / `serverIpmiPowerPost` (chassis power).  **Path:** `id` (integer, required) — server_id from `getServerList`.  **Body / query:** None. Optionally pass `asset` (asset_id) to target a specific asset; default is first asset.  **Returns:** when an active lease exists `{ text (html), public_ip, allowed_ip, client_username, client_password }`. When no lease yet: `{ text: 'Setup not yet completed' }` — then call `serverIpmiLivePost` to allocate a slot.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'` when the asset/location is not configured for IPMI Live.  **Caveat:** returns `client_password` — never log/echo verbatim.  **Related calls:** - **Allocate:** `serverIpmiLivePost`. - **Chassis power:** `serverIpmiPowerGet`, `serverIpmiPowerPost`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number

try {
    $result = $apiInstance->serverIpmiLiveGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->serverIpmiLiveGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number |

### Return type

[**\Interserver\\MyAdmin\Model\ServerIpmiLiveInfo**](../Model/ServerIpmiLiveInfo.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `serverIpmiLivePost()`

```php
serverIpmiLivePost($id, $ip, $asset): \Interserver\\MyAdmin\Model\ServerIpmiLiveInfo
```

Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)

Allocates / refreshes an IPMI Live whitelist slot so the customer's specified IP can reach the BMC's KVM/console for 3 hours. Picks a free `ipmi_ips` row for the location's `ipmi_group`, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via `ipmi_live_setup()`. Sibling ops: `serverIpmiLiveGet` (read current lease), `serverIpmiPowerPost` (DESTRUCTIVE — chassis power).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `ip` (string, required) — public IPv4 to whitelist. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text (html), public_ip, allowed_ip, client_username, client_password }` for KVM login.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'An Invalid IP was passed.'`, `'No Live IPs are currently free for use with the IPMI Gateway. Please wait <duration> for the next IP to free up.'`, `'There was an error communicating with the IPMI Management server'`, `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'`.  **Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.  **Related calls:** - **Read current lease:** `serverIpmiLiveGet`. - **Power control:** `serverIpmiPowerPost`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number
$ip = 'ip_example'; // string | Your IP Address you wish to connect to the IPMI system from.
$asset = 56; // int | Asset ID

try {
    $result = $apiInstance->serverIpmiLivePost($id, $ip, $asset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->serverIpmiLivePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number |
 **ip** | **string**| Your IP Address you wish to connect to the IPMI system from. |
 **asset** | **int**| Asset ID | [optional]

### Return type

[**\Interserver\\MyAdmin\Model\ServerIpmiLiveInfo**](../Model/ServerIpmiLiveInfo.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: `multipart/form-data`, `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `serverIpmiPowerGet()`

```php
serverIpmiPowerGet($id): \Interserver\\MyAdmin\Model\TextResponse
```

Read IPMI chassis power status for a dedicated server (single)

Use to check whether a server's chassis is currently `on`/`off` via IPMI before issuing a power action. Path param: `id` (integer server_id). Optional body `asset` (asset_id — defaults to first asset). Issues `ipmitool power status` against the asset's `ipmi_ip` using its location IPMI group/credentials. Returns: `{ text:'Chassis Power is on' }` (or 'off'). Errors: 404 if `id` not owned by caller; 409 if service not active; 'There was an error sending the IPMI command' if BMC unreachable. Caveat: BMCs occasionally rate-limit — back off on repeated errors. Sibling ops: `serverBulkIpmiPowerGet` (preferred when polling many servers — single round-trip), `serverIpmiPowerPost` (DESTRUCTIVE — change power), `getServerInfo` (full state), `serverIpmiLiveGet` (IPMI Live KVM).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number

try {
    $result = $apiInstance->serverIpmiPowerGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->serverIpmiPowerGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number |

### Return type

[**\Interserver\\MyAdmin\Model\TextResponse**](../Model/TextResponse.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `serverIpmiPowerPost()`

```php
serverIpmiPowerPost($id, $action, $asset): \Interserver\\MyAdmin\Model\TextResponse
```

DESTRUCTIVE — change chassis power state on a bare-metal server

Sends an IPMI chassis power command (`on`, `off`, `cycle`, `reset`, `soft`) to a customer's physical dedicated server. **DESTRUCTIVE on running hardware:** `off` / `cycle` / `reset` are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. `soft` requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: `serverIpmiPowerGet` (read first), `serverBulkIpmiPowerGet` (status only), `serverIpmiLivePost` (KVM access).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `action` (string, required) — one of `on` / `off` / `cycle` / `reset` / `soft`. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text: 'Power command sent. Response: <ipmi output>' }`.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `422` / inline error text — `Invalid Action` when `action` is not in the allowed set. - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'There was an error sending the IPMI command.'` when BMC is unreachable or rate-limiting.  **Related calls:** - **Status (single / bulk):** `serverIpmiPowerGet`, `serverBulkIpmiPowerGet`. - **KVM console:** `serverIpmiLivePost`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number
$action = 'action_example'; // string | The power action to send to the ipmi controller.
$asset = 56; // int | The Asset ID

try {
    $result = $apiInstance->serverIpmiPowerPost($id, $action, $asset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->serverIpmiPowerPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number |
 **action** | **string**| The power action to send to the ipmi controller. |
 **asset** | **int**| The Asset ID | [optional]

### Return type

[**\Interserver\\MyAdmin\Model\TextResponse**](../Model/TextResponse.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: `multipart/form-data`, `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `serversCancel()`

```php
serversCancel($id): \Interserver\\MyAdmin\Model\ServersCancel200Response
```

Cancel a dedicated server service at the end of the current billing cycle

Submits a cancellation request for a dedicated server. The server is deprovisioned and recurring billing stops at the end of the current billing cycle (not an immediate refund). Path param: `id` (integer server_id, from `getServerList`). No body. Caveat: billing-affecting action — always confirm with the user. Hardware-attached data may be wiped on deprovisioning. Returns: `{ success:bool, text:'Servers is canceled.' }`. Errors: 404 if `id` not owned by caller; 409 if already cancelled or non-active; 401 unauth. Sibling ops: `getServerInfo` (current status), `getServerInvoices` (outstanding charges), VPS counterpart `VPSCancel`. To re-order after cancel use `addServer` or `placeBuyNowServer`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Server ID number

try {
    $result = $apiInstance->serversCancel($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->serversCancel: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Server ID number |

### Return type

[**\Interserver\\MyAdmin\Model\ServersCancel200Response**](../Model/ServersCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateServerInfo()`

```php
updateServerInfo($id): \Interserver\\MyAdmin\Model\SuccessTextResponse
```

Update settings on a dedicated server order (shares handler with view)

Use to modify metadata on an existing dedicated server order. Path param: `id` (integer server_id). Currently this method shares the same handler as `getServerInfo` (`View::go()`) — no dedicated update fields are processed; treat it as deprecated/no-op pending field-specific endpoints. For hostname, password, or rDNS changes use the dedicated ops below. Returns: same payload shape as `getServerInfo`. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: prefer `postServerReverseDns` (rDNS), `serverIpmiPowerPost` (power), `serverIpmiLivePost` (IPMI access), `serversCancel` (cancel). For new orders use `addServer` or `placeBuyNowServer`. View-only: `getServerInfo`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\ServersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Server ID number.

try {
    $result = $apiInstance->updateServerInfo($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServersApi->updateServerInfo: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Server ID number. |

### Return type

[**\Interserver\\MyAdmin\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

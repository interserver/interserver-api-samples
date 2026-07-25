# InterserverApiClient\BackupsApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBackup**](BackupsApi.md#addbackup) | **POST** /backups/order | Place a new off-site backup storage order and generate the invoice
[**cancelBackup**](BackupsApi.md#cancelbackup) | **DELETE** /backups/{id} | Cancel an off-site backup storage subscription
[**getBackupInfo**](BackupsApi.md#getbackupinfo) | **GET** /backups/{id} | Get details of a specific off-site backup storage service
[**getBackupInvoices**](BackupsApi.md#getbackupinvoices) | **GET** /backups/{id}/invoices | List invoices for a single backup-storage subscription
[**getBackupLogin**](BackupsApi.md#getbackuplogin) | **GET** /backups/{id}/login | Open a single sign-on session URL for the backup storage panel
[**getBackupsList**](BackupsApi.md#getbackupslist) | **GET** /backups | List off-site backup storage subscriptions on the authenticated account
[**getBackupsWelcomeEmail**](BackupsApi.md#getbackupswelcomeemail) | **GET** /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service
[**getNewBackup**](BackupsApi.md#getnewbackup) | **GET** /backups/order | Get backup-storage order form metadata and pricing tiers
[**updateBackupInfo**](BackupsApi.md#updatebackupinfo) | **POST** /backups/{id} | Update stored metadata for a backup-storage subscription
[**validateBackupOrder**](BackupsApi.md#validatebackuporder) | **PUT** /backups/order | Validate a backup-storage order and preview pricing without charging

# **addBackup**
> \InterserverApiClient\Model\BackupOrderPostResponse addBackup($validate_only, $service_type, $coupon)

Place a new off-site backup storage order and generate the invoice

Step 3 of the backup-storage order flow. Revalidates via `validate_buy_storage()`, then calls `place_buy_storage()` which creates a `backups` service row, a `repeat_invoices` recurring entry, and the first `invoices` row. **Real billable order — call `validateBackupOrder` first.** Service is provisioned only after the invoice is paid. Sibling ops: `getNewBackup` (catalog), `validateBackupOrder` (quote), `getBackupInvoices` (billing history), `initiatePayment` (settle).  **Body fields** (JSON or multipart): - `serviceType` (integer, required) — `services_id` from `getNewBackup`. - `coupon` (string, optional) — coupon code. - `period` (integer, optional, default `1`) — billing months. - `comment` (string, optional) — saved on the order row.  **Returns** (on success): `{ continue: true, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }` — feed `real_iids` into `initiatePayment`. On validation failure: `{ continue: false, errors: [...] }` with HTTP 200.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. - `422` inside `errors[]` — coupon/plan/duplicate-hostname validation. - Explicit error text when no backend storage server is available for assignment.  **Side effects:** new rows in `backups`, `repeat_invoices`, `invoices`; queued provisioning kicks off only after payment.  **Related calls:** - **Prerequisite:** `validateBackupOrder`. - **Pay:** `getBillingInvoice` → `initiatePayment`. - **Poll status:** `getBackupInfo` (until `backup_status='active'`).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$validate_only = true; // bool | 
$service_type = 56; // int | 
$coupon = "coupon_example"; // string | 

try {
    $result = $apiInstance->addBackup($validate_only, $service_type, $coupon);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->addBackup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validate_only** | **bool**|  |
 **service_type** | **int**|  |
 **coupon** | **string**|  |

### Return type

[**\InterserverApiClient\Model\BackupOrderPostResponse**](../Model/BackupOrderPostResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **addBackup**
> \InterserverApiClient\Model\BackupOrderPostResponse addBackup($body)

Place a new off-site backup storage order and generate the invoice

Step 3 of the backup-storage order flow. Revalidates via `validate_buy_storage()`, then calls `place_buy_storage()` which creates a `backups` service row, a `repeat_invoices` recurring entry, and the first `invoices` row. **Real billable order — call `validateBackupOrder` first.** Service is provisioned only after the invoice is paid. Sibling ops: `getNewBackup` (catalog), `validateBackupOrder` (quote), `getBackupInvoices` (billing history), `initiatePayment` (settle).  **Body fields** (JSON or multipart): - `serviceType` (integer, required) — `services_id` from `getNewBackup`. - `coupon` (string, optional) — coupon code. - `period` (integer, optional, default `1`) — billing months. - `comment` (string, optional) — saved on the order row.  **Returns** (on success): `{ continue: true, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }` — feed `real_iids` into `initiatePayment`. On validation failure: `{ continue: false, errors: [...] }` with HTTP 200.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. - `422` inside `errors[]` — coupon/plan/duplicate-hostname validation. - Explicit error text when no backend storage server is available for assignment.  **Side effects:** new rows in `backups`, `repeat_invoices`, `invoices`; queued provisioning kicks off only after payment.  **Related calls:** - **Prerequisite:** `validateBackupOrder`. - **Pay:** `getBillingInvoice` → `initiatePayment`. - **Poll status:** `getBackupInfo` (until `backup_status='active'`).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\BackupOrderPutRequest(); // \InterserverApiClient\Model\BackupOrderPutRequest | 

try {
    $result = $apiInstance->addBackup($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->addBackup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\BackupOrderPutRequest**](../Model/BackupOrderPutRequest.md)|  |

### Return type

[**\InterserverApiClient\Model\BackupOrderPostResponse**](../Model/BackupOrderPostResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **cancelBackup**
> \InterserverApiClient\Model\InlineResponse2002 cancelBackup($id)

Cancel an off-site backup storage subscription

DESTRUCTIVE. Use to terminate a backup-storage subscription. Delegates to `CancelService::go($id)` with module `backups`, which marks the service for cancellation and stops future recurring billing; data on the storage backend may become inaccessible at end of cycle. Path param: `id` from `getBackupsList`. No body. Returns `BackupsCancelResponse`. Caveats: irreversible — a new order via `addBackup` is required to restore service, with a new IP/username and no migration of prior data. Does NOT delete VPS/QS/webhosting in-place snapshots (those live under their own tags). Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller; HTTP 409 if the service is already cancelled or pending cancellation. Siblings: `addBackup`, `getBackupInfo`, `getBackupInvoices`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.

try {
    $result = $apiInstance->cancelBackup($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->cancelBackup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. |

### Return type

[**\InterserverApiClient\Model\InlineResponse2002**](../Model/InlineResponse2002.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBackupInfo**
> \InterserverApiClient\Model\Backup getBackupInfo($id)

Get details of a specific off-site backup storage service

Use to fetch the full management view for one backup-storage subscription. Path param: `id` (backup service ID from `getBackupsList`). No body. Returns `serviceInfo` (with `backup_username`, `backup_ip`, `backup_status`, `backup_quota`, `backup_type`, `backup_invoice`), plus `billingDetails`, `extraInfoTables`, `package`, `custCurrency`, and `client_links` (rewritten to surface the link target rather than the raw queue URL). `admin_links`, internal `settings`, and `csrf` are stripped. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` does not belong to the caller (cross-account access blocked by `get_service`). Siblings: `getBackupLogin` (open storage panel session), `getBackupInvoices`, `getBackupsWelcomeEmail`, `cancelBackup`, `updateBackupInfo`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.

try {
    $result = $apiInstance->getBackupInfo($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->getBackupInfo: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. |

### Return type

[**\InterserverApiClient\Model\Backup**](../Model/Backup.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBackupInvoices**
> \InterserverApiClient\Model\ChargeInvoiceRows getBackupInvoices($id)

List invoices for a single backup-storage subscription

Use to retrieve all invoices tied to one off-site backup storage service — useful for confirming billing status, locating an unpaid invoice to pay, or reconciling renewals. Path param: `id` from `getBackupsList`. Delegates to the shared `InvoicesList::go()` handler with module `backups`. No body. Returns `ChargeInvoiceRows` (array of invoice rows with `invoices_id`, status, amount, dates). Feed `invoices_id` into `getBillingInvoice` for full detail or `/billing/pay/{method}/{invoices}` to settle an unpaid invoice. For the account-wide invoice list use the Billing tag instead. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller. Siblings: `getBackupInfo`, `addBackup`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.

try {
    $result = $apiInstance->getBackupInvoices($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->getBackupInvoices: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. |

### Return type

[**\InterserverApiClient\Model\ChargeInvoiceRows**](../Model/ChargeInvoiceRows.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBackupLogin**
> \InterserverApiClient\Model\BackupLoginResponse getBackupLogin($id)

Open a single sign-on session URL for the backup storage panel

Use to drop the customer straight into the off-site backup storage management panel without a separate login prompt. Calls `get_storage_session($id)` to mint a one-shot session URL; treat the URL as short-lived and credentials-equivalent — do not log or share. Path param: `id` from `getBackupsList`. No body. Returns `BackupLoginResponse` (`success`, session URL/token, optional connection hints). On `success=false` the handler returns `json_error(text)` (HTTP 400) with the upstream reason. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller; backend errors when the storage server is unreachable. Siblings: `getBackupInfo` (SFTP `backup_username`/`backup_ip` for direct connections), `getBackupsWelcomeEmail` (resend setup credentials).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.

try {
    $result = $apiInstance->getBackupLogin($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->getBackupLogin: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. |

### Return type

[**\InterserverApiClient\Model\BackupLoginResponse**](../Model/BackupLoginResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBackupsList**
> \InterserverApiClient\Model\BackupRow[] getBackupsList()

List off-site backup storage subscriptions on the authenticated account

Use when enumerating all off-site backup storage services (SFTP-style remote storage subscriptions) on the authenticated customer's account. NOT for VPS/QS/webhosting in-place snapshots — those live under their own tags (`getVpsBackups`, `getQsBackups`, `getWebsitesBackups`). No query params, no body. Returns an array of rows; each row carries `backup_id`, `backup_name`, `backup_username`, `backup_status`, `services_name` (plan), and `backup_cost` (recurring price from `repeat_invoices`). Use `backup_id` as the path `{id}` for `getBackupInfo`, `getBackupLogin`, `getBackupInvoices`, `getBackupsWelcomeEmail`, `cancelBackup`. Errors: HTTP 401 if unauthenticated. Empty array when the customer has no backup services. Siblings: `getBackupInfo`, `getNewBackup`, `addBackup`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getBackupsList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->getBackupsList: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\BackupRow[]**](../Model/BackupRow.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBackupsWelcomeEmail**
> \InterserverApiClient\Model\SuccessTextResponse getBackupsWelcomeEmail($id)

Resend the welcome email for an off-site backup storage service

Use when the original welcome email was lost or never arrived. Resends connection credentials (SFTP host, username, quota) and setup instructions to the account email by invoking the module's `backup_welcome_email($id)` helper. Path param: `id` from `getBackupsList`. No body. Returns `SuccessTextResponse` with `text='Welcome Email has been resent.'`. Caveats: only works while the service is `active`; cancelled/pending services will return 409. Email is sent to the customer-of-record on file — there is no override recipient parameter. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller (`Invalid Service Passed`); HTTP 409 if `backup_status` is not `active` (`Service is not active`). Siblings: `getBackupLogin`, `getBackupInfo`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.

try {
    $result = $apiInstance->getBackupsWelcomeEmail($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->getBackupsWelcomeEmail: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getNewBackup**
> \InterserverApiClient\Model\BackupsOrder getNewBackup()

Get backup-storage order form metadata and pricing tiers

Use before placing an off-site backup storage order to fetch the available plans, their service-type IDs, and per-tier pricing needed to render an order form. No params, no body. Returns `{ packageCosts, serviceTypes }` — `packageCosts` is a map of `services_id` → recurring cost (from `services` where `services_module='backups'` and `services_buyable=1`); `serviceTypes` is the dispatcher output of `run_event('get_service_types', true, 'backups')` describing each tier. Pass the chosen `services_id` as `serviceType` to `validateBackupOrder` (PUT) for a price preview, then to `addBackup` (POST) to commit. Errors: HTTP 401 if unauthenticated. Siblings: `validateBackupOrder`, `addBackup`, `getBackupsList`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getNewBackup();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->getNewBackup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\BackupsOrder**](../Model/BackupsOrder.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateBackupInfo**
> \InterserverApiClient\Model\SuccessTextResponse updateBackupInfo($id)

Update stored metadata for a backup-storage subscription

Use to update non-billing metadata (e.g. stored credentials, comment, hostname) on an existing off-site backup storage service. Path param: `id` from `getBackupsList`. Body fields are forwarded to the same `View::go()` handler as the GET; consult the order form for accepted keys. Returns the standard `SuccessTextResponse`. Caveats: this endpoint does NOT change the plan, quota, or billing — those require cancel + reorder via `cancelBackup` and `addBackup`. It also does NOT trigger any backend SFTP credential rotation. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller; HTTP 422 on invalid input. Siblings: `getBackupInfo`, `cancelBackup`, `getBackupLogin`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.

try {
    $result = $apiInstance->updateBackupInfo($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->updateBackupInfo: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **validateBackupOrder**
> \InterserverApiClient\Model\BackupOrderPutResponse validateBackupOrder($validate_only, $service_type, $coupon)

Validate a backup-storage order and preview pricing without charging

Use to dry-run a backup order — runs `validate_buy_storage()` to compute final price, apply any coupon, and surface validation errors before the customer commits. No invoice is created and no service is provisioned. Body (JSON or multipart): `serviceType` (services_id from `getNewBackup`), optional `coupon`, `period` (months, default 1), `comment`. Returns `{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, hostname, password, coupon, couponCode }`. Use the response to render a confirmation screen, then call `addBackup` (POST same path) to place the order. Errors: HTTP 401 unauthenticated; HTTP 422 surfaced inside `errors[]` (invalid coupon, ineligible plan, duplicate hostname). Siblings: `addBackup`, `getNewBackup`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$validate_only = true; // bool | 
$service_type = 56; // int | 
$coupon = "coupon_example"; // string | 

try {
    $result = $apiInstance->validateBackupOrder($validate_only, $service_type, $coupon);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->validateBackupOrder: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validate_only** | **bool**|  |
 **service_type** | **int**|  |
 **coupon** | **string**|  |

### Return type

[**\InterserverApiClient\Model\BackupOrderPutResponse**](../Model/BackupOrderPutResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **validateBackupOrder**
> \InterserverApiClient\Model\BackupOrderPutResponse validateBackupOrder($body)

Validate a backup-storage order and preview pricing without charging

Use to dry-run a backup order — runs `validate_buy_storage()` to compute final price, apply any coupon, and surface validation errors before the customer commits. No invoice is created and no service is provisioned. Body (JSON or multipart): `serviceType` (services_id from `getNewBackup`), optional `coupon`, `period` (months, default 1), `comment`. Returns `{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, hostname, password, coupon, couponCode }`. Use the response to render a confirmation screen, then call `addBackup` (POST same path) to place the order. Errors: HTTP 401 unauthenticated; HTTP 422 surfaced inside `errors[]` (invalid coupon, ineligible plan, duplicate hostname). Siblings: `addBackup`, `getNewBackup`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\BackupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\BackupOrderPutRequest(); // \InterserverApiClient\Model\BackupOrderPutRequest | 

try {
    $result = $apiInstance->validateBackupOrder($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BackupsApi->validateBackupOrder: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\BackupOrderPutRequest**](../Model/BackupOrderPutRequest.md)|  |

### Return type

[**\InterserverApiClient\Model\BackupOrderPutResponse**](../Model/BackupOrderPutResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


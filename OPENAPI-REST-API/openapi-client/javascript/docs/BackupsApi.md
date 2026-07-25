# InterserverApiClient.BackupsApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBackup**](BackupsApi.md#addBackup) | **POST** /backups/order | Place a new off-site backup storage order and generate the invoice
[**cancelBackup**](BackupsApi.md#cancelBackup) | **DELETE** /backups/{id} | Cancel an off-site backup storage subscription
[**getBackupInfo**](BackupsApi.md#getBackupInfo) | **GET** /backups/{id} | Get details of a specific off-site backup storage service
[**getBackupInvoices**](BackupsApi.md#getBackupInvoices) | **GET** /backups/{id}/invoices | List invoices for a single backup-storage subscription
[**getBackupLogin**](BackupsApi.md#getBackupLogin) | **GET** /backups/{id}/login | Open a single sign-on session URL for the backup storage panel
[**getBackupsList**](BackupsApi.md#getBackupsList) | **GET** /backups | List off-site backup storage subscriptions on the authenticated account
[**getBackupsWelcomeEmail**](BackupsApi.md#getBackupsWelcomeEmail) | **GET** /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service
[**getNewBackup**](BackupsApi.md#getNewBackup) | **GET** /backups/order | Get backup-storage order form metadata and pricing tiers
[**updateBackupInfo**](BackupsApi.md#updateBackupInfo) | **POST** /backups/{id} | Update stored metadata for a backup-storage subscription
[**validateBackupOrder**](BackupsApi.md#validateBackupOrder) | **PUT** /backups/order | Validate a backup-storage order and preview pricing without charging



## addBackup

> BackupOrderPostResponse addBackup(opts)

Place a new off-site backup storage order and generate the invoice

Step 3 of the backup-storage order flow. Revalidates via &#x60;validate_buy_storage()&#x60;, then calls &#x60;place_buy_storage()&#x60; which creates a &#x60;backups&#x60; service row, a &#x60;repeat_invoices&#x60; recurring entry, and the first &#x60;invoices&#x60; row. **Real billable order — call &#x60;validateBackupOrder&#x60; first.** Service is provisioned only after the invoice is paid. Sibling ops: &#x60;getNewBackup&#x60; (catalog), &#x60;validateBackupOrder&#x60; (quote), &#x60;getBackupInvoices&#x60; (billing history), &#x60;initiatePayment&#x60; (settle).  **Body fields** (JSON or multipart): - &#x60;serviceType&#x60; (integer, required) — &#x60;services_id&#x60; from &#x60;getNewBackup&#x60;. - &#x60;coupon&#x60; (string, optional) — coupon code. - &#x60;period&#x60; (integer, optional, default &#x60;1&#x60;) — billing months. - &#x60;comment&#x60; (string, optional) — saved on the order row.  **Returns** (on success): &#x60;{ continue: true, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }&#x60; — feed &#x60;real_iids&#x60; into &#x60;initiatePayment&#x60;. On validation failure: &#x60;{ continue: false, errors: [...] }&#x60; with HTTP 200.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;422&#x60; inside &#x60;errors[]&#x60; — coupon/plan/duplicate-hostname validation. - Explicit error text when no backend storage server is available for assignment.  **Side effects:** new rows in &#x60;backups&#x60;, &#x60;repeat_invoices&#x60;, &#x60;invoices&#x60;; queued provisioning kicks off only after payment.  **Related calls:** - **Prerequisite:** &#x60;validateBackupOrder&#x60;. - **Pay:** &#x60;getBillingInvoice&#x60; → &#x60;initiatePayment&#x60;. - **Poll status:** &#x60;getBackupInfo&#x60; (until &#x60;backup_status&#x3D;&#39;active&#39;&#x60;). 

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
let opts = {
  'validateOnly': true, // Boolean | 
  'serviceType': 56, // Number | 
  'coupon': "coupon_example" // String | 
};
apiInstance.addBackup(opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateOnly** | **Boolean**|  | [optional] 
 **serviceType** | **Number**|  | [optional] 
 **coupon** | **String**|  | [optional] 

### Return type

[**BackupOrderPostResponse**](BackupOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## cancelBackup

> CancelBackup200Response cancelBackup(id)

Cancel an off-site backup storage subscription

DESTRUCTIVE. Use to terminate a backup-storage subscription. Delegates to &#x60;CancelService::go($id)&#x60; with module &#x60;backups&#x60;, which marks the service for cancellation and stops future recurring billing; data on the storage backend may become inaccessible at end of cycle. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. No body. Returns &#x60;BackupsCancelResponse&#x60;. Caveats: irreversible — a new order via &#x60;addBackup&#x60; is required to restore service, with a new IP/username and no migration of prior data. Does NOT delete VPS/QS/webhosting in-place snapshots (those live under their own tags). Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller; HTTP 409 if the service is already cancelled or pending cancellation. Siblings: &#x60;addBackup&#x60;, &#x60;getBackupInfo&#x60;, &#x60;getBackupInvoices&#x60;.

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
let id = 56; // Number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
apiInstance.cancelBackup(id).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | 

### Return type

[**CancelBackup200Response**](CancelBackup200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getBackupInfo

> Backup getBackupInfo(id)

Get details of a specific off-site backup storage service

Use to fetch the full management view for one backup-storage subscription. Path param: &#x60;id&#x60; (backup service ID from &#x60;getBackupsList&#x60;). No body. Returns &#x60;serviceInfo&#x60; (with &#x60;backup_username&#x60;, &#x60;backup_ip&#x60;, &#x60;backup_status&#x60;, &#x60;backup_quota&#x60;, &#x60;backup_type&#x60;, &#x60;backup_invoice&#x60;), plus &#x60;billingDetails&#x60;, &#x60;extraInfoTables&#x60;, &#x60;package&#x60;, &#x60;custCurrency&#x60;, and &#x60;client_links&#x60; (rewritten to surface the link target rather than the raw queue URL). &#x60;admin_links&#x60;, internal &#x60;settings&#x60;, and &#x60;csrf&#x60; are stripped. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; does not belong to the caller (cross-account access blocked by &#x60;get_service&#x60;). Siblings: &#x60;getBackupLogin&#x60; (open storage panel session), &#x60;getBackupInvoices&#x60;, &#x60;getBackupsWelcomeEmail&#x60;, &#x60;cancelBackup&#x60;, &#x60;updateBackupInfo&#x60;.

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
let id = 56; // Number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
apiInstance.getBackupInfo(id).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | 

### Return type

[**Backup**](Backup.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getBackupInvoices

> ChargeInvoiceRows getBackupInvoices(id)

List invoices for a single backup-storage subscription

Use to retrieve all invoices tied to one off-site backup storage service — useful for confirming billing status, locating an unpaid invoice to pay, or reconciling renewals. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. Delegates to the shared &#x60;InvoicesList::go()&#x60; handler with module &#x60;backups&#x60;. No body. Returns &#x60;ChargeInvoiceRows&#x60; (array of invoice rows with &#x60;invoices_id&#x60;, status, amount, dates). Feed &#x60;invoices_id&#x60; into &#x60;getBillingInvoice&#x60; for full detail or &#x60;/billing/pay/{method}/{invoices}&#x60; to settle an unpaid invoice. For the account-wide invoice list use the Billing tag instead. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller. Siblings: &#x60;getBackupInfo&#x60;, &#x60;addBackup&#x60;.

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
let id = 56; // Number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
apiInstance.getBackupInvoices(id).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | 

### Return type

[**ChargeInvoiceRows**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getBackupLogin

> BackupLoginResponse getBackupLogin(id)

Open a single sign-on session URL for the backup storage panel

Use to drop the customer straight into the off-site backup storage management panel without a separate login prompt. Calls &#x60;get_storage_session($id)&#x60; to mint a one-shot session URL; treat the URL as short-lived and credentials-equivalent — do not log or share. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. No body. Returns &#x60;BackupLoginResponse&#x60; (&#x60;success&#x60;, session URL/token, optional connection hints). On &#x60;success&#x3D;false&#x60; the handler returns &#x60;json_error(text)&#x60; (HTTP 400) with the upstream reason. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller; backend errors when the storage server is unreachable. Siblings: &#x60;getBackupInfo&#x60; (SFTP &#x60;backup_username&#x60;/&#x60;backup_ip&#x60; for direct connections), &#x60;getBackupsWelcomeEmail&#x60; (resend setup credentials).

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
let id = 56; // Number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
apiInstance.getBackupLogin(id).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | 

### Return type

[**BackupLoginResponse**](BackupLoginResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getBackupsList

> [BackupRow] getBackupsList()

List off-site backup storage subscriptions on the authenticated account

Use when enumerating all off-site backup storage services (SFTP-style remote storage subscriptions) on the authenticated customer&#39;s account. NOT for VPS/QS/webhosting in-place snapshots — those live under their own tags (&#x60;getVpsBackups&#x60;, &#x60;getQsBackups&#x60;, &#x60;getWebsitesBackups&#x60;). No query params, no body. Returns an array of rows; each row carries &#x60;backup_id&#x60;, &#x60;backup_name&#x60;, &#x60;backup_username&#x60;, &#x60;backup_status&#x60;, &#x60;services_name&#x60; (plan), and &#x60;backup_cost&#x60; (recurring price from &#x60;repeat_invoices&#x60;). Use &#x60;backup_id&#x60; as the path &#x60;{id}&#x60; for &#x60;getBackupInfo&#x60;, &#x60;getBackupLogin&#x60;, &#x60;getBackupInvoices&#x60;, &#x60;getBackupsWelcomeEmail&#x60;, &#x60;cancelBackup&#x60;. Errors: HTTP 401 if unauthenticated. Empty array when the customer has no backup services. Siblings: &#x60;getBackupInfo&#x60;, &#x60;getNewBackup&#x60;, &#x60;addBackup&#x60;.

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
apiInstance.getBackupsList().then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[BackupRow]**](BackupRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getBackupsWelcomeEmail

> SuccessTextResponse getBackupsWelcomeEmail(id)

Resend the welcome email for an off-site backup storage service

Use when the original welcome email was lost or never arrived. Resends connection credentials (SFTP host, username, quota) and setup instructions to the account email by invoking the module&#39;s &#x60;backup_welcome_email($id)&#x60; helper. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. No body. Returns &#x60;SuccessTextResponse&#x60; with &#x60;text&#x3D;&#39;Welcome Email has been resent.&#39;&#x60;. Caveats: only works while the service is &#x60;active&#x60;; cancelled/pending services will return 409. Email is sent to the customer-of-record on file — there is no override recipient parameter. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller (&#x60;Invalid Service Passed&#x60;); HTTP 409 if &#x60;backup_status&#x60; is not &#x60;active&#x60; (&#x60;Service is not active&#x60;). Siblings: &#x60;getBackupLogin&#x60;, &#x60;getBackupInfo&#x60;.

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
let id = 56; // Number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
apiInstance.getBackupsWelcomeEmail(id).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getNewBackup

> BackupsOrder getNewBackup()

Get backup-storage order form metadata and pricing tiers

Use before placing an off-site backup storage order to fetch the available plans, their service-type IDs, and per-tier pricing needed to render an order form. No params, no body. Returns &#x60;{ packageCosts, serviceTypes }&#x60; — &#x60;packageCosts&#x60; is a map of &#x60;services_id&#x60; → recurring cost (from &#x60;services&#x60; where &#x60;services_module&#x3D;&#39;backups&#39;&#x60; and &#x60;services_buyable&#x3D;1&#x60;); &#x60;serviceTypes&#x60; is the dispatcher output of &#x60;run_event(&#39;get_service_types&#39;, true, &#39;backups&#39;)&#x60; describing each tier. Pass the chosen &#x60;services_id&#x60; as &#x60;serviceType&#x60; to &#x60;validateBackupOrder&#x60; (PUT) for a price preview, then to &#x60;addBackup&#x60; (POST) to commit. Errors: HTTP 401 if unauthenticated. Siblings: &#x60;validateBackupOrder&#x60;, &#x60;addBackup&#x60;, &#x60;getBackupsList&#x60;.

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
apiInstance.getNewBackup().then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BackupsOrder**](BackupsOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updateBackupInfo

> SuccessTextResponse updateBackupInfo(id)

Update stored metadata for a backup-storage subscription

Use to update non-billing metadata (e.g. stored credentials, comment, hostname) on an existing off-site backup storage service. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. Body fields are forwarded to the same &#x60;View::go()&#x60; handler as the GET; consult the order form for accepted keys. Returns the standard &#x60;SuccessTextResponse&#x60;. Caveats: this endpoint does NOT change the plan, quota, or billing — those require cancel + reorder via &#x60;cancelBackup&#x60; and &#x60;addBackup&#x60;. It also does NOT trigger any backend SFTP credential rotation. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller; HTTP 422 on invalid input. Siblings: &#x60;getBackupInfo&#x60;, &#x60;cancelBackup&#x60;, &#x60;getBackupLogin&#x60;.

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
let id = 56; // Number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
apiInstance.updateBackupInfo(id).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## validateBackupOrder

> BackupOrderPutResponse validateBackupOrder(opts)

Validate a backup-storage order and preview pricing without charging

Use to dry-run a backup order — runs &#x60;validate_buy_storage()&#x60; to compute final price, apply any coupon, and surface validation errors before the customer commits. No invoice is created and no service is provisioned. Body (JSON or multipart): &#x60;serviceType&#x60; (services_id from &#x60;getNewBackup&#x60;), optional &#x60;coupon&#x60;, &#x60;period&#x60; (months, default 1), &#x60;comment&#x60;. Returns &#x60;{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, hostname, password, coupon, couponCode }&#x60;. Use the response to render a confirmation screen, then call &#x60;addBackup&#x60; (POST same path) to place the order. Errors: HTTP 401 unauthenticated; HTTP 422 surfaced inside &#x60;errors[]&#x60; (invalid coupon, ineligible plan, duplicate hostname). Siblings: &#x60;addBackup&#x60;, &#x60;getNewBackup&#x60;.

### Example

```javascript
import InterserverApiClient from 'interserver-api-client';
let defaultClient = InterserverApiClient.ApiClient.instance;
// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';
// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterserverApiClient.BackupsApi();
let opts = {
  'validateOnly': true, // Boolean | 
  'serviceType': 56, // Number | 
  'coupon': "coupon_example" // String | 
};
apiInstance.validateBackupOrder(opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateOnly** | **Boolean**|  | [optional] 
 **serviceType** | **Number**|  | [optional] 
 **coupon** | **String**|  | [optional] 

### Return type

[**BackupOrderPutResponse**](BackupOrderPutResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


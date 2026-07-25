# BackupsApi

All URIs are relative to *https://my.interserver.net/apiv2*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addBackup**](BackupsApi.md#addbackup) | **POST** /backups/order | Place a new off-site backup storage order and generate the invoice |
| [**cancelBackup**](BackupsApi.md#cancelbackup) | **DELETE** /backups/{id} | Cancel an off-site backup storage subscription |
| [**getBackupInfo**](BackupsApi.md#getbackupinfo) | **GET** /backups/{id} | Get details of a specific off-site backup storage service |
| [**getBackupInvoices**](BackupsApi.md#getbackupinvoices) | **GET** /backups/{id}/invoices | List invoices for a single backup-storage subscription |
| [**getBackupLogin**](BackupsApi.md#getbackuplogin) | **GET** /backups/{id}/login | Open a single sign-on session URL for the backup storage panel |
| [**getBackupsList**](BackupsApi.md#getbackupslist) | **GET** /backups | List off-site backup storage subscriptions on the authenticated account |
| [**getBackupsWelcomeEmail**](BackupsApi.md#getbackupswelcomeemail) | **GET** /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service |
| [**getNewBackup**](BackupsApi.md#getnewbackup) | **GET** /backups/order | Get backup-storage order form metadata and pricing tiers |
| [**updateBackupInfo**](BackupsApi.md#updatebackupinfo) | **POST** /backups/{id} | Update stored metadata for a backup-storage subscription |
| [**validateBackupOrder**](BackupsApi.md#validatebackuporder) | **PUT** /backups/order | Validate a backup-storage order and preview pricing without charging |



## addBackup

> BackupOrderPostResponse addBackup(validateOnly, serviceType, coupon)

Place a new off-site backup storage order and generate the invoice

Step 3 of the backup-storage order flow. Revalidates via &#x60;validate_buy_storage()&#x60;, then calls &#x60;place_buy_storage()&#x60; which creates a &#x60;backups&#x60; service row, a &#x60;repeat_invoices&#x60; recurring entry, and the first &#x60;invoices&#x60; row. **Real billable order — call &#x60;validateBackupOrder&#x60; first.** Service is provisioned only after the invoice is paid. Sibling ops: &#x60;getNewBackup&#x60; (catalog), &#x60;validateBackupOrder&#x60; (quote), &#x60;getBackupInvoices&#x60; (billing history), &#x60;initiatePayment&#x60; (settle).  **Body fields** (JSON or multipart): - &#x60;serviceType&#x60; (integer, required) — &#x60;services_id&#x60; from &#x60;getNewBackup&#x60;. - &#x60;coupon&#x60; (string, optional) — coupon code. - &#x60;period&#x60; (integer, optional, default &#x60;1&#x60;) — billing months. - &#x60;comment&#x60; (string, optional) — saved on the order row.  **Returns** (on success): &#x60;{ continue: true, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }&#x60; — feed &#x60;real_iids&#x60; into &#x60;initiatePayment&#x60;. On validation failure: &#x60;{ continue: false, errors: [...] }&#x60; with HTTP 200.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;422&#x60; inside &#x60;errors[]&#x60; — coupon/plan/duplicate-hostname validation. - Explicit error text when no backend storage server is available for assignment.  **Side effects:** new rows in &#x60;backups&#x60;, &#x60;repeat_invoices&#x60;, &#x60;invoices&#x60;; queued provisioning kicks off only after payment.  **Related calls:** - **Prerequisite:** &#x60;validateBackupOrder&#x60;. - **Pay:** &#x60;getBillingInvoice&#x60; → &#x60;initiatePayment&#x60;. - **Poll status:** &#x60;getBackupInfo&#x60; (until &#x60;backup_status&#x3D;\&#39;active\&#39;&#x60;). 

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { AddBackupRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  const body = {
    // boolean (optional)
    validateOnly: true,
    // number (optional)
    serviceType: 56,
    // string (optional)
    coupon: coupon_example,
  } satisfies AddBackupRequest;

  try {
    const data = await api.addBackup(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **validateOnly** | `boolean` |  | [Optional] [Defaults to `undefined`] |
| **serviceType** | `number` |  | [Optional] [Defaults to `undefined`] |
| **coupon** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**BackupOrderPostResponse**](BackupOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: `multipart/form-data`, `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response from the backup order call including invoice IDs for payment. |  -  |
| **401** | Unauthorized |  -  |
| **0** | Default response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## cancelBackup

> CancelBackup200Response cancelBackup(id)

Cancel an off-site backup storage subscription

DESTRUCTIVE. Use to terminate a backup-storage subscription. Delegates to &#x60;CancelService::go($id)&#x60; with module &#x60;backups&#x60;, which marks the service for cancellation and stops future recurring billing; data on the storage backend may become inaccessible at end of cycle. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. No body. Returns &#x60;BackupsCancelResponse&#x60;. Caveats: irreversible — a new order via &#x60;addBackup&#x60; is required to restore service, with a new IP/username and no migration of prior data. Does NOT delete VPS/QS/webhosting in-place snapshots (those live under their own tags). Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller; HTTP 409 if the service is already cancelled or pending cancellation. Siblings: &#x60;addBackup&#x60;, &#x60;getBackupInfo&#x60;, &#x60;getBackupInvoices&#x60;.

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { CancelBackupRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  const body = {
    // number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
    id: 56,
  } satisfies CancelBackupRequest;

  try {
    const data = await api.cancelBackup(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `number` | The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | [Defaults to `undefined`] |

### Return type

[**CancelBackup200Response**](CancelBackup200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Backups Cancel |  -  |
| **401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBackupInfo

> Backup getBackupInfo(id)

Get details of a specific off-site backup storage service

Use to fetch the full management view for one backup-storage subscription. Path param: &#x60;id&#x60; (backup service ID from &#x60;getBackupsList&#x60;). No body. Returns &#x60;serviceInfo&#x60; (with &#x60;backup_username&#x60;, &#x60;backup_ip&#x60;, &#x60;backup_status&#x60;, &#x60;backup_quota&#x60;, &#x60;backup_type&#x60;, &#x60;backup_invoice&#x60;), plus &#x60;billingDetails&#x60;, &#x60;extraInfoTables&#x60;, &#x60;package&#x60;, &#x60;custCurrency&#x60;, and &#x60;client_links&#x60; (rewritten to surface the link target rather than the raw queue URL). &#x60;admin_links&#x60;, internal &#x60;settings&#x60;, and &#x60;csrf&#x60; are stripped. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; does not belong to the caller (cross-account access blocked by &#x60;get_service&#x60;). Siblings: &#x60;getBackupLogin&#x60; (open storage panel session), &#x60;getBackupInvoices&#x60;, &#x60;getBackupsWelcomeEmail&#x60;, &#x60;cancelBackup&#x60;, &#x60;updateBackupInfo&#x60;.

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { GetBackupInfoRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  const body = {
    // number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
    id: 56,
  } satisfies GetBackupInfoRequest;

  try {
    const data = await api.getBackupInfo(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `number` | The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | [Defaults to `undefined`] |

### Return type

[**Backup**](Backup.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Full backup service details including serviceInfo, billingDetails, and client_links. |  -  |
| **401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBackupInvoices

> ChargeInvoiceRows getBackupInvoices(id)

List invoices for a single backup-storage subscription

Use to retrieve all invoices tied to one off-site backup storage service — useful for confirming billing status, locating an unpaid invoice to pay, or reconciling renewals. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. Delegates to the shared &#x60;InvoicesList::go()&#x60; handler with module &#x60;backups&#x60;. No body. Returns &#x60;ChargeInvoiceRows&#x60; (array of invoice rows with &#x60;invoices_id&#x60;, status, amount, dates). Feed &#x60;invoices_id&#x60; into &#x60;getBillingInvoice&#x60; for full detail or &#x60;/billing/pay/{method}/{invoices}&#x60; to settle an unpaid invoice. For the account-wide invoice list use the Billing tag instead. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller. Siblings: &#x60;getBackupInfo&#x60;, &#x60;addBackup&#x60;.

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { GetBackupInvoicesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  const body = {
    // number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
    id: 56,
  } satisfies GetBackupInvoicesRequest;

  try {
    const data = await api.getBackupInvoices(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `number` | The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | [Defaults to `undefined`] |

### Return type

[**ChargeInvoiceRows**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Get Invoices response |  -  |
| **401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBackupLogin

> BackupLoginResponse getBackupLogin(id)

Open a single sign-on session URL for the backup storage panel

Use to drop the customer straight into the off-site backup storage management panel without a separate login prompt. Calls &#x60;get_storage_session($id)&#x60; to mint a one-shot session URL; treat the URL as short-lived and credentials-equivalent — do not log or share. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. No body. Returns &#x60;BackupLoginResponse&#x60; (&#x60;success&#x60;, session URL/token, optional connection hints). On &#x60;success&#x3D;false&#x60; the handler returns &#x60;json_error(text)&#x60; (HTTP 400) with the upstream reason. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller; backend errors when the storage server is unreachable. Siblings: &#x60;getBackupInfo&#x60; (SFTP &#x60;backup_username&#x60;/&#x60;backup_ip&#x60; for direct connections), &#x60;getBackupsWelcomeEmail&#x60; (resend setup credentials).

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { GetBackupLoginRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  const body = {
    // number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
    id: 56,
  } satisfies GetBackupLoginRequest;

  try {
    const data = await api.getBackupLogin(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `number` | The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | [Defaults to `undefined`] |

### Return type

[**BackupLoginResponse**](BackupLoginResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Login session details for the backup storage service. |  -  |
| **401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBackupsList

> Array&lt;BackupRow&gt; getBackupsList()

List off-site backup storage subscriptions on the authenticated account

Use when enumerating all off-site backup storage services (SFTP-style remote storage subscriptions) on the authenticated customer\&#39;s account. NOT for VPS/QS/webhosting in-place snapshots — those live under their own tags (&#x60;getVpsBackups&#x60;, &#x60;getQsBackups&#x60;, &#x60;getWebsitesBackups&#x60;). No query params, no body. Returns an array of rows; each row carries &#x60;backup_id&#x60;, &#x60;backup_name&#x60;, &#x60;backup_username&#x60;, &#x60;backup_status&#x60;, &#x60;services_name&#x60; (plan), and &#x60;backup_cost&#x60; (recurring price from &#x60;repeat_invoices&#x60;). Use &#x60;backup_id&#x60; as the path &#x60;{id}&#x60; for &#x60;getBackupInfo&#x60;, &#x60;getBackupLogin&#x60;, &#x60;getBackupInvoices&#x60;, &#x60;getBackupsWelcomeEmail&#x60;, &#x60;cancelBackup&#x60;. Errors: HTTP 401 if unauthenticated. Empty array when the customer has no backup services. Siblings: &#x60;getBackupInfo&#x60;, &#x60;getNewBackup&#x60;, &#x60;addBackup&#x60;.

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { GetBackupsListRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  try {
    const data = await api.getBackupsList();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;BackupRow&gt;**](BackupRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The listing of backup storage services on your account. |  -  |
| **401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBackupsWelcomeEmail

> SuccessTextResponse getBackupsWelcomeEmail(id)

Resend the welcome email for an off-site backup storage service

Use when the original welcome email was lost or never arrived. Resends connection credentials (SFTP host, username, quota) and setup instructions to the account email by invoking the module\&#39;s &#x60;backup_welcome_email($id)&#x60; helper. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. No body. Returns &#x60;SuccessTextResponse&#x60; with &#x60;text&#x3D;\&#39;Welcome Email has been resent.\&#39;&#x60;. Caveats: only works while the service is &#x60;active&#x60;; cancelled/pending services will return 409. Email is sent to the customer-of-record on file — there is no override recipient parameter. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller (&#x60;Invalid Service Passed&#x60;); HTTP 409 if &#x60;backup_status&#x60; is not &#x60;active&#x60; (&#x60;Service is not active&#x60;). Siblings: &#x60;getBackupLogin&#x60;, &#x60;getBackupInfo&#x60;.

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { GetBackupsWelcomeEmailRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  const body = {
    // number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
    id: 56,
  } satisfies GetBackupsWelcomeEmailRequest;

  try {
    const data = await api.getBackupsWelcomeEmail(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `number` | The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | [Defaults to `undefined`] |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A response indicating the operation completed successfully with a text message. |  -  |
| **401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getNewBackup

> BackupsOrder getNewBackup()

Get backup-storage order form metadata and pricing tiers

Use before placing an off-site backup storage order to fetch the available plans, their service-type IDs, and per-tier pricing needed to render an order form. No params, no body. Returns &#x60;{ packageCosts, serviceTypes }&#x60; — &#x60;packageCosts&#x60; is a map of &#x60;services_id&#x60; → recurring cost (from &#x60;services&#x60; where &#x60;services_module&#x3D;\&#39;backups\&#39;&#x60; and &#x60;services_buyable&#x3D;1&#x60;); &#x60;serviceTypes&#x60; is the dispatcher output of &#x60;run_event(\&#39;get_service_types\&#39;, true, \&#39;backups\&#39;)&#x60; describing each tier. Pass the chosen &#x60;services_id&#x60; as &#x60;serviceType&#x60; to &#x60;validateBackupOrder&#x60; (PUT) for a price preview, then to &#x60;addBackup&#x60; (POST) to commit. Errors: HTTP 401 if unauthenticated. Siblings: &#x60;validateBackupOrder&#x60;, &#x60;addBackup&#x60;, &#x60;getBackupsList&#x60;.

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { GetNewBackupRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  try {
    const data = await api.getNewBackup();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BackupsOrder**](BackupsOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Information needed to generate an order form. |  -  |
| **401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateBackupInfo

> SuccessTextResponse updateBackupInfo(id)

Update stored metadata for a backup-storage subscription

Use to update non-billing metadata (e.g. stored credentials, comment, hostname) on an existing off-site backup storage service. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. Body fields are forwarded to the same &#x60;View::go()&#x60; handler as the GET; consult the order form for accepted keys. Returns the standard &#x60;SuccessTextResponse&#x60;. Caveats: this endpoint does NOT change the plan, quota, or billing — those require cancel + reorder via &#x60;cancelBackup&#x60; and &#x60;addBackup&#x60;. It also does NOT trigger any backend SFTP credential rotation. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller; HTTP 422 on invalid input. Siblings: &#x60;getBackupInfo&#x60;, &#x60;cancelBackup&#x60;, &#x60;getBackupLogin&#x60;.

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { UpdateBackupInfoRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  const body = {
    // number | The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
    id: 56,
  } satisfies UpdateBackupInfoRequest;

  try {
    const data = await api.updateBackupInfo(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `number` | The backup service ID. Use the &#x60;backup_id&#x60; from &#x60;GET /backups&#x60; to identify the service. | [Defaults to `undefined`] |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A response indicating the operation completed successfully with a text message. |  -  |
| **401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## validateBackupOrder

> BackupOrderPutResponse validateBackupOrder(validateOnly, serviceType, coupon)

Validate a backup-storage order and preview pricing without charging

Use to dry-run a backup order — runs &#x60;validate_buy_storage()&#x60; to compute final price, apply any coupon, and surface validation errors before the customer commits. No invoice is created and no service is provisioned. Body (JSON or multipart): &#x60;serviceType&#x60; (services_id from &#x60;getNewBackup&#x60;), optional &#x60;coupon&#x60;, &#x60;period&#x60; (months, default 1), &#x60;comment&#x60;. Returns &#x60;{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, hostname, password, coupon, couponCode }&#x60;. Use the response to render a confirmation screen, then call &#x60;addBackup&#x60; (POST same path) to place the order. Errors: HTTP 401 unauthenticated; HTTP 422 surfaced inside &#x60;errors[]&#x60; (invalid coupon, ineligible plan, duplicate hostname). Siblings: &#x60;addBackup&#x60;, &#x60;getNewBackup&#x60;.

### Example

```ts
import {
  Configuration,
  BackupsApi,
} from '';
import type { ValidateBackupOrderRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: sessionIdCookieAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: apiKeyAuth
    apiKey: "YOUR API KEY",
    // To configure API key authorization: sessionIdHeaderAuth
    apiKey: "YOUR API KEY",
  });
  const api = new BackupsApi(config);

  const body = {
    // boolean (optional)
    validateOnly: true,
    // number (optional)
    serviceType: 56,
    // string (optional)
    coupon: coupon_example,
  } satisfies ValidateBackupOrderRequest;

  try {
    const data = await api.validateBackupOrder(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **validateOnly** | `boolean` |  | [Optional] [Defaults to `undefined`] |
| **serviceType** | `number` |  | [Optional] [Defaults to `undefined`] |
| **coupon** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**BackupOrderPutResponse**](BackupOrderPutResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: `multipart/form-data`, `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Validate Backup Order Response |  -  |
| **401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


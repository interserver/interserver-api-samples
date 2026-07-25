# MailApi

All URIs are relative to *https://my.interserver.net/apiv2*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**addMail**](#addmail) | **POST** /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning|
|[**addRule**](#addrule) | **POST** /mail/{id}/rules | Create a new deny rule to auto-block matching submissions|
|[**createMailAlert**](#createmailalert) | **POST** /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events|
|[**deleteMailAlert**](#deletemailalert) | **DELETE** /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery)|
|[**deleteRule**](#deleterule) | **DELETE** /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)|
|[**delistBlock**](#delistblock) | **POST** /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists|
|[**getMailAlerts**](#getmailalerts) | **GET** /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service|
|[**getMailBlocks**](#getmailblocks) | **GET** /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user|
|[**getMailDelist**](#getmaildelist) | **GET** /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting|
|[**getMailDeliverability**](#getmaildeliverability) | **GET** /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain)|
|[**getMailInfo**](#getmailinfo) | **GET** /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials|
|[**getMailInvoices**](#getmailinvoices) | **GET** /mail/{id}/invoices | List billing invoices linked to this Mail Baby service|
|[**getMailList**](#getmaillist) | **GET** /mail | List every Mail Baby SMTP relay service on the account|
|[**getMailWelcomeEmail**](#getmailwelcomeemail) | **GET** /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info|
|[**getNewMail**](#getnewmail) | **GET** /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata|
|[**getRules**](#getrules) | **GET** /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service|
|[**getStats**](#getstats) | **GET** /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost|
|[**mailCancel**](#mailcancel) | **DELETE** /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice|
|[**postMailDelist**](#postmaildelist) | **POST** /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists|
|[**putMail**](#putmail) | **PUT** /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge|
|[**resetMailPassword**](#resetmailpassword) | **GET** /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner|
|[**sendAdvMail**](#sendadvmail) | **POST** /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient|
|[**sendMail**](#sendmail) | **POST** /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay|
|[**updateMailAlert**](#updatemailalert) | **PUT** /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id|
|[**updateMailInfo**](#updatemailinfo) | **POST** /mail/{id} | POST mutation hook for the Mail Baby service detail page|
|[**updateRule**](#updaterule) | **PUT** /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule\&#39;s type and match data|
|[**viewMailLog**](#viewmaillog) | **GET** /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries|

# **addMail**
> ServiceOrderPostResponse addMail(mailOrderRequest)

Step 3 of the Mail Baby order flow. Revalidates via `validate_buy_mail()`, then calls `place_buy_mail()` to create a `Repeat_Invoice` recurring billing row, an initial `invoices` row, and a `mail` service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call `putMail` first. Sibling ops: `getNewMail`, `putMail`, `getMailInfo`, `initiatePayment`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail`. - `coupon` (string, optional). - `comment` (string, optional) — saved on the order row.  **Returns** (on success): `{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}` — pass `real_iids` to `initiatePayment`. On validation failure: `{continue: false, errors: [...]}` with HTTP 200.  **Side effects:** - Inserts `mail` service row in `pending` status. - Inserts `repeat_invoices` + `invoices` rows.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Pay:** `initiatePayment` with `real_iids`. - **Confirm activation:** `getMailInfo` (poll until `mail_status==\'active\'`). - **Resend credentials:** `getMailWelcomeEmail`.  **Full ordering happy path:** ```text GET /mail/order                                    -> catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -> quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -> { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -> pay (initiatePayment) GET /mail/{serviceId}                              -> poll until mail_status==\'active\' ``` 

### Example

```typescript
import {
    MailApi,
    Configuration,
    MailOrderRequest
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let mailOrderRequest: MailOrderRequest; //

const { status, data } = await apiInstance.addMail(
    mailOrderRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **mailOrderRequest** | **MailOrderRequest**|  | |


### Return type

**ServiceOrderPostResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Order placed successfully. Use the invoice ID to proceed to payment via &#x60;/billing/pay/{method}/{invoices}&#x60; or view the invoice at &#x60;/billing/invoices/{id}&#x60;. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRule**
> GenericResponse addRule(denyRuleNew, )

Inserts a new `mail_spam` row scoped to this service\'s `mail_username` so the relay drops matching submissions. Sibling ops: `getRules`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — literal value matched; validation: no quotes, valid domain for `type=domain`, valid email for `type=email`, `[A-Z0-9+_.-]+` for `startswith`.  **Returns:** `\"Spam Block Added\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    DenyRuleNew
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let denyRuleNew: DenyRuleNew; //These are the fields needed to create a new email deny rule.
let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.addRule(
    denyRuleNew,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **denyRuleNew** | **DenyRuleNew**| These are the fields needed to create a new email deny rule. | |
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**GenericResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Deny rule created successfully. |  -  |
|**400** | The specified resource was not found |  -  |
|**401** | Unauthorized |  -  |
|**404** | The specified resource was not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMailAlert**
> SuccessTextResponse createMailAlert(mailAlertRequest, )

Inserts a new alert row via the `Alert` ORM. The new `alert_id` is retrievable via `getMailAlerts`. Sibling ops: `getMailAlerts`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertRequest`):** - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    MailAlertRequest
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let mailAlertRequest: MailAlertRequest; //
let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.createMailAlert(
    mailAlertRequest,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **mailAlertRequest** | **MailAlertRequest**|  | |
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**SuccessTextResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A response indicating the operation completed successfully with a text message. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMailAlert**
> SuccessTextResponse deleteMailAlert(deleteMailAlertRequest, )

Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via `createMailAlert` if needed. Sibling ops: `getMailAlerts`, `createMailAlert`, `updateMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields:** - `alert_id` (integer, required) — from `getMailAlerts`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    DeleteMailAlertRequest
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let deleteMailAlertRequest: DeleteMailAlertRequest; //
let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.deleteMailAlert(
    deleteMailAlertRequest,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **deleteMailAlertRequest** | **DeleteMailAlertRequest**|  | |
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**SuccessTextResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A response indicating the operation completed successfully with a text message. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRule**
> GenericResponse deleteRule()

Hard-deletes a single `mail_spam` row scoped to this service\'s `mail_username`. **Irreversible** — no audit copy preserved. Query filter `id={rule} AND user=\'{mail_username}\'` prevents cross-tenant deletes; passing a `rule` belonging to a different mail order is silently a no-op (still returns success). Sibling ops: `getRules`, `addRule`, `updateRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Returns:** `\"Block deleted successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)
let rule: string; //The ID of the Rules entry. (default to undefined)

const { status, data } = await apiInstance.deleteRule(
    id,
    rule
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|
| **rule** | [**string**] | The ID of the Rules entry. | defaults to undefined|


### Return type

**GenericResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Deny rule deleted successfully. |  -  |
|**400** | The specified resource was not found |  -  |
|**401** | Unauthorized |  -  |
|**404** | The specified resource was not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delistBlock**
> GenericResponse delistBlock()

Removes block rows for the supplied email across the three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Functionally equivalent to `postMailDelist` but uses `email` parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: `getMailBlocks`, `getMailDelist`, `postMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `EmailAddress`):** - `email` (string, required) — sender address; validated via `FILTER_VALIDATE_EMAIL`.  **Returns:** `{status: \"ok\", text: \"Email \'...\' removed from block list\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` invalid email, `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)
let email: string; //an email address (optional) (default to undefined)

const { status, data } = await apiInstance.delistBlock(
    id,
    email
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|
| **email** | [**string**] | an email address | (optional) defaults to undefined|


### Return type

**GenericResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Email address removed from block list successfully. |  -  |
|**400** | The specified resource was not found |  -  |
|**401** | Unauthorized |  -  |
|**404** | The specified resource was not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailAlerts**
> MailAlertsResponse getMailAlerts()

Returns every alert row from `alerts` matching this service. Each row carries `alert_id` (use with PUT/DELETE), `alert_type`, `alert_value` (threshold), `alert_to` (notification email), `alert_enabled`, and timestamps. Sibling ops: `createMailAlert`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailAlertsResponse`): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.getMailAlerts(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**MailAlertsResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Alert configuration for the mail service. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailBlocks**
> MailBlocks getMailBlocks()

Returns relay-side block events for the SMTP user behind `mail_id` — the last 24 hours of `LOCAL_BL_RCPT` and `MBTRAP` rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing `@` / `smtp` / `socks5` / `socks4` more than 4 times). Use the `from` value with `delistBlock` or `postMailDelist` to clear a block. Sibling ops: `delistBlock`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailBlocks`): - `local` (array) — rspamd `LOCAL_BL_RCPT` hits: `{date, from, messageId, subject, to}`. - `mbtrap` (array) — spam-trap captures (`MBTRAP` symbol): same shape. - `subject` (array) — senders flagged by subject-line heuristic: `{from, subject}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Clear a block:** `delistBlock` (POST `/mail/{id}/blocks/delete`). - **Broader delist UI:** `getMailDelist`, `postMailDelist`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.getMailBlocks(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**MailBlocks**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**401** | Unauthorized |  -  |
|**404** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailDelist**
> MailDelistResponse getMailDelist()

Returns a richer diagnostic snapshot than `getMailBlocks` — intended for the delist UI. Use any `SMTPFrom`/`from` value as the `unblock` field for `postMailDelist`. Sibling ops: `postMailDelist`, `getMailBlocks`, `delistBlock`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailDelistResponse`): - `id` (integer) — `mail_id` echo. - `local`, `mbtrap` (array) — last 24h rspamd hits with capitalized keys (`Date`, `SMTPFrom`, `MessageId`, `Subject`, `MimeRecipients`). - `subject` (array) — credential-leak-heuristic firings (3-day window). - `manual` (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.getMailDelist(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**MailDelistResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Blocklist entries and delist details for the mail service. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailDeliverability**
> MailDeliverabilityResponse getMailDeliverability()

Returns deliverability analytics from `MailDeliveryStats` (Dragonfly cache) for the SMTP user behind `mail_id`. Default pivot is by sender; pass `?filter_domain=1` to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: `getStats`, `viewMailLog`, `getMailBlocks`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `filter_domain` (string `1`, optional) — pivot by recipient domain instead of sender.  **Returns** (schema `MailDeliverabilityResponse`): - `stat`: `{delivered, bounced, percent}` — totals and bounce ratio. - `header` (string), `col1` (string) — table headers. - `table_data` (array) — rows of `[<sender-or-domain>, bounced, delivered, bouncePercent]`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.getMailDeliverability(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**MailDeliverabilityResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Deliverability metrics for the mail service. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailInfo**
> MailSchema getMailInfo()

Returns the full `ViewMail` payload for one Mail Baby service — `serviceInfo`, `serviceType`, and `client_links` (URLs rewritten to API paths, e.g. `view_mail_log` → `log`). Admin fields (`admin_links`, `settings`, `csrf`) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: `getMailList`, `updateMailInfo`, `mailCancel`, `resetMailPassword`, `getMailWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailSchema`): - `serviceInfo` — `mail_id`, `mail_username` (e.g. `mb1234`), `mail_status`, `mail_invoice`, `mail_custid`, dates, currency. - `serviceType` — plan row (`services_ourcost` stripped). - `client_links` (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Send:** `sendMail` / `sendAdvMail`. - **Rotate password:** `resetMailPassword`. - **Reset credentials:** `getMailWelcomeEmail`. - **Cancel:** `mailCancel`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.getMailInfo(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**MailSchema**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Mail Information. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailInvoices**
> ChargeInvoiceRows getMailInvoices()

Returns every invoice associated with this `mail_id` via the shared `InvoicesList` workflow. Use to render per-service billing history or find unpaid invoices to pay via `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, `addMail`, `mailCancel`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `ChargeInvoiceRows` — array of `{id, amount, currency, paid, date, due_date, description, module: \"mail\", service}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404 Invalid Service`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.getMailInvoices(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**ChargeInvoiceRows**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Get Invoices response |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailList**
> Array<MailRow> getMailList()

Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a `mail_id` to pass to other Mail endpoints. Filtered server-side by `mail_custid`. Sibling ops: `getMailInfo`, `getStats`, `viewMailLog`, `getMailDeliverability`, `getMailBlocks`, `getMailInvoices`, `addMail`.  **Path/Query/Body:** None.  **Returns:** Array of `MailRow`: - `mail_id` (integer) — canonical id. - `mail_username` (string) — SMTP username (e.g. `mb1234`). - `mail_status` (string enum) — `active` / `pending` / `canceled` / `suspended`. - `services_name` (string) — plan label. - `repeat_invoices_cost` (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-service detail:** `getMailInfo`. - **Send mail:** `sendMail` / `sendAdvMail`. - **Reputation:** `getMailDeliverability` / `getMailBlocks` / `getMailDelist`. - **Order a new service:** `getNewMail` → `putMail` → `addMail`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

const { status, data } = await apiInstance.getMailList();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Array<MailRow>**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The listing of &#x60;Mail&#x60; services on your account. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailWelcomeEmail**
> SuccessTextResponse getMailWelcomeEmail()

Re-runs the `mail_welcome_email` plugin function — composes and sends the standard welcome email (SMTP host `relay.mailbaby.net`, port, username `mb{mail_id}`, current password, configuration tips) to the account-on-file. Use after `resetMailPassword` to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: `resetMailPassword`, `getMailInfo`. Cross-module welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getDomainsWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `{text: \"Welcome Email has been resent.\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.getMailWelcomeEmail(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**SuccessTextResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A response indicating the operation completed successfully with a text message. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNewMail**
> MailOrder getNewMail()

Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: `packageCosts` keyed by `services_id` (only buyable services where `services_buyable=1`) and the full `serviceTypes` map. Read-only. Pricing is normalized to the customer\'s currency via `getCurrency()`. Sibling ops: `putMail`, `addMail`, `getMailList`.  **Path/Query/Body:** None.  **Returns** (schema `MailOrder`): - `packageCosts` (object) — `{<services_id>: <cost>}` per buyable plan. - `serviceTypes` (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Next:** `putMail` (validate + quote — no charge), `addMail` (place order). 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

const { status, data } = await apiInstance.getNewMail();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**MailOrder**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Mail ordering information. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRules**
> Array<DenyRuleRecord> getRules()

Returns every `mail_spam` row scoped to this service\'s `mail_username` — local sender/recipient block rules the customer has configured. Sibling ops: `addRule`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** Array of `DenyRuleRecord` — `{id, user, type, data, created}`. `type` values: - `domain` — block by sender domain. - `email` — block by exact sender email. - `startswith` — block when sender local-part starts with a string. - `destination` — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.getRules(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**Array<DenyRuleRecord>**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | List of configured deny rules. |  -  |
|**401** | Unauthorized |  -  |
|**404** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStats**
> MailStatsType getStats()

Returns aggregate usage and cost metrics for the SMTP user behind `mail_id` from the ZoneMTA `mail_messagestore` / `mail_senderdelivered` tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: `viewMailLog`, `getMailDeliverability`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `time` (string enum, optional, default `1h`) — window: `all` / `billing` (current invoice cycle) / `month` / `7d` / `24h` / `1d` / `1h`.  **Returns** (schema `MailStatsType`): - `time` (string) — echo of selected window. - `usage` (integer) — full-billing-cycle send count. - `currency`, `currencySymbol` (string). - `cost` (decimal) — projected = base + `$0.20 / 1000 emails`. - `received`, `sent` (integer). - `volume.to`, `volume.from`, `volume.ip` (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid or missing mail order id`, `401`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)
let time: 'all' | 'billing' | 'month' | '7d' | '24h' | '1d' | '1h'; //The timeframe for the statistics. (optional) (default to undefined)

const { status, data } = await apiInstance.getStats(
    id,
    time
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|
| **time** | [**&#39;all&#39; | &#39;billing&#39; | &#39;month&#39; | &#39;7d&#39; | &#39;24h&#39; | &#39;1d&#39; | &#39;1h&#39;**]**Array<&#39;all&#39; &#124; &#39;billing&#39; &#124; &#39;month&#39; &#124; &#39;7d&#39; &#124; &#39;24h&#39; &#124; &#39;1d&#39; &#124; &#39;1h&#39; &#124; &#39;11184809&#39;>** | The timeframe for the statistics. | (optional) defaults to undefined|


### Return type

**MailStatsType**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Mail service usage statistics. |  -  |
|**401** | Unauthorized |  -  |
|**404** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mailCancel**
> MailCancel200Response mailCancel()

Cancels the Mail Baby service through the shared `Billing\\CancelService::go($id)` flow with `module=\'mail\'`. SMTP credentials are deactivated, the service transitions to canceled, the `repeat_invoice` is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via `addMail`. Sibling ops: `getMailInfo`, `getMailInvoices`, `addMail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `MailCancelResponse`.  **Side effects:** - Sets `mail_status=\'canceled\'`. - Marks `repeat_invoices` non-renewing. - ZoneMTA-side: stops accepting new submissions for `mb{mail_id}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Sibling cancels:** `VPSCancel`, `CancelDomain`, `webhostingCancel`, etc. - **Re-provision:** `addMail`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.mailCancel(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**MailCancel200Response**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Mail Cancel |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMailDelist**
> SuccessTextResponse postMailDelist(mailDelistRequest, )

Removes all block rows for one sender email across three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: `getMailDelist`, `delistBlock` (alias at `/mail/{id}/blocks/delete`), `getMailBlocks`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailDelistRequest`):** - `unblock` (string, required) — sender email from `getMailDelist`/`getMailBlocks`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Missing parameter unblock`, `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    MailDelistRequest
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let mailDelistRequest: MailDelistRequest; //
let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.postMailDelist(
    mailDelistRequest,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **mailDelistRequest** | **MailDelistRequest**|  | |
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**SuccessTextResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A response indicating the operation completed successfully with a text message. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putMail**
> putMail(mailOrderRequest)

Step 2 of the Mail Baby order flow. Dry-runs the order through `validate_buy_mail()` without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before `addMail`. Sibling ops: `getNewMail`, `addMail`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail.packageCosts` keys. - `coupon` (string, optional) — coupon code.  **Returns:** - `continue` (bool) — `true` if order can safely be POSTed. - `errors` (array) — validation messages. - `serviceType`, `serviceCost`, `originalCost`, `repeatServiceCost` (numeric). - `password` (string) — auto-generated SMTP password preview. - `introFrequency` (integer). - `coupon`, `couponCode` (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - `200` with `continue=false` and `errors[]` — validation problems. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `getNewMail` (catalog). - **Place order:** `addMail`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    MailOrderRequest
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let mailOrderRequest: MailOrderRequest; //

const { status, data } = await apiInstance.putMail(
    mailOrderRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **mailOrderRequest** | **MailOrderRequest**|  | |


### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Validate Mail order response. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetMailPassword**
> SuccessTextResponse resetMailPassword()

Generates a new 20-char SMTP password (lower/upper/digits via `generate_password`), writes it to the ZoneMTA Mongo `users` collection for username `mb{mail_id}`, logs the change to `App::history()`, and emails the result to the account-on-file via `client_email.tpl`. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via `getMailWelcomeEmail` or `getMailInfo`. Sibling ops: `getMailWelcomeEmail`, `getMailInfo`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `SuccessTextResponse`.  **Side effects:** - Mongo update on ZoneMTA `users` for `mb{mail_id}`. - `App::history()` audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.resetMailPassword(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**SuccessTextResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A response indicating the operation completed successfully with a text message. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendAdvMail**
> GenericResponse sendAdvMail(sendMailAdv, )

Submits an outbound message through `relay.mailbaby.net:25` using the service\'s SMTP credentials (fetched via `mail_get_password`). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, `sendMail` is the lighter option. Sibling ops: `sendMail`, `viewMailLog` (find queued message), `getMailDeliverability` (analyze bounces).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMailAdv`):** - `from` (string or `{email, name}`, required). - `to` (array of strings or `{email, name}` objects, required). - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present. - `replyto` (array, optional) — same shape as `to`. - `cc`, `bcc` (array, optional) — same shape as `to`. - `attachments` (array, optional) — each `{filename, data}` where `data` is base64-encoded; added via `addStringAttachment`.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `400` with PHPMailer `ErrorInfo` on send failure or missing required field. - `401` — unauthenticated. - `404 Invalid Service Passed`. - `409 Service is not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    SendMailAdv
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let sendMailAdv: SendMailAdv; //
let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.sendAdvMail(
    sendMailAdv,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **sendMailAdv** | **SendMailAdv**|  | |
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**GenericResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Email queued successfully. |  -  |
|**400** | The specified resource was not found |  -  |
|**401** | Unauthorized |  -  |
|**404** | The specified resource was not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMail**
> GenericResponse sendMail(sendMail, )

Sends a single-recipient transactional email through `relay.mailbaby.net:25` authenticated as this `mail_id`. Body fields are the minimum needed for a plain send; Reply-To is auto-set to `from`. For multi-recipient sends, CC/BCC, named addresses, or attachments use `sendAdvMail` instead. Sibling ops: `sendAdvMail`, `viewMailLog`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMail`):** - `to` (string, required) — recipient email. - `from` (string, required) — sender email. - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` with PHPMailer `ErrorInfo` on send failure or missing required field, `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    SendMail
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let sendMail: SendMail; //
let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.sendMail(
    sendMail,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **sendMail** | **SendMail**|  | |
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**GenericResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Email queued successfully. |  -  |
|**400** | The specified resource was not found |  -  |
|**401** | Unauthorized |  -  |
|**404** | The specified resource was not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMailAlert**
> SuccessTextResponse updateMailAlert(mailAlertUpdateRequest, )

Updates a single alert row by `alert_id`. Handler verifies the alert belongs to this service+module before writing. Sibling ops: `getMailAlerts`, `createMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertUpdateRequest`):** - `alert_id` (integer, required) — from `getMailAlerts`. - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    MailAlertUpdateRequest
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let mailAlertUpdateRequest: MailAlertUpdateRequest; //
let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.updateMailAlert(
    mailAlertUpdateRequest,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **mailAlertUpdateRequest** | **MailAlertUpdateRequest**|  | |
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**SuccessTextResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A response indicating the operation completed successfully with a text message. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMailInfo**
> SuccessTextResponse updateMailInfo()

POST mutation hook for the Mail Baby service detail page. Currently delegates to the same `View::go()` handler as `getMailInfo` — placeholder for future field updates. Does NOT rotate credentials (use `resetMailPassword`) and does NOT change billing (use `/billing` endpoints). Sibling ops: `getMailInfo`, `mailCancel`, `resetMailPassword`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body:** Form fields.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Read:** `getMailInfo`. - **Rotate password:** `resetMailPassword`. 

### Example

```typescript
import {
    MailApi,
    Configuration
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: string; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)

const { status, data } = await apiInstance.updateMailInfo(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|


### Return type

**SuccessTextResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A response indicating the operation completed successfully with a text message. |  -  |
|**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRule**
> GenericResponse updateRule(denyRuleNew, )

Updates `type` and `data` on a single `mail_spam` row. Query is bounded by `id={rule} AND user=\'{mail_username}\'` so cross-tenant updates are impossible. Same validation rules as `addRule`. Sibling ops: `getRules`, `addRule`, `deleteRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — see `addRule` for type-specific validation.  **Returns:** `\"Record updated successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    DenyRuleNew
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let denyRuleNew: DenyRuleNew; //
let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)
let rule: string; //The ID of the deny rule to update. (default to undefined)

const { status, data } = await apiInstance.updateRule(
    denyRuleNew,
    id,
    rule
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **denyRuleNew** | **DenyRuleNew**|  | |
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|
| **rule** | [**string**] | The ID of the deny rule to update. | defaults to undefined|


### Return type

**GenericResponse**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Deny rule updated successfully. |  -  |
|**400** | The specified resource was not found |  -  |
|**401** | Unauthorized |  -  |
|**404** | The specified resource was not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewMailLog**
> MailLog viewMailLog()

Paginated search over ZoneMTA\'s `mail_messagestore` joined with `mail_senderdelivered` and `mail_queuerelease`. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: `getStats`, `getMailDeliverability`, `delistBlock` (clear a block surfaced by a bounce).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList` (omit to span all owned mail users — admin-only).  **Query params:** - `from`, `to` (string) — envelope address, exact match. - `headerfrom`, `replyto` (string) — header address, exact match; validated as email. - `subject` (string) — LIKE match on subject. - `mailid` (string, 18–19 chars) — relay id, exact. - `messageId` (string) — Message-ID header, substring match. - `origin` (string) — submitter IP, exact. - `mx` (string) — destination MX hostname, LIKE. - `delivered` (integer 0/1). - `startDate`, `endDate` (Unix timestamp or `strtotime`-parseable string). - `skip` (integer, default 0), `limit` (integer 1–10000, default 100). - `sort` (`time`), `dir` (`asc`/`desc`, default `desc`). - `groupby` (`recipient` default — one row per delivery attempt; `message` — one row per `_id`).  **Returns** (schema `MailLog`): `{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` bad input, `401`. 

### Example

```typescript
import {
    MailApi,
    Configuration,
    ViewMailLogStartDateParameter,
    ViewMailLogStartDateParameter
} from '@interserver/myadmin-client';

const configuration = new Configuration();
const apiInstance = new MailApi(configuration);

let id: number; //The mail service ID. Use `mail_id` from `GET /mail`. (default to undefined)
let id2: number; //The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from `GET /mail` or `GET /mail/{id}`. (optional) (default to undefined)
let origin: string; //Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address. (optional) (default to undefined)
let mx: string; //Filter by the MX hostname the relay attempted delivery to.  For example `mx.google.com` would return messages destined for Gmail recipients. Maps to `mxHostname` in the `MailLogEntry` response. (optional) (default to undefined)
let from: string; //Filter by SMTP envelope `MAIL FROM` address (exact match).  This is the address the relay used for bounce handling and may differ from the `From:` message header.  For header-level filtering use `headerfrom`. (optional) (default to undefined)
let to: string; //Filter by SMTP envelope `RCPT TO` address (exact match).  This is the delivery address used by the relay and may differ from the `To:` header when BCC recipients are involved. (optional) (default to undefined)
let subject: string; //Filter by email `Subject` header (exact match).  MIME-encoded subjects are decoded automatically in the response. (optional) (default to undefined)
let mailid: string; //Filter by the relay-assigned mail ID string (exact match).  This corresponds to the `id` field in `MailLogEntry` and to the `text` value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as `185997065c60008840`. (optional) (default to undefined)
let messageId: string; //Filter by the `Message-ID` email header using a substring (case-insensitive) match. The `Message-ID` is assigned by the sending mail client and is visible in the `messageId` field of `MailLogEntry`. (optional) (default to undefined)
let replyto: string; //Filter by the `Reply-To` message header address (exact match).  Only returns messages where this header was explicitly set. (optional) (default to undefined)
let headerfrom: string; //Filter by the `From` message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope `from` parameter when sending on behalf of another address. (optional) (default to undefined)
let delivered: 0 | 1; //Filter by delivery status.  `1` returns only messages that were successfully delivered to the destination MX.  `0` returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status. (optional) (default to undefined)
let skip: number; //Number of records to skip for pagination.  Use in combination with `limit` to page through large result sets.  Defaults to `0` (no skip). (optional) (default to 0)
let limit: number; //Maximum number of records to return per page.  Defaults to `100`. Maximum allowed value is `10000`.  The response also includes a `total` field with the full matched count so you can calculate the number of pages. (optional) (default to 100)
let startDate: ViewMailLogStartDateParameter; //Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-15` or `last monday`.  Messages with a `time` value **greater than or equal to** this value will be included. (optional) (default to undefined)
let endDate: ViewMailLogStartDateParameter; //Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-31` or `yesterday`. Messages with a `time` value **less than or equal to** this value will be included. (optional) (default to undefined)
let sort: 'time'; //Field to sort results by.  Currently only `time` is supported (sorts by internal row ID which corresponds to chronological order). (optional) (default to 'time')
let dir: 'asc' | 'desc'; //Sort direction.  `desc` returns newest first (default), `asc` returns oldest first. (optional) (default to 'desc')
let groupby: 'message' | 'recipient'; //Controls how results are grouped.  `recipient` (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own `recipient`, `delivered`, `response`, and delivery metadata.  `message` collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The `total` count in the response matches the grouping mode. (optional) (default to 'recipient')

const { status, data } = await apiInstance.viewMailLog(
    id,
    id2,
    origin,
    mx,
    from,
    to,
    subject,
    mailid,
    messageId,
    replyto,
    headerfrom,
    delivered,
    skip,
    limit,
    startDate,
    endDate,
    sort,
    dir,
    groupby
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] | The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | defaults to undefined|
| **id2** | [**number**] | The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from &#x60;GET /mail&#x60; or &#x60;GET /mail/{id}&#x60;. | (optional) defaults to undefined|
| **origin** | [**string**] | Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address. | (optional) defaults to undefined|
| **mx** | [**string**] | Filter by the MX hostname the relay attempted delivery to.  For example &#x60;mx.google.com&#x60; would return messages destined for Gmail recipients. Maps to &#x60;mxHostname&#x60; in the &#x60;MailLogEntry&#x60; response. | (optional) defaults to undefined|
| **from** | [**string**] | Filter by SMTP envelope &#x60;MAIL FROM&#x60; address (exact match).  This is the address the relay used for bounce handling and may differ from the &#x60;From:&#x60; message header.  For header-level filtering use &#x60;headerfrom&#x60;. | (optional) defaults to undefined|
| **to** | [**string**] | Filter by SMTP envelope &#x60;RCPT TO&#x60; address (exact match).  This is the delivery address used by the relay and may differ from the &#x60;To:&#x60; header when BCC recipients are involved. | (optional) defaults to undefined|
| **subject** | [**string**] | Filter by email &#x60;Subject&#x60; header (exact match).  MIME-encoded subjects are decoded automatically in the response. | (optional) defaults to undefined|
| **mailid** | [**string**] | Filter by the relay-assigned mail ID string (exact match).  This corresponds to the &#x60;id&#x60; field in &#x60;MailLogEntry&#x60; and to the &#x60;text&#x60; value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as &#x60;185997065c60008840&#x60;. | (optional) defaults to undefined|
| **messageId** | [**string**] | Filter by the &#x60;Message-ID&#x60; email header using a substring (case-insensitive) match. The &#x60;Message-ID&#x60; is assigned by the sending mail client and is visible in the &#x60;messageId&#x60; field of &#x60;MailLogEntry&#x60;. | (optional) defaults to undefined|
| **replyto** | [**string**] | Filter by the &#x60;Reply-To&#x60; message header address (exact match).  Only returns messages where this header was explicitly set. | (optional) defaults to undefined|
| **headerfrom** | [**string**] | Filter by the &#x60;From&#x60; message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope &#x60;from&#x60; parameter when sending on behalf of another address. | (optional) defaults to undefined|
| **delivered** | [**0 | 1**]**Array<0 &#124; 1 &#124; 11184809>** | Filter by delivery status.  &#x60;1&#x60; returns only messages that were successfully delivered to the destination MX.  &#x60;0&#x60; returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status. | (optional) defaults to undefined|
| **skip** | [**number**] | Number of records to skip for pagination.  Use in combination with &#x60;limit&#x60; to page through large result sets.  Defaults to &#x60;0&#x60; (no skip). | (optional) defaults to 0|
| **limit** | [**number**] | Maximum number of records to return per page.  Defaults to &#x60;100&#x60;. Maximum allowed value is &#x60;10000&#x60;.  The response also includes a &#x60;total&#x60; field with the full matched count so you can calculate the number of pages. | (optional) defaults to 100|
| **startDate** | **ViewMailLogStartDateParameter** | Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-15&#x60; or &#x60;last monday&#x60;.  Messages with a &#x60;time&#x60; value **greater than or equal to** this value will be included. | (optional) defaults to undefined|
| **endDate** | **ViewMailLogStartDateParameter** | Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-31&#x60; or &#x60;yesterday&#x60;. Messages with a &#x60;time&#x60; value **less than or equal to** this value will be included. | (optional) defaults to undefined|
| **sort** | [**&#39;time&#39;**]**Array<&#39;time&#39; &#124; &#39;11184809&#39;>** | Field to sort results by.  Currently only &#x60;time&#x60; is supported (sorts by internal row ID which corresponds to chronological order). | (optional) defaults to 'time'|
| **dir** | [**&#39;asc&#39; | &#39;desc&#39;**]**Array<&#39;asc&#39; &#124; &#39;desc&#39; &#124; &#39;11184809&#39;>** | Sort direction.  &#x60;desc&#x60; returns newest first (default), &#x60;asc&#x60; returns oldest first. | (optional) defaults to 'desc'|
| **groupby** | [**&#39;message&#39; | &#39;recipient&#39;**]**Array<&#39;message&#39; &#124; &#39;recipient&#39; &#124; &#39;11184809&#39;>** | Controls how results are grouped.  &#x60;recipient&#x60; (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own &#x60;recipient&#x60;, &#x60;delivered&#x60;, &#x60;response&#x60;, and delivery metadata.  &#x60;message&#x60; collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The &#x60;total&#x60; count in the response matches the grouping mode. | (optional) defaults to 'recipient'|


### Return type

**MailLog**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Paginated list of mail log entries matching the specified filters. |  -  |
|**400** | bad input parameter |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


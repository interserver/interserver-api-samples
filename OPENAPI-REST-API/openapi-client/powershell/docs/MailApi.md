# InterserverApi.InterserverApi\Api.MailApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Mail**](MailApi.md#Add-Mail) | **POST** /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning
[**Add-Rule**](MailApi.md#Add-Rule) | **POST** /mail/{id}/rules | Create a new deny rule to auto-block matching submissions
[**New-MailAlert**](MailApi.md#New-MailAlert) | **POST** /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events
[**Invoke-DeleteMailAlert**](MailApi.md#Invoke-DeleteMailAlert) | **DELETE** /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery)
[**Invoke-DeleteRule**](MailApi.md#Invoke-DeleteRule) | **DELETE** /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
[**Invoke-DelistBlock**](MailApi.md#Invoke-DelistBlock) | **POST** /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists
[**Get-MailAlerts**](MailApi.md#Get-MailAlerts) | **GET** /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service
[**Get-MailBlocks**](MailApi.md#Get-MailBlocks) | **GET** /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user
[**Get-MailDelist**](MailApi.md#Get-MailDelist) | **GET** /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting
[**Get-MailDeliverability**](MailApi.md#Get-MailDeliverability) | **GET** /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain)
[**Get-MailInfo**](MailApi.md#Get-MailInfo) | **GET** /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials
[**Get-MailInvoices**](MailApi.md#Get-MailInvoices) | **GET** /mail/{id}/invoices | List billing invoices linked to this Mail Baby service
[**Get-MailList**](MailApi.md#Get-MailList) | **GET** /mail | List every Mail Baby SMTP relay service on the account
[**Get-MailWelcomeEmail**](MailApi.md#Get-MailWelcomeEmail) | **GET** /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info
[**Get-NewMail**](MailApi.md#Get-NewMail) | **GET** /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata
[**Get-Rules**](MailApi.md#Get-Rules) | **GET** /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service
[**Get-Stats**](MailApi.md#Get-Stats) | **GET** /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
[**Send-Cancel**](MailApi.md#Send-Cancel) | **DELETE** /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice
[**Submit-MailDelist**](MailApi.md#Submit-MailDelist) | **POST** /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists
[**Send-Mail**](MailApi.md#Send-Mail) | **PUT** /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge
[**Reset-MailPassword**](MailApi.md#Reset-MailPassword) | **GET** /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner
[**Send-AdvMail**](MailApi.md#Send-AdvMail) | **POST** /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
[**Send-Mail**](MailApi.md#Send-Mail) | **POST** /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay
[**Update-MailAlert**](MailApi.md#Update-MailAlert) | **PUT** /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id
[**Update-MailInfo**](MailApi.md#Update-MailInfo) | **POST** /mail/{id} | POST mutation hook for the Mail Baby service detail page
[**Update-Rule**](MailApi.md#Update-Rule) | **PUT** /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule&#39;s type and match data
[**Invoke-ViewMailLog**](MailApi.md#Invoke-ViewMailLog) | **GET** /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries


<a id="Add-Mail"></a>
# **Add-Mail**
> ServiceOrderPostResponse Add-Mail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MailOrderRequest] <PSCustomObject><br>

Place a new Mail Baby order, generate invoice, and queue provisioning

Step 3 of the Mail Baby order flow. Revalidates via `validate_buy_mail()`, then calls `place_buy_mail()` to create a `Repeat_Invoice` recurring billing row, an initial `invoices` row, and a `mail` service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call `putMail` first. Sibling ops: `getNewMail`, `putMail`, `getMailInfo`, `initiatePayment`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail`. - `coupon` (string, optional). - `comment` (string, optional) — saved on the order row.  **Returns** (on success): `{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}` — pass `real_iids` to `initiatePayment`. On validation failure: `{continue: false, errors: [...]}` with HTTP 200.  **Side effects:** - Inserts `mail` service row in `pending` status. - Inserts `repeat_invoices` + `invoices` rows.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Pay:** `initiatePayment` with `real_iids`. - **Confirm activation:** `getMailInfo` (poll until `mail_status=='active'`). - **Resend credentials:** `getMailWelcomeEmail`.  **Full ordering happy path:** ```text GET /mail/order                                    -> catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -> quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -> { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -> pay (initiatePayment) GET /mail/{serviceId}                              -> poll until mail_status=='active' ``` 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$MailOrderRequest = Initialize-MailOrderRequest -ServiceType 0 -Coupon "MyCoupon" -Comment "MyComment" # MailOrderRequest | 

# Place a new Mail Baby order, generate invoice, and queue provisioning
try {
    $Result = Add-Mail -MailOrderRequest $MailOrderRequest
} catch {
    Write-Host ("Exception occurred when calling Add-Mail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MailOrderRequest** | [**MailOrderRequest**](MailOrderRequest.md)|  | 

### Return type

[**ServiceOrderPostResponse**](ServiceOrderPostResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-Rule"></a>
# **Add-Rule**
> GenericResponse Add-Rule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DenyRuleNew] <PSCustomObject><br>

Create a new deny rule to auto-block matching submissions

Inserts a new `mail_spam` row scoped to this service's `mail_username` so the relay drops matching submissions. Sibling ops: `getRules`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — literal value matched; validation: no quotes, valid domain for `type=domain`, valid email for `type=email`, `[A-Z0-9+_.-]+` for `startswith`.  **Returns:** `""Spam Block Added""`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$DenyRuleNew = Initialize-DenyRuleNew -Type "domain" -VarData "domeinwo@server.guesshost.net" -User "mb20682" # DenyRuleNew | These are the fields needed to create a new email deny rule.

# Create a new deny rule to auto-block matching submissions
try {
    $Result = Add-Rule -Id $Id -DenyRuleNew $DenyRuleNew
} catch {
    Write-Host ("Exception occurred when calling Add-Rule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **DenyRuleNew** | [**DenyRuleNew**](DenyRuleNew.md)| These are the fields needed to create a new email deny rule. | 

### Return type

[**GenericResponse**](GenericResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-MailAlert"></a>
# **New-MailAlert**
> SuccessTextResponse New-MailAlert<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MailAlertRequest] <PSCustomObject><br>

Create a new Mail Baby alert for delivery, bounce, or quota events

Inserts a new alert row via the `Alert` ORM. The new `alert_id` is retrievable via `getMailAlerts`. Sibling ops: `getMailAlerts`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertRequest`):** - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$MailAlertRequest = Initialize-MailAlertRequest -Type "MyType" -Value "MyValue" -To "MyTo" -Enabled "MyEnabled" # MailAlertRequest | 

# Create a new Mail Baby alert for delivery, bounce, or quota events
try {
    $Result = New-MailAlert -Id $Id -MailAlertRequest $MailAlertRequest
} catch {
    Write-Host ("Exception occurred when calling New-MailAlert: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **MailAlertRequest** | [**MailAlertRequest**](MailAlertRequest.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteMailAlert"></a>
# **Invoke-DeleteMailAlert**
> SuccessTextResponse Invoke-DeleteMailAlert<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteMailAlertRequest] <PSCustomObject><br>

Delete a Mail Baby alert by alert_id (hard delete — no recovery)

Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via `createMailAlert` if needed. Sibling ops: `getMailAlerts`, `createMailAlert`, `updateMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields:** - `alert_id` (integer, required) — from `getMailAlerts`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$DeleteMailAlertRequest = Initialize-DeleteMailAlertRequest -AlertId 0 # DeleteMailAlertRequest | 

# Delete a Mail Baby alert by alert_id (hard delete — no recovery)
try {
    $Result = Invoke-DeleteMailAlert -Id $Id -DeleteMailAlertRequest $DeleteMailAlertRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteMailAlert: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **DeleteMailAlertRequest** | [**DeleteMailAlertRequest**](DeleteMailAlertRequest.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteRule"></a>
# **Invoke-DeleteRule**
> GenericResponse Invoke-DeleteRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Rule] <String><br>

Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)

Hard-deletes a single `mail_spam` row scoped to this service's `mail_username`. **Irreversible** — no audit copy preserved. Query filter `id={rule} AND user='{mail_username}'` prevents cross-tenant deletes; passing a `rule` belonging to a different mail order is silently a no-op (still returns success). Sibling ops: `getRules`, `addRule`, `updateRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Returns:** `""Block deleted successfully.""`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$Rule = "34" # String | The ID of the Rules entry.

# Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
try {
    $Result = Invoke-DeleteRule -Id $Id -Rule $Rule
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **Rule** | **String**| The ID of the Rules entry. | 

### Return type

[**GenericResponse**](GenericResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DelistBlock"></a>
# **Invoke-DelistBlock**
> GenericResponse Invoke-DelistBlock<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Email] <String><br>

Delist a sender email from rspamd / mailchannels / mailbaby block lists

Removes block rows for the supplied email across the three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Functionally equivalent to `postMailDelist` but uses `email` parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: `getMailBlocks`, `getMailDelist`, `postMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `EmailAddress`):** - `email` (string, required) — sender address; validated via `FILTER_VALIDATE_EMAIL`.  **Returns:** `{status: ""ok"", text: ""Email '...' removed from block list""}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` invalid email, `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$Email = "MyEmail" # String | an email address (optional)

# Delist a sender email from rspamd / mailchannels / mailbaby block lists
try {
    $Result = Invoke-DelistBlock -Id $Id -Email $Email
} catch {
    Write-Host ("Exception occurred when calling Invoke-DelistBlock: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **Email** | **String**| an email address | [optional] 

### Return type

[**GenericResponse**](GenericResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MailAlerts"></a>
# **Get-MailAlerts**
> MailAlertsResponse Get-MailAlerts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

List configured delivery/bounce/quota alerts for one Mail Baby service

Returns every alert row from `alerts` matching this service. Each row carries `alert_id` (use with PUT/DELETE), `alert_type`, `alert_value` (threshold), `alert_to` (notification email), `alert_enabled`, and timestamps. Sibling ops: `createMailAlert`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailAlertsResponse`): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# List configured delivery/bounce/quota alerts for one Mail Baby service
try {
    $Result = Get-MailAlerts -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-MailAlerts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**MailAlertsResponse**](MailAlertsResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MailBlocks"></a>
# **Get-MailBlocks**
> MailBlocks Get-MailBlocks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

List recent local-blocklist hits and spam-trap captures for the mail user

Returns relay-side block events for the SMTP user behind `mail_id` — the last 24 hours of `LOCAL_BL_RCPT` and `MBTRAP` rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing `@` / `smtp` / `socks5` / `socks4` more than 4 times). Use the `from` value with `delistBlock` or `postMailDelist` to clear a block. Sibling ops: `delistBlock`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailBlocks`): - `local` (array) — rspamd `LOCAL_BL_RCPT` hits: `{date, from, messageId, subject, to}`. - `mbtrap` (array) — spam-trap captures (`MBTRAP` symbol): same shape. - `subject` (array) — senders flagged by subject-line heuristic: `{from, subject}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != ""active""`.  **Related calls:** - **Clear a block:** `delistBlock` (POST `/mail/{id}/blocks/delete`). - **Broader delist UI:** `getMailDelist`, `postMailDelist`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# List recent local-blocklist hits and spam-trap captures for the mail user
try {
    $Result = Get-MailBlocks -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-MailBlocks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**MailBlocks**](MailBlocks.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MailDelist"></a>
# **Get-MailDelist**
> MailDelistResponse Get-MailDelist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Read blocklist diagnostics and find senders eligible for delisting

Returns a richer diagnostic snapshot than `getMailBlocks` — intended for the delist UI. Use any `SMTPFrom`/`from` value as the `unblock` field for `postMailDelist`. Sibling ops: `postMailDelist`, `getMailBlocks`, `delistBlock`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailDelistResponse`): - `id` (integer) — `mail_id` echo. - `local`, `mbtrap` (array) — last 24h rspamd hits with capitalized keys (`Date`, `SMTPFrom`, `MessageId`, `Subject`, `MimeRecipients`). - `subject` (array) — credential-leak-heuristic firings (3-day window). - `manual` (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# Read blocklist diagnostics and find senders eligible for delisting
try {
    $Result = Get-MailDelist -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-MailDelist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**MailDelistResponse**](MailDelistResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MailDeliverability"></a>
# **Get-MailDeliverability**
> MailDeliverabilityResponse Get-MailDeliverability<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Read delivered vs bounced totals broken down by sender (or by recipient domain)

Returns deliverability analytics from `MailDeliveryStats` (Dragonfly cache) for the SMTP user behind `mail_id`. Default pivot is by sender; pass `?filter_domain=1` to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: `getStats`, `viewMailLog`, `getMailBlocks`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `filter_domain` (string `1`, optional) — pivot by recipient domain instead of sender.  **Returns** (schema `MailDeliverabilityResponse`): - `stat`: `{delivered, bounced, percent}` — totals and bounce ratio. - `header` (string), `col1` (string) — table headers. - `table_data` (array) — rows of `[<sender-or-domain>, bounced, delivered, bouncePercent]`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# Read delivered vs bounced totals broken down by sender (or by recipient domain)
try {
    $Result = Get-MailDeliverability -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-MailDeliverability: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**MailDeliverabilityResponse**](MailDeliverabilityResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MailInfo"></a>
# **Get-MailInfo**
> MailSchema Get-MailInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Read full detail for one Mail Baby service including SMTP credentials

Returns the full `ViewMail` payload for one Mail Baby service — `serviceInfo`, `serviceType`, and `client_links` (URLs rewritten to API paths, e.g. `view_mail_log` → `log`). Admin fields (`admin_links`, `settings`, `csrf`) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: `getMailList`, `updateMailInfo`, `mailCancel`, `resetMailPassword`, `getMailWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailSchema`): - `serviceInfo` — `mail_id`, `mail_username` (e.g. `mb1234`), `mail_status`, `mail_invoice`, `mail_custid`, dates, currency. - `serviceType` — plan row (`services_ourcost` stripped). - `client_links` (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Send:** `sendMail` / `sendAdvMail`. - **Rotate password:** `resetMailPassword`. - **Reset credentials:** `getMailWelcomeEmail`. - **Cancel:** `mailCancel`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# Read full detail for one Mail Baby service including SMTP credentials
try {
    $Result = Get-MailInfo -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-MailInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**MailSchema**](MailSchema.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MailInvoices"></a>
# **Get-MailInvoices**
> ChargeInvoiceRows Get-MailInvoices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

List billing invoices linked to this Mail Baby service

Returns every invoice associated with this `mail_id` via the shared `InvoicesList` workflow. Use to render per-service billing history or find unpaid invoices to pay via `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, `addMail`, `mailCancel`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `ChargeInvoiceRows` — array of `{id, amount, currency, paid, date, due_date, description, module: ""mail"", service}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404 Invalid Service`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# List billing invoices linked to this Mail Baby service
try {
    $Result = Get-MailInvoices -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-MailInvoices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ChargeInvoiceRows**](ChargeInvoiceRows.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MailList"></a>
# **Get-MailList**
> MailRow[] Get-MailList<br>

List every Mail Baby SMTP relay service on the account

Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a `mail_id` to pass to other Mail endpoints. Filtered server-side by `mail_custid`. Sibling ops: `getMailInfo`, `getStats`, `viewMailLog`, `getMailDeliverability`, `getMailBlocks`, `getMailInvoices`, `addMail`.  **Path/Query/Body:** None.  **Returns:** Array of `MailRow`: - `mail_id` (integer) — canonical id. - `mail_username` (string) — SMTP username (e.g. `mb1234`). - `mail_status` (string enum) — `active` / `pending` / `canceled` / `suspended`. - `services_name` (string) — plan label. - `repeat_invoices_cost` (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-service detail:** `getMailInfo`. - **Send mail:** `sendMail` / `sendAdvMail`. - **Reputation:** `getMailDeliverability` / `getMailBlocks` / `getMailDelist`. - **Order a new service:** `getNewMail` → `putMail` → `addMail`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"


# List every Mail Baby SMTP relay service on the account
try {
    $Result = Get-MailList
} catch {
    Write-Host ("Exception occurred when calling Get-MailList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MailRow[]**](MailRow.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MailWelcomeEmail"></a>
# **Get-MailWelcomeEmail**
> SuccessTextResponse Get-MailWelcomeEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Resend the Mail Baby welcome email with SMTP credentials and setup info

Re-runs the `mail_welcome_email` plugin function — composes and sends the standard welcome email (SMTP host `relay.mailbaby.net`, port, username `mb{mail_id}`, current password, configuration tips) to the account-on-file. Use after `resetMailPassword` to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: `resetMailPassword`, `getMailInfo`. Cross-module welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getDomainsWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `{text: ""Welcome Email has been resent.""}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# Resend the Mail Baby welcome email with SMTP credentials and setup info
try {
    $Result = Get-MailWelcomeEmail -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-MailWelcomeEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-NewMail"></a>
# **Get-NewMail**
> MailOrder Get-NewMail<br>

Read the Mail Baby order catalog — plans, package costs, service-type metadata

Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: `packageCosts` keyed by `services_id` (only buyable services where `services_buyable=1`) and the full `serviceTypes` map. Read-only. Pricing is normalized to the customer's currency via `getCurrency()`. Sibling ops: `putMail`, `addMail`, `getMailList`.  **Path/Query/Body:** None.  **Returns** (schema `MailOrder`): - `packageCosts` (object) — `{<services_id>: <cost>}` per buyable plan. - `serviceTypes` (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Next:** `putMail` (validate + quote — no charge), `addMail` (place order). 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"


# Read the Mail Baby order catalog — plans, package costs, service-type metadata
try {
    $Result = Get-NewMail
} catch {
    Write-Host ("Exception occurred when calling Get-NewMail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MailOrder**](MailOrder.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Rules"></a>
# **Get-Rules**
> DenyRuleRecord[] Get-Rules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

List configured deny rules (sender/recipient blocks) for a Mail Baby service

Returns every `mail_spam` row scoped to this service's `mail_username` — local sender/recipient block rules the customer has configured. Sibling ops: `addRule`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** Array of `DenyRuleRecord` — `{id, user, type, data, created}`. `type` values: - `domain` — block by sender domain. - `email` — block by exact sender email. - `startswith` — block when sender local-part starts with a string. - `destination` — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# List configured deny rules (sender/recipient blocks) for a Mail Baby service
try {
    $Result = Get-Rules -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Rules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**DenyRuleRecord[]**](DenyRuleRecord.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Stats"></a>
# **Get-Stats**
> MailStatsType Get-Stats<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Time] <String><br>

Read Mail Baby usage counts, send volume totals, top destinations, and projected cost

Returns aggregate usage and cost metrics for the SMTP user behind `mail_id` from the ZoneMTA `mail_messagestore` / `mail_senderdelivered` tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: `viewMailLog`, `getMailDeliverability`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `time` (string enum, optional, default `1h`) — window: `all` / `billing` (current invoice cycle) / `month` / `7d` / `24h` / `1d` / `1h`.  **Returns** (schema `MailStatsType`): - `time` (string) — echo of selected window. - `usage` (integer) — full-billing-cycle send count. - `currency`, `currencySymbol` (string). - `cost` (decimal) — projected = base + `$0.20 / 1000 emails`. - `received`, `sent` (integer). - `volume.to`, `volume.from`, `volume.ip` (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid or missing mail order id`, `401`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$Time = "all" # String | The timeframe for the statistics. (optional)

# Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
try {
    $Result = Get-Stats -Id $Id -Time $Time
} catch {
    Write-Host ("Exception occurred when calling Get-Stats: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **Time** | **String**| The timeframe for the statistics. | [optional] 

### Return type

[**MailStatsType**](MailStatsType.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-Cancel"></a>
# **Send-Cancel**
> MailCancel200Response Send-Cancel<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Cancel a Mail Baby service and stop the recurring invoice

Cancels the Mail Baby service through the shared `Billing\CancelService::go($id)` flow with `module='mail'`. SMTP credentials are deactivated, the service transitions to canceled, the `repeat_invoice` is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via `addMail`. Sibling ops: `getMailInfo`, `getMailInvoices`, `addMail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `MailCancelResponse`.  **Side effects:** - Sets `mail_status='canceled'`. - Marks `repeat_invoices` non-renewing. - ZoneMTA-side: stops accepting new submissions for `mb{mail_id}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Sibling cancels:** `VPSCancel`, `CancelDomain`, `webhostingCancel`, etc. - **Re-provision:** `addMail`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# Cancel a Mail Baby service and stop the recurring invoice
try {
    $Result = Send-Cancel -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Send-Cancel: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**MailCancel200Response**](MailCancel200Response.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-MailDelist"></a>
# **Submit-MailDelist**
> SuccessTextResponse Submit-MailDelist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MailDelistRequest] <PSCustomObject><br>

Delist a sender from rspamd / mailchannels / mailbaby block lists

Removes all block rows for one sender email across three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: `getMailDelist`, `delistBlock` (alias at `/mail/{id}/blocks/delete`), `getMailBlocks`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailDelistRequest`):** - `unblock` (string, required) — sender email from `getMailDelist`/`getMailBlocks`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Missing parameter unblock`, `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$MailDelistRequest = Initialize-MailDelistRequest -Unblock "MyUnblock" # MailDelistRequest | 

# Delist a sender from rspamd / mailchannels / mailbaby block lists
try {
    $Result = Submit-MailDelist -Id $Id -MailDelistRequest $MailDelistRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-MailDelist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **MailDelistRequest** | [**MailDelistRequest**](MailDelistRequest.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-Mail"></a>
# **Send-Mail**
> void Send-Mail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MailOrderRequest] <PSCustomObject><br>

Validate Mail Baby order, quote pricing, and verify coupon — no charge

Step 2 of the Mail Baby order flow. Dry-runs the order through `validate_buy_mail()` without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before `addMail`. Sibling ops: `getNewMail`, `addMail`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail.packageCosts` keys. - `coupon` (string, optional) — coupon code.  **Returns:** - `continue` (bool) — `true` if order can safely be POSTed. - `errors` (array) — validation messages. - `serviceType`, `serviceCost`, `originalCost`, `repeatServiceCost` (numeric). - `password` (string) — auto-generated SMTP password preview. - `introFrequency` (integer). - `coupon`, `couponCode` (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - `200` with `continue=false` and `errors[]` — validation problems. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `getNewMail` (catalog). - **Place order:** `addMail`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$MailOrderRequest = Initialize-MailOrderRequest -ServiceType 0 -Coupon "MyCoupon" -Comment "MyComment" # MailOrderRequest | 

# Validate Mail Baby order, quote pricing, and verify coupon — no charge
try {
    $Result = Send-Mail -MailOrderRequest $MailOrderRequest
} catch {
    Write-Host ("Exception occurred when calling Send-Mail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MailOrderRequest** | [**MailOrderRequest**](MailOrderRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Reset-MailPassword"></a>
# **Reset-MailPassword**
> SuccessTextResponse Reset-MailPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Rotate the SMTP password and email the new credential to the account owner

Generates a new 20-char SMTP password (lower/upper/digits via `generate_password`), writes it to the ZoneMTA Mongo `users` collection for username `mb{mail_id}`, logs the change to `App::history()`, and emails the result to the account-on-file via `client_email.tpl`. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via `getMailWelcomeEmail` or `getMailInfo`. Sibling ops: `getMailWelcomeEmail`, `getMailInfo`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `SuccessTextResponse`.  **Side effects:** - Mongo update on ZoneMTA `users` for `mb{mail_id}`. - `App::history()` audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.

# Rotate the SMTP password and email the new credential to the account owner
try {
    $Result = Reset-MailPassword -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Reset-MailPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-AdvMail"></a>
# **Send-AdvMail**
> GenericResponse Send-AdvMail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendMailAdv] <PSCustomObject><br>

Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient

Submits an outbound message through `relay.mailbaby.net:25` using the service's SMTP credentials (fetched via `mail_get_password`). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, `sendMail` is the lighter option. Sibling ops: `sendMail`, `viewMailLog` (find queued message), `getMailDeliverability` (analyze bounces).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMailAdv`):** - `from` (string or `{email, name}`, required). - `to` (array of strings or `{email, name}` objects, required). - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present. - `replyto` (array, optional) — same shape as `to`. - `cc`, `bcc` (array, optional) — same shape as `to`. - `attachments` (array, optional) — each `{filename, data}` where `data` is base64-encoded; added via `addStringAttachment`.  **Returns:** `{status: ""ok"", text: ""Email queued successfully""}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `400` with PHPMailer `ErrorInfo` on send failure or missing required field. - `401` — unauthenticated. - `404 Invalid Service Passed`. - `409 Service is not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$EmailAddressName = Initialize-EmailAddressName -Email "user@domain.com" -Name "John Smith"
$MailAttachment = Initialize-MailAttachment -Filename "message.txt" -VarData "aGVsbG8gdGhlcmUK"
$SendMailAdv = Initialize-SendMailAdv -Subject "Your Package has been Delivered!" -Body "The package you ordered on 2021-01-23 has been delivered. If the package is broken into many pieces, please blaim someone else." -VarFrom $EmailAddressName -To $EmailAddressName -Replyto $EmailAddressName -Cc $EmailAddressName -Bcc $EmailAddressName -Attachments $MailAttachment -Id 5000 # SendMailAdv | 

# Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
try {
    $Result = Send-AdvMail -Id $Id -SendMailAdv $SendMailAdv
} catch {
    Write-Host ("Exception occurred when calling Send-AdvMail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **SendMailAdv** | [**SendMailAdv**](SendMailAdv.md)|  | 

### Return type

[**GenericResponse**](GenericResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-Mail"></a>
# **Send-Mail**
> GenericResponse Send-Mail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendMail] <PSCustomObject><br>

Send a simple single-recipient email through the Mail Baby SMTP relay

Sends a single-recipient transactional email through `relay.mailbaby.net:25` authenticated as this `mail_id`. Body fields are the minimum needed for a plain send; Reply-To is auto-set to `from`. For multi-recipient sends, CC/BCC, named addresses, or attachments use `sendAdvMail` instead. Sibling ops: `sendAdvMail`, `viewMailLog`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMail`):** - `to` (string, required) — recipient email. - `from` (string, required) — sender email. - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present.  **Returns:** `{status: ""ok"", text: ""Email queued successfully""}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` with PHPMailer `ErrorInfo` on send failure or missing required field, `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$SendMail = Initialize-SendMail -To "johndoe@company.com" -VarFrom "janedoe@company.com" -Subject "Attention Client" -Body "This is an email to inform you that something noteworthy happened." # SendMail | 

# Send a simple single-recipient email through the Mail Baby SMTP relay
try {
    $Result = Send-Mail -Id $Id -SendMail $SendMail
} catch {
    Write-Host ("Exception occurred when calling Send-Mail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **SendMail** | [**SendMail**](SendMail.md)|  | 

### Return type

[**GenericResponse**](GenericResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-MailAlert"></a>
# **Update-MailAlert**
> SuccessTextResponse Update-MailAlert<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MailAlertUpdateRequest] <PSCustomObject><br>

Update an existing Mail Baby alert by alert_id

Updates a single alert row by `alert_id`. Handler verifies the alert belongs to this service+module before writing. Sibling ops: `getMailAlerts`, `createMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertUpdateRequest`):** - `alert_id` (integer, required) — from `getMailAlerts`. - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$MailAlertUpdateRequest = Initialize-MailAlertUpdateRequest -AlertId 0 -Type "MyType" -Value "MyValue" -To "MyTo" -Enabled "MyEnabled" # MailAlertUpdateRequest | 

# Update an existing Mail Baby alert by alert_id
try {
    $Result = Update-MailAlert -Id $Id -MailAlertUpdateRequest $MailAlertUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Update-MailAlert: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **MailAlertUpdateRequest** | [**MailAlertUpdateRequest**](MailAlertUpdateRequest.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-MailInfo"></a>
# **Update-MailInfo**
> SuccessTextResponse Update-MailInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

POST mutation hook for the Mail Baby service detail page

POST mutation hook for the Mail Baby service detail page. Currently delegates to the same `View::go()` handler as `getMailInfo` — placeholder for future field updates. Does NOT rotate credentials (use `resetMailPassword`) and does NOT change billing (use `/billing` endpoints). Sibling ops: `getMailInfo`, `mailCancel`, `resetMailPassword`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body:** Form fields.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != ""active""`.  **Related calls:** - **Read:** `getMailInfo`. - **Rotate password:** `resetMailPassword`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = "MyId" # String | The mail service ID. Use `mail_id` from `GET /mail`.

# POST mutation hook for the Mail Baby service detail page
try {
    $Result = Update-MailInfo -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Update-MailInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Rule"></a>
# **Update-Rule**
> GenericResponse Update-Rule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Rule] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DenyRuleNew] <PSCustomObject><br>

Update an existing Mail Baby deny rule's type and match data

Updates `type` and `data` on a single `mail_spam` row. Query is bounded by `id={rule} AND user='{mail_username}'` so cross-tenant updates are impossible. Same validation rules as `addRule`. Sibling ops: `getRules`, `addRule`, `deleteRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — see `addRule` for type-specific validation.  **Returns:** `""Record updated successfully.""`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$Rule = "MyRule" # String | The ID of the deny rule to update.
$DenyRuleNew = Initialize-DenyRuleNew -Type "domain" -VarData "domeinwo@server.guesshost.net" -User "mb20682" # DenyRuleNew | 

# Update an existing Mail Baby deny rule's type and match data
try {
    $Result = Update-Rule -Id $Id -Rule $Rule -DenyRuleNew $DenyRuleNew
} catch {
    Write-Host ("Exception occurred when calling Update-Rule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **Rule** | **String**| The ID of the deny rule to update. | 
 **DenyRuleNew** | [**DenyRuleNew**](DenyRuleNew.md)|  | 

### Return type

[**GenericResponse**](GenericResponse.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ViewMailLog"></a>
# **Invoke-ViewMailLog**
> MailLog Invoke-ViewMailLog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id2] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Origin] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mx] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Subject] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mailid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MessageId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Replyto] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Headerfrom] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Delivered] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Dir] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groupby] <String><br>

Search and paginate per-message Mail Baby delivery log entries

Paginated search over ZoneMTA's `mail_messagestore` joined with `mail_senderdelivered` and `mail_queuerelease`. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: `getStats`, `getMailDeliverability`, `delistBlock` (clear a block surfaced by a bounce).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList` (omit to span all owned mail users — admin-only).  **Query params:** - `from`, `to` (string) — envelope address, exact match. - `headerfrom`, `replyto` (string) — header address, exact match; validated as email. - `subject` (string) — LIKE match on subject. - `mailid` (string, 18–19 chars) — relay id, exact. - `messageId` (string) — Message-ID header, substring match. - `origin` (string) — submitter IP, exact. - `mx` (string) — destination MX hostname, LIKE. - `delivered` (integer 0/1). - `startDate`, `endDate` (Unix timestamp or `strtotime`-parseable string). - `skip` (integer, default 0), `limit` (integer 1–10000, default 100). - `sort` (`time`), `dir` (`asc`/`desc`, default `desc`). - `groupby` (`recipient` default — one row per delivery attempt; `message` — one row per `_id`).  **Returns** (schema `MailLog`): `{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` bad input, `401`. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: sessionIdCookieAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.X-API-KEY = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-API-KEY = "Bearer"

# Configure API key authorization: sessionIdHeaderAuth
$Configuration.ApiKey.sessionid = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.sessionid = "Bearer"

$Id = 56 # Int32 | The mail service ID. Use `mail_id` from `GET /mail`.
$Id2 = 2604 # Int64 | The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from `GET /mail` or `GET /mail/{id}`. (optional)
$Origin = "1.2.3.4" # String | Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address. (optional)
$Mx = "mx.google.com" # String | Filter by the MX hostname the relay attempted delivery to.  For example `mx.google.com` would return messages destined for Gmail recipients. Maps to `mxHostname` in the `MailLogEntry` response. (optional)
$From = "me@sender.com" # String | Filter by SMTP envelope `MAIL FROM` address (exact match).  This is the address the relay used for bounce handling and may differ from the `From:` message header.  For header-level filtering use `headerfrom`. (optional)
$To = "you@receiver.com" # String | Filter by SMTP envelope `RCPT TO` address (exact match).  This is the delivery address used by the relay and may differ from the `To:` header when BCC recipients are involved. (optional)
$Subject = "Your order has shipped" # String | Filter by email `Subject` header (exact match).  MIME-encoded subjects are decoded automatically in the response. (optional)
$Mailid = "185997065c60008840" # String | Filter by the relay-assigned mail ID string (exact match).  This corresponds to the `id` field in `MailLogEntry` and to the `text` value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as `185997065c60008840`. (optional)
$MessageId = "<abc123@yourdomain.com>" # String | Filter by the `Message-ID` email header using a substring (case-insensitive) match. The `Message-ID` is assigned by the sending mail client and is visible in the `messageId` field of `MailLogEntry`. (optional)
$Replyto = "replies@sender.com" # String | Filter by the `Reply-To` message header address (exact match).  Only returns messages where this header was explicitly set. (optional)
$Headerfrom = "newsletter@sender.com" # String | Filter by the `From` message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope `from` parameter when sending on behalf of another address. (optional)
$Delivered = "0" # Int32 | Filter by delivery status.  `1` returns only messages that were successfully delivered to the destination MX.  `0` returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status. (optional)
$Skip = 0 # Int32 | Number of records to skip for pagination.  Use in combination with `limit` to page through large result sets.  Defaults to `0` (no skip). (optional) (default to 0)
$Limit = 100 # Int32 | Maximum number of records to return per page.  Defaults to `100`. Maximum allowed value is `10000`.  The response also includes a `total` field with the full matched count so you can calculate the number of pages. (optional) (default to 100)
$ViewMailLogStartDateParameter = Initialize-ViewMailLogStartDateParameter # ViewMailLogStartDateParameter | Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-15` or `last monday`.  Messages with a `time` value **greater than or equal to** this value will be included. (optional)
 # ViewMailLogStartDateParameter | Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-31` or `yesterday`. Messages with a `time` value **less than or equal to** this value will be included. (optional)
$Sort = "time" # String | Field to sort results by.  Currently only `time` is supported (sorts by internal row ID which corresponds to chronological order). (optional) (default to "time")
$Dir = "asc" # String | Sort direction.  `desc` returns newest first (default), `asc` returns oldest first. (optional) (default to "desc")
$Groupby = "message" # String | Controls how results are grouped.  `recipient` (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own `recipient`, `delivered`, `response`, and delivery metadata.  `message` collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The `total` count in the response matches the grouping mode. (optional) (default to "recipient")

# Search and paginate per-message Mail Baby delivery log entries
try {
    $Result = Invoke-ViewMailLog -Id $Id -Id2 $Id2 -Origin $Origin -Mx $Mx -From $From -To $To -Subject $Subject -Mailid $Mailid -MessageId $MessageId -Replyto $Replyto -Headerfrom $Headerfrom -Delivered $Delivered -Skip $Skip -Limit $Limit -StartDate $StartDate -EndDate $EndDate -Sort $Sort -Dir $Dir -Groupby $Groupby
} catch {
    Write-Host ("Exception occurred when calling Invoke-ViewMailLog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **Id2** | **Int64**| The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from &#x60;GET /mail&#x60; or &#x60;GET /mail/{id}&#x60;. | [optional] 
 **Origin** | **String**| Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address. | [optional] 
 **Mx** | **String**| Filter by the MX hostname the relay attempted delivery to.  For example &#x60;mx.google.com&#x60; would return messages destined for Gmail recipients. Maps to &#x60;mxHostname&#x60; in the &#x60;MailLogEntry&#x60; response. | [optional] 
 **From** | **String**| Filter by SMTP envelope &#x60;MAIL FROM&#x60; address (exact match).  This is the address the relay used for bounce handling and may differ from the &#x60;From:&#x60; message header.  For header-level filtering use &#x60;headerfrom&#x60;. | [optional] 
 **To** | **String**| Filter by SMTP envelope &#x60;RCPT TO&#x60; address (exact match).  This is the delivery address used by the relay and may differ from the &#x60;To:&#x60; header when BCC recipients are involved. | [optional] 
 **Subject** | **String**| Filter by email &#x60;Subject&#x60; header (exact match).  MIME-encoded subjects are decoded automatically in the response. | [optional] 
 **Mailid** | **String**| Filter by the relay-assigned mail ID string (exact match).  This corresponds to the &#x60;id&#x60; field in &#x60;MailLogEntry&#x60; and to the &#x60;text&#x60; value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as &#x60;185997065c60008840&#x60;. | [optional] 
 **MessageId** | **String**| Filter by the &#x60;Message-ID&#x60; email header using a substring (case-insensitive) match. The &#x60;Message-ID&#x60; is assigned by the sending mail client and is visible in the &#x60;messageId&#x60; field of &#x60;MailLogEntry&#x60;. | [optional] 
 **Replyto** | **String**| Filter by the &#x60;Reply-To&#x60; message header address (exact match).  Only returns messages where this header was explicitly set. | [optional] 
 **Headerfrom** | **String**| Filter by the &#x60;From&#x60; message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope &#x60;from&#x60; parameter when sending on behalf of another address. | [optional] 
 **Delivered** | **Int32**| Filter by delivery status.  &#x60;1&#x60; returns only messages that were successfully delivered to the destination MX.  &#x60;0&#x60; returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status. | [optional] 
 **Skip** | **Int32**| Number of records to skip for pagination.  Use in combination with &#x60;limit&#x60; to page through large result sets.  Defaults to &#x60;0&#x60; (no skip). | [optional] [default to 0]
 **Limit** | **Int32**| Maximum number of records to return per page.  Defaults to &#x60;100&#x60;. Maximum allowed value is &#x60;10000&#x60;.  The response also includes a &#x60;total&#x60; field with the full matched count so you can calculate the number of pages. | [optional] [default to 100]
 **StartDate** | [**ViewMailLogStartDateParameter**](ViewMailLogStartDateParameter.md)| Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-15&#x60; or &#x60;last monday&#x60;.  Messages with a &#x60;time&#x60; value **greater than or equal to** this value will be included. | [optional] 
 **EndDate** | [**ViewMailLogStartDateParameter**](ViewMailLogStartDateParameter.md)| Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-31&#x60; or &#x60;yesterday&#x60;. Messages with a &#x60;time&#x60; value **less than or equal to** this value will be included. | [optional] 
 **Sort** | **String**| Field to sort results by.  Currently only &#x60;time&#x60; is supported (sorts by internal row ID which corresponds to chronological order). | [optional] [default to &quot;time&quot;]
 **Dir** | **String**| Sort direction.  &#x60;desc&#x60; returns newest first (default), &#x60;asc&#x60; returns oldest first. | [optional] [default to &quot;desc&quot;]
 **Groupby** | **String**| Controls how results are grouped.  &#x60;recipient&#x60; (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own &#x60;recipient&#x60;, &#x60;delivered&#x60;, &#x60;response&#x60;, and delivery metadata.  &#x60;message&#x60; collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The &#x60;total&#x60; count in the response matches the grouping mode. | [optional] [default to &quot;recipient&quot;]

### Return type

[**MailLog**](MailLog.md) (PSCustomObject)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


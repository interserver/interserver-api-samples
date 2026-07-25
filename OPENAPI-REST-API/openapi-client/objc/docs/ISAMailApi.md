# ISAMailApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMail**](ISAMailApi.md#addmail) | **POST** /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning
[**addRule**](ISAMailApi.md#addrule) | **POST** /mail/{id}/rules | Create a new deny rule to auto-block matching submissions
[**createMailAlert**](ISAMailApi.md#createmailalert) | **POST** /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events
[**deleteMailAlert**](ISAMailApi.md#deletemailalert) | **DELETE** /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery)
[**deleteRule**](ISAMailApi.md#deleterule) | **DELETE** /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
[**delistBlock**](ISAMailApi.md#delistblock) | **POST** /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists
[**getMailAlerts**](ISAMailApi.md#getmailalerts) | **GET** /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service
[**getMailBlocks**](ISAMailApi.md#getmailblocks) | **GET** /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user
[**getMailDelist**](ISAMailApi.md#getmaildelist) | **GET** /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting
[**getMailDeliverability**](ISAMailApi.md#getmaildeliverability) | **GET** /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain)
[**getMailInfo**](ISAMailApi.md#getmailinfo) | **GET** /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials
[**getMailInvoices**](ISAMailApi.md#getmailinvoices) | **GET** /mail/{id}/invoices | List billing invoices linked to this Mail Baby service
[**getMailList**](ISAMailApi.md#getmaillist) | **GET** /mail | List every Mail Baby SMTP relay service on the account
[**getMailWelcomeEmail**](ISAMailApi.md#getmailwelcomeemail) | **GET** /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info
[**getNewMail**](ISAMailApi.md#getnewmail) | **GET** /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata
[**getRules**](ISAMailApi.md#getrules) | **GET** /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service
[**getStats**](ISAMailApi.md#getstats) | **GET** /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
[**mailCancel**](ISAMailApi.md#mailcancel) | **DELETE** /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice
[**postMailDelist**](ISAMailApi.md#postmaildelist) | **POST** /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists
[**putMail**](ISAMailApi.md#putmail) | **PUT** /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge
[**resetMailPassword**](ISAMailApi.md#resetmailpassword) | **GET** /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner
[**sendAdvMail**](ISAMailApi.md#sendadvmail) | **POST** /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
[**sendMail**](ISAMailApi.md#sendmail) | **POST** /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay
[**updateMailAlert**](ISAMailApi.md#updatemailalert) | **PUT** /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id
[**updateMailInfo**](ISAMailApi.md#updatemailinfo) | **POST** /mail/{id} | POST mutation hook for the Mail Baby service detail page
[**updateRule**](ISAMailApi.md#updaterule) | **PUT** /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule&#39;s type and match data
[**viewMailLog**](ISAMailApi.md#viewmaillog) | **GET** /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries


# **addMail**
```objc
-(NSURLSessionTask*) addMailWithMailOrderRequest: (ISAMailOrderRequest*) mailOrderRequest
        completionHandler: (void (^)(ISAServiceOrderPostResponse* output, NSError* error)) handler;
```

Place a new Mail Baby order, generate invoice, and queue provisioning

Step 3 of the Mail Baby order flow. Revalidates via `validate_buy_mail()`, then calls `place_buy_mail()` to create a `Repeat_Invoice` recurring billing row, an initial `invoices` row, and a `mail` service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call `putMail` first. Sibling ops: `getNewMail`, `putMail`, `getMailInfo`, `initiatePayment`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail`. - `coupon` (string, optional). - `comment` (string, optional) — saved on the order row.  **Returns** (on success): `{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}` — pass `real_iids` to `initiatePayment`. On validation failure: `{continue: false, errors: [...]}` with HTTP 200.  **Side effects:** - Inserts `mail` service row in `pending` status. - Inserts `repeat_invoices` + `invoices` rows.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Pay:** `initiatePayment` with `real_iids`. - **Confirm activation:** `getMailInfo` (poll until `mail_status=='active'`). - **Resend credentials:** `getMailWelcomeEmail`.  **Full ordering happy path:** ```text GET /mail/order                                    -> catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -> quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -> { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -> pay (initiatePayment) GET /mail/{serviceId}                              -> poll until mail_status=='active' ``` 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


ISAMailOrderRequest* mailOrderRequest = [[ISAMailOrderRequest alloc] init]; // 

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Place a new Mail Baby order, generate invoice, and queue provisioning
[apiInstance addMailWithMailOrderRequest:mailOrderRequest
          completionHandler: ^(ISAServiceOrderPostResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->addMail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mailOrderRequest** | [**ISAMailOrderRequest***](ISAMailOrderRequest.md)|  | 

### Return type

[**ISAServiceOrderPostResponse***](ISAServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRule**
```objc
-(NSURLSessionTask*) addRuleWithId: (NSNumber*) _id
    denyRuleNew: (ISADenyRuleNew*) denyRuleNew
        completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler;
```

Create a new deny rule to auto-block matching submissions

Inserts a new `mail_spam` row scoped to this service's `mail_username` so the relay drops matching submissions. Sibling ops: `getRules`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — literal value matched; validation: no quotes, valid domain for `type=domain`, valid email for `type=email`, `[A-Z0-9+_.-]+` for `startswith`.  **Returns:** `\"Spam Block Added\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
ISADenyRuleNew* denyRuleNew = {"user":"mb20682","type":"email","data":"domeinwo@server.guesshost.net"}; // These are the fields needed to create a new email deny rule.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Create a new deny rule to auto-block matching submissions
[apiInstance addRuleWithId:_id
              denyRuleNew:denyRuleNew
          completionHandler: ^(ISAGenericResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->addRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **denyRuleNew** | [**ISADenyRuleNew***](ISADenyRuleNew.md)| These are the fields needed to create a new email deny rule. | 

### Return type

[**ISAGenericResponse***](ISAGenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMailAlert**
```objc
-(NSURLSessionTask*) createMailAlertWithId: (NSNumber*) _id
    mailAlertRequest: (ISAMailAlertRequest*) mailAlertRequest
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Create a new Mail Baby alert for delivery, bounce, or quota events

Inserts a new alert row via the `Alert` ORM. The new `alert_id` is retrievable via `getMailAlerts`. Sibling ops: `getMailAlerts`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertRequest`):** - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
ISAMailAlertRequest* mailAlertRequest = [[ISAMailAlertRequest alloc] init]; // 

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Create a new Mail Baby alert for delivery, bounce, or quota events
[apiInstance createMailAlertWithId:_id
              mailAlertRequest:mailAlertRequest
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->createMailAlert: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **mailAlertRequest** | [**ISAMailAlertRequest***](ISAMailAlertRequest.md)|  | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMailAlert**
```objc
-(NSURLSessionTask*) deleteMailAlertWithId: (NSNumber*) _id
    deleteMailAlertRequest: (ISADeleteMailAlertRequest*) deleteMailAlertRequest
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Delete a Mail Baby alert by alert_id (hard delete — no recovery)

Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via `createMailAlert` if needed. Sibling ops: `getMailAlerts`, `createMailAlert`, `updateMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields:** - `alert_id` (integer, required) — from `getMailAlerts`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
ISADeleteMailAlertRequest* deleteMailAlertRequest = [[ISADeleteMailAlertRequest alloc] init]; // 

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Delete a Mail Baby alert by alert_id (hard delete — no recovery)
[apiInstance deleteMailAlertWithId:_id
              deleteMailAlertRequest:deleteMailAlertRequest
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->deleteMailAlert: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **deleteMailAlertRequest** | [**ISADeleteMailAlertRequest***](ISADeleteMailAlertRequest.md)|  | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRule**
```objc
-(NSURLSessionTask*) deleteRuleWithId: (NSNumber*) _id
    rule: (NSString*) rule
        completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler;
```

Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)

Hard-deletes a single `mail_spam` row scoped to this service's `mail_username`. **Irreversible** — no audit copy preserved. Query filter `id={rule} AND user='{mail_username}'` prevents cross-tenant deletes; passing a `rule` belonging to a different mail order is silently a no-op (still returns success). Sibling ops: `getRules`, `addRule`, `updateRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Returns:** `\"Block deleted successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
NSString* rule = 34; // The ID of the Rules entry.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
[apiInstance deleteRuleWithId:_id
              rule:rule
          completionHandler: ^(ISAGenericResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->deleteRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **rule** | **NSString***| The ID of the Rules entry. | 

### Return type

[**ISAGenericResponse***](ISAGenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delistBlock**
```objc
-(NSURLSessionTask*) delistBlockWithId: (NSNumber*) _id
    email: (NSString*) email
        completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler;
```

Delist a sender email from rspamd / mailchannels / mailbaby block lists

Removes block rows for the supplied email across the three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Functionally equivalent to `postMailDelist` but uses `email` parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: `getMailBlocks`, `getMailDelist`, `postMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `EmailAddress`):** - `email` (string, required) — sender address; validated via `FILTER_VALIDATE_EMAIL`.  **Returns:** `{status: \"ok\", text: \"Email '...' removed from block list\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` invalid email, `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
NSString* email = @"email_example"; // an email address (optional)

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Delist a sender email from rspamd / mailchannels / mailbaby block lists
[apiInstance delistBlockWithId:_id
              email:email
          completionHandler: ^(ISAGenericResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->delistBlock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **email** | **NSString***| an email address | [optional] 

### Return type

[**ISAGenericResponse***](ISAGenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailAlerts**
```objc
-(NSURLSessionTask*) getMailAlertsWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAMailAlertsResponse* output, NSError* error)) handler;
```

List configured delivery/bounce/quota alerts for one Mail Baby service

Returns every alert row from `alerts` matching this service. Each row carries `alert_id` (use with PUT/DELETE), `alert_type`, `alert_value` (threshold), `alert_to` (notification email), `alert_enabled`, and timestamps. Sibling ops: `createMailAlert`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailAlertsResponse`): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// List configured delivery/bounce/quota alerts for one Mail Baby service
[apiInstance getMailAlertsWithId:_id
          completionHandler: ^(ISAMailAlertsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getMailAlerts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISAMailAlertsResponse***](ISAMailAlertsResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailBlocks**
```objc
-(NSURLSessionTask*) getMailBlocksWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAMailBlocks* output, NSError* error)) handler;
```

List recent local-blocklist hits and spam-trap captures for the mail user

Returns relay-side block events for the SMTP user behind `mail_id` — the last 24 hours of `LOCAL_BL_RCPT` and `MBTRAP` rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing `@` / `smtp` / `socks5` / `socks4` more than 4 times). Use the `from` value with `delistBlock` or `postMailDelist` to clear a block. Sibling ops: `delistBlock`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailBlocks`): - `local` (array) — rspamd `LOCAL_BL_RCPT` hits: `{date, from, messageId, subject, to}`. - `mbtrap` (array) — spam-trap captures (`MBTRAP` symbol): same shape. - `subject` (array) — senders flagged by subject-line heuristic: `{from, subject}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Clear a block:** `delistBlock` (POST `/mail/{id}/blocks/delete`). - **Broader delist UI:** `getMailDelist`, `postMailDelist`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// List recent local-blocklist hits and spam-trap captures for the mail user
[apiInstance getMailBlocksWithId:_id
          completionHandler: ^(ISAMailBlocks* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getMailBlocks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISAMailBlocks***](ISAMailBlocks.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailDelist**
```objc
-(NSURLSessionTask*) getMailDelistWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAMailDelistResponse* output, NSError* error)) handler;
```

Read blocklist diagnostics and find senders eligible for delisting

Returns a richer diagnostic snapshot than `getMailBlocks` — intended for the delist UI. Use any `SMTPFrom`/`from` value as the `unblock` field for `postMailDelist`. Sibling ops: `postMailDelist`, `getMailBlocks`, `delistBlock`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailDelistResponse`): - `id` (integer) — `mail_id` echo. - `local`, `mbtrap` (array) — last 24h rspamd hits with capitalized keys (`Date`, `SMTPFrom`, `MessageId`, `Subject`, `MimeRecipients`). - `subject` (array) — credential-leak-heuristic firings (3-day window). - `manual` (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Read blocklist diagnostics and find senders eligible for delisting
[apiInstance getMailDelistWithId:_id
          completionHandler: ^(ISAMailDelistResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getMailDelist: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISAMailDelistResponse***](ISAMailDelistResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailDeliverability**
```objc
-(NSURLSessionTask*) getMailDeliverabilityWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAMailDeliverabilityResponse* output, NSError* error)) handler;
```

Read delivered vs bounced totals broken down by sender (or by recipient domain)

Returns deliverability analytics from `MailDeliveryStats` (Dragonfly cache) for the SMTP user behind `mail_id`. Default pivot is by sender; pass `?filter_domain=1` to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: `getStats`, `viewMailLog`, `getMailBlocks`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `filter_domain` (string `1`, optional) — pivot by recipient domain instead of sender.  **Returns** (schema `MailDeliverabilityResponse`): - `stat`: `{delivered, bounced, percent}` — totals and bounce ratio. - `header` (string), `col1` (string) — table headers. - `table_data` (array) — rows of `[<sender-or-domain>, bounced, delivered, bouncePercent]`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Read delivered vs bounced totals broken down by sender (or by recipient domain)
[apiInstance getMailDeliverabilityWithId:_id
          completionHandler: ^(ISAMailDeliverabilityResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getMailDeliverability: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISAMailDeliverabilityResponse***](ISAMailDeliverabilityResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailInfo**
```objc
-(NSURLSessionTask*) getMailInfoWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAMailSchema* output, NSError* error)) handler;
```

Read full detail for one Mail Baby service including SMTP credentials

Returns the full `ViewMail` payload for one Mail Baby service — `serviceInfo`, `serviceType`, and `client_links` (URLs rewritten to API paths, e.g. `view_mail_log` → `log`). Admin fields (`admin_links`, `settings`, `csrf`) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: `getMailList`, `updateMailInfo`, `mailCancel`, `resetMailPassword`, `getMailWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailSchema`): - `serviceInfo` — `mail_id`, `mail_username` (e.g. `mb1234`), `mail_status`, `mail_invoice`, `mail_custid`, dates, currency. - `serviceType` — plan row (`services_ourcost` stripped). - `client_links` (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Send:** `sendMail` / `sendAdvMail`. - **Rotate password:** `resetMailPassword`. - **Reset credentials:** `getMailWelcomeEmail`. - **Cancel:** `mailCancel`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Read full detail for one Mail Baby service including SMTP credentials
[apiInstance getMailInfoWithId:_id
          completionHandler: ^(ISAMailSchema* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getMailInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISAMailSchema***](ISAMailSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailInvoices**
```objc
-(NSURLSessionTask*) getMailInvoicesWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAChargeInvoiceRows* output, NSError* error)) handler;
```

List billing invoices linked to this Mail Baby service

Returns every invoice associated with this `mail_id` via the shared `InvoicesList` workflow. Use to render per-service billing history or find unpaid invoices to pay via `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, `addMail`, `mailCancel`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `ChargeInvoiceRows` — array of `{id, amount, currency, paid, date, due_date, description, module: \"mail\", service}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404 Invalid Service`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// List billing invoices linked to this Mail Baby service
[apiInstance getMailInvoicesWithId:_id
          completionHandler: ^(ISAChargeInvoiceRows* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getMailInvoices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISAChargeInvoiceRows***](ISAChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailList**
```objc
-(NSURLSessionTask*) getMailListWithCompletionHandler: 
        (void (^)(NSArray<ISAMailRow>* output, NSError* error)) handler;
```

List every Mail Baby SMTP relay service on the account

Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a `mail_id` to pass to other Mail endpoints. Filtered server-side by `mail_custid`. Sibling ops: `getMailInfo`, `getStats`, `viewMailLog`, `getMailDeliverability`, `getMailBlocks`, `getMailInvoices`, `addMail`.  **Path/Query/Body:** None.  **Returns:** Array of `MailRow`: - `mail_id` (integer) — canonical id. - `mail_username` (string) — SMTP username (e.g. `mb1234`). - `mail_status` (string enum) — `active` / `pending` / `canceled` / `suspended`. - `services_name` (string) — plan label. - `repeat_invoices_cost` (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-service detail:** `getMailInfo`. - **Send mail:** `sendMail` / `sendAdvMail`. - **Reputation:** `getMailDeliverability` / `getMailBlocks` / `getMailDelist`. - **Order a new service:** `getNewMail` → `putMail` → `addMail`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];



ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// List every Mail Baby SMTP relay service on the account
[apiInstance getMailListWithCompletionHandler: 
          ^(NSArray<ISAMailRow>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getMailList: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<ISAMailRow>***](ISAMailRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailWelcomeEmail**
```objc
-(NSURLSessionTask*) getMailWelcomeEmailWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Resend the Mail Baby welcome email with SMTP credentials and setup info

Re-runs the `mail_welcome_email` plugin function — composes and sends the standard welcome email (SMTP host `relay.mailbaby.net`, port, username `mb{mail_id}`, current password, configuration tips) to the account-on-file. Use after `resetMailPassword` to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: `resetMailPassword`, `getMailInfo`. Cross-module welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getDomainsWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `{text: \"Welcome Email has been resent.\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Resend the Mail Baby welcome email with SMTP credentials and setup info
[apiInstance getMailWelcomeEmailWithId:_id
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getMailWelcomeEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNewMail**
```objc
-(NSURLSessionTask*) getNewMailWithCompletionHandler: 
        (void (^)(ISAMailOrder* output, NSError* error)) handler;
```

Read the Mail Baby order catalog — plans, package costs, service-type metadata

Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: `packageCosts` keyed by `services_id` (only buyable services where `services_buyable=1`) and the full `serviceTypes` map. Read-only. Pricing is normalized to the customer's currency via `getCurrency()`. Sibling ops: `putMail`, `addMail`, `getMailList`.  **Path/Query/Body:** None.  **Returns** (schema `MailOrder`): - `packageCosts` (object) — `{<services_id>: <cost>}` per buyable plan. - `serviceTypes` (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Next:** `putMail` (validate + quote — no charge), `addMail` (place order). 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];



ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Read the Mail Baby order catalog — plans, package costs, service-type metadata
[apiInstance getNewMailWithCompletionHandler: 
          ^(ISAMailOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getNewMail: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISAMailOrder***](ISAMailOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRules**
```objc
-(NSURLSessionTask*) getRulesWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSArray<ISADenyRuleRecord>* output, NSError* error)) handler;
```

List configured deny rules (sender/recipient blocks) for a Mail Baby service

Returns every `mail_spam` row scoped to this service's `mail_username` — local sender/recipient block rules the customer has configured. Sibling ops: `addRule`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** Array of `DenyRuleRecord` — `{id, user, type, data, created}`. `type` values: - `domain` — block by sender domain. - `email` — block by exact sender email. - `startswith` — block when sender local-part starts with a string. - `destination` — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// List configured deny rules (sender/recipient blocks) for a Mail Baby service
[apiInstance getRulesWithId:_id
          completionHandler: ^(NSArray<ISADenyRuleRecord>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getRules: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**NSArray<ISADenyRuleRecord>***](ISADenyRuleRecord.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStats**
```objc
-(NSURLSessionTask*) getStatsWithId: (NSNumber*) _id
    time: (NSString*) time
        completionHandler: (void (^)(ISAMailStatsType* output, NSError* error)) handler;
```

Read Mail Baby usage counts, send volume totals, top destinations, and projected cost

Returns aggregate usage and cost metrics for the SMTP user behind `mail_id` from the ZoneMTA `mail_messagestore` / `mail_senderdelivered` tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: `viewMailLog`, `getMailDeliverability`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `time` (string enum, optional, default `1h`) — window: `all` / `billing` (current invoice cycle) / `month` / `7d` / `24h` / `1d` / `1h`.  **Returns** (schema `MailStatsType`): - `time` (string) — echo of selected window. - `usage` (integer) — full-billing-cycle send count. - `currency`, `currencySymbol` (string). - `cost` (decimal) — projected = base + `$0.20 / 1000 emails`. - `received`, `sent` (integer). - `volume.to`, `volume.from`, `volume.ip` (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid or missing mail order id`, `401`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
NSString* time = @"time_example"; // The timeframe for the statistics. (optional)

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
[apiInstance getStatsWithId:_id
              time:time
          completionHandler: ^(ISAMailStatsType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->getStats: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **time** | **NSString***| The timeframe for the statistics. | [optional] 

### Return type

[**ISAMailStatsType***](ISAMailStatsType.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mailCancel**
```objc
-(NSURLSessionTask*) mailCancelWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAMailCancel200Response* output, NSError* error)) handler;
```

Cancel a Mail Baby service and stop the recurring invoice

Cancels the Mail Baby service through the shared `Billing\\CancelService::go($id)` flow with `module='mail'`. SMTP credentials are deactivated, the service transitions to canceled, the `repeat_invoice` is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via `addMail`. Sibling ops: `getMailInfo`, `getMailInvoices`, `addMail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `MailCancelResponse`.  **Side effects:** - Sets `mail_status='canceled'`. - Marks `repeat_invoices` non-renewing. - ZoneMTA-side: stops accepting new submissions for `mb{mail_id}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Sibling cancels:** `VPSCancel`, `CancelDomain`, `webhostingCancel`, etc. - **Re-provision:** `addMail`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Cancel a Mail Baby service and stop the recurring invoice
[apiInstance mailCancelWithId:_id
          completionHandler: ^(ISAMailCancel200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->mailCancel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISAMailCancel200Response***](ISAMailCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMailDelist**
```objc
-(NSURLSessionTask*) postMailDelistWithId: (NSNumber*) _id
    mailDelistRequest: (ISAMailDelistRequest*) mailDelistRequest
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Delist a sender from rspamd / mailchannels / mailbaby block lists

Removes all block rows for one sender email across three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: `getMailDelist`, `delistBlock` (alias at `/mail/{id}/blocks/delete`), `getMailBlocks`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailDelistRequest`):** - `unblock` (string, required) — sender email from `getMailDelist`/`getMailBlocks`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Missing parameter unblock`, `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
ISAMailDelistRequest* mailDelistRequest = [[ISAMailDelistRequest alloc] init]; // 

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Delist a sender from rspamd / mailchannels / mailbaby block lists
[apiInstance postMailDelistWithId:_id
              mailDelistRequest:mailDelistRequest
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->postMailDelist: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **mailDelistRequest** | [**ISAMailDelistRequest***](ISAMailDelistRequest.md)|  | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putMail**
```objc
-(NSURLSessionTask*) putMailWithMailOrderRequest: (ISAMailOrderRequest*) mailOrderRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Validate Mail Baby order, quote pricing, and verify coupon — no charge

Step 2 of the Mail Baby order flow. Dry-runs the order through `validate_buy_mail()` without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before `addMail`. Sibling ops: `getNewMail`, `addMail`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail.packageCosts` keys. - `coupon` (string, optional) — coupon code.  **Returns:** - `continue` (bool) — `true` if order can safely be POSTed. - `errors` (array) — validation messages. - `serviceType`, `serviceCost`, `originalCost`, `repeatServiceCost` (numeric). - `password` (string) — auto-generated SMTP password preview. - `introFrequency` (integer). - `coupon`, `couponCode` (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - `200` with `continue=false` and `errors[]` — validation problems. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `getNewMail` (catalog). - **Place order:** `addMail`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


ISAMailOrderRequest* mailOrderRequest = [[ISAMailOrderRequest alloc] init]; // 

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Validate Mail Baby order, quote pricing, and verify coupon — no charge
[apiInstance putMailWithMailOrderRequest:mailOrderRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->putMail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mailOrderRequest** | [**ISAMailOrderRequest***](ISAMailOrderRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetMailPassword**
```objc
-(NSURLSessionTask*) resetMailPasswordWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Rotate the SMTP password and email the new credential to the account owner

Generates a new 20-char SMTP password (lower/upper/digits via `generate_password`), writes it to the ZoneMTA Mongo `users` collection for username `mb{mail_id}`, logs the change to `App::history()`, and emails the result to the account-on-file via `client_email.tpl`. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via `getMailWelcomeEmail` or `getMailInfo`. Sibling ops: `getMailWelcomeEmail`, `getMailInfo`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `SuccessTextResponse`.  **Side effects:** - Mongo update on ZoneMTA `users` for `mb{mail_id}`. - `App::history()` audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Rotate the SMTP password and email the new credential to the account owner
[apiInstance resetMailPasswordWithId:_id
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->resetMailPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendAdvMail**
```objc
-(NSURLSessionTask*) sendAdvMailWithId: (NSNumber*) _id
    sendMailAdv: (ISASendMailAdv*) sendMailAdv
        completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler;
```

Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient

Submits an outbound message through `relay.mailbaby.net:25` using the service's SMTP credentials (fetched via `mail_get_password`). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, `sendMail` is the lighter option. Sibling ops: `sendMail`, `viewMailLog` (find queued message), `getMailDeliverability` (analyze bounces).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMailAdv`):** - `from` (string or `{email, name}`, required). - `to` (array of strings or `{email, name}` objects, required). - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present. - `replyto` (array, optional) — same shape as `to`. - `cc`, `bcc` (array, optional) — same shape as `to`. - `attachments` (array, optional) — each `{filename, data}` where `data` is base64-encoded; added via `addStringAttachment`.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `400` with PHPMailer `ErrorInfo` on send failure or missing required field. - `401` — unauthenticated. - `404 Invalid Service Passed`. - `409 Service is not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
ISASendMailAdv* sendMailAdv = {"subject":"Welcome","body":"Hello","from":{"email":"user@domain.com"},"to":[{"email":"someone@client.com","name":"Mr Client"}],"attachments":[{"filename":"message.txt","data":"base64_encoded_contents"}],"id":66}; // 

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
[apiInstance sendAdvMailWithId:_id
              sendMailAdv:sendMailAdv
          completionHandler: ^(ISAGenericResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->sendAdvMail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **sendMailAdv** | [**ISASendMailAdv***](ISASendMailAdv.md)|  | 

### Return type

[**ISAGenericResponse***](ISAGenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMail**
```objc
-(NSURLSessionTask*) sendMailWithId: (NSNumber*) _id
    sendMail: (ISASendMail*) sendMail
        completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler;
```

Send a simple single-recipient email through the Mail Baby SMTP relay

Sends a single-recipient transactional email through `relay.mailbaby.net:25` authenticated as this `mail_id`. Body fields are the minimum needed for a plain send; Reply-To is auto-set to `from`. For multi-recipient sends, CC/BCC, named addresses, or attachments use `sendAdvMail` instead. Sibling ops: `sendAdvMail`, `viewMailLog`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMail`):** - `to` (string, required) — recipient email. - `from` (string, required) — sender email. - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` with PHPMailer `ErrorInfo` on send failure or missing required field, `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
ISASendMail* sendMail = [[ISASendMail alloc] init]; // 

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Send a simple single-recipient email through the Mail Baby SMTP relay
[apiInstance sendMailWithId:_id
              sendMail:sendMail
          completionHandler: ^(ISAGenericResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->sendMail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **sendMail** | [**ISASendMail***](ISASendMail.md)|  | 

### Return type

[**ISAGenericResponse***](ISAGenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMailAlert**
```objc
-(NSURLSessionTask*) updateMailAlertWithId: (NSNumber*) _id
    mailAlertUpdateRequest: (ISAMailAlertUpdateRequest*) mailAlertUpdateRequest
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Update an existing Mail Baby alert by alert_id

Updates a single alert row by `alert_id`. Handler verifies the alert belongs to this service+module before writing. Sibling ops: `getMailAlerts`, `createMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertUpdateRequest`):** - `alert_id` (integer, required) — from `getMailAlerts`. - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
ISAMailAlertUpdateRequest* mailAlertUpdateRequest = [[ISAMailAlertUpdateRequest alloc] init]; // 

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Update an existing Mail Baby alert by alert_id
[apiInstance updateMailAlertWithId:_id
              mailAlertUpdateRequest:mailAlertUpdateRequest
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->updateMailAlert: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **mailAlertUpdateRequest** | [**ISAMailAlertUpdateRequest***](ISAMailAlertUpdateRequest.md)|  | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMailInfo**
```objc
-(NSURLSessionTask*) updateMailInfoWithId: (NSString*) _id
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

POST mutation hook for the Mail Baby service detail page

POST mutation hook for the Mail Baby service detail page. Currently delegates to the same `View::go()` handler as `getMailInfo` — placeholder for future field updates. Does NOT rotate credentials (use `resetMailPassword`) and does NOT change billing (use `/billing` endpoints). Sibling ops: `getMailInfo`, `mailCancel`, `resetMailPassword`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body:** Form fields.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Read:** `getMailInfo`. - **Rotate password:** `resetMailPassword`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSString* _id = @"_id_example"; // The mail service ID. Use `mail_id` from `GET /mail`.

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// POST mutation hook for the Mail Baby service detail page
[apiInstance updateMailInfoWithId:_id
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->updateMailInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRule**
```objc
-(NSURLSessionTask*) updateRuleWithId: (NSNumber*) _id
    rule: (NSString*) rule
    denyRuleNew: (ISADenyRuleNew*) denyRuleNew
        completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler;
```

Update an existing Mail Baby deny rule's type and match data

Updates `type` and `data` on a single `mail_spam` row. Query is bounded by `id={rule} AND user='{mail_username}'` so cross-tenant updates are impossible. Same validation rules as `addRule`. Sibling ops: `getRules`, `addRule`, `deleteRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — see `addRule` for type-specific validation.  **Returns:** `\"Record updated successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
NSString* rule = @"rule_example"; // The ID of the deny rule to update.
ISADenyRuleNew* denyRuleNew = [[ISADenyRuleNew alloc] init]; // 

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Update an existing Mail Baby deny rule's type and match data
[apiInstance updateRuleWithId:_id
              rule:rule
              denyRuleNew:denyRuleNew
          completionHandler: ^(ISAGenericResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->updateRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **rule** | **NSString***| The ID of the deny rule to update. | 
 **denyRuleNew** | [**ISADenyRuleNew***](ISADenyRuleNew.md)|  | 

### Return type

[**ISAGenericResponse***](ISAGenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewMailLog**
```objc
-(NSURLSessionTask*) viewMailLogWithId: (NSNumber*) _id
    _id2: (NSNumber*) _id2
    origin: (NSString*) origin
    mx: (NSString*) mx
    from: (NSString*) from
    to: (NSString*) to
    subject: (NSString*) subject
    mailid: (NSString*) mailid
    messageId: (NSString*) messageId
    replyto: (NSString*) replyto
    headerfrom: (NSString*) headerfrom
    delivered: (NSNumber*) delivered
    skip: (NSNumber*) skip
    limit: (NSNumber*) limit
    startDate: (ISAViewMailLogStartDateParameter) startDate
    endDate: (ISAViewMailLogStartDateParameter) endDate
    sort: (NSString*) sort
    dir: (NSString*) dir
    groupby: (NSString*) groupby
        completionHandler: (void (^)(ISAMailLog* output, NSError* error)) handler;
```

Search and paginate per-message Mail Baby delivery log entries

Paginated search over ZoneMTA's `mail_messagestore` joined with `mail_senderdelivered` and `mail_queuerelease`. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: `getStats`, `getMailDeliverability`, `delistBlock` (clear a block surfaced by a bounce).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList` (omit to span all owned mail users — admin-only).  **Query params:** - `from`, `to` (string) — envelope address, exact match. - `headerfrom`, `replyto` (string) — header address, exact match; validated as email. - `subject` (string) — LIKE match on subject. - `mailid` (string, 18–19 chars) — relay id, exact. - `messageId` (string) — Message-ID header, substring match. - `origin` (string) — submitter IP, exact. - `mx` (string) — destination MX hostname, LIKE. - `delivered` (integer 0/1). - `startDate`, `endDate` (Unix timestamp or `strtotime`-parseable string). - `skip` (integer, default 0), `limit` (integer 1–10000, default 100). - `sort` (`time`), `dir` (`asc`/`desc`, default `desc`). - `groupby` (`recipient` default — one row per delivery attempt; `message` — one row per `_id`).  **Returns** (schema `MailLog`): `{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` bad input, `401`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The mail service ID. Use `mail_id` from `GET /mail`.
NSNumber* _id2 = 2604; // The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from `GET /mail` or `GET /mail/{id}`. (optional)
NSString* origin = 1.2.3.4; // Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address. (optional)
NSString* mx = mx.google.com; // Filter by the MX hostname the relay attempted delivery to.  For example `mx.google.com` would return messages destined for Gmail recipients. Maps to `mxHostname` in the `MailLogEntry` response. (optional)
NSString* from = me@sender.com; // Filter by SMTP envelope `MAIL FROM` address (exact match).  This is the address the relay used for bounce handling and may differ from the `From:` message header.  For header-level filtering use `headerfrom`. (optional)
NSString* to = you@receiver.com; // Filter by SMTP envelope `RCPT TO` address (exact match).  This is the delivery address used by the relay and may differ from the `To:` header when BCC recipients are involved. (optional)
NSString* subject = Your order has shipped; // Filter by email `Subject` header (exact match).  MIME-encoded subjects are decoded automatically in the response. (optional)
NSString* mailid = 185997065c60008840; // Filter by the relay-assigned mail ID string (exact match).  This corresponds to the `id` field in `MailLogEntry` and to the `text` value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as `185997065c60008840`. (optional)
NSString* messageId = <abc123@yourdomain.com>; // Filter by the `Message-ID` email header using a substring (case-insensitive) match. The `Message-ID` is assigned by the sending mail client and is visible in the `messageId` field of `MailLogEntry`. (optional)
NSString* replyto = replies@sender.com; // Filter by the `Reply-To` message header address (exact match).  Only returns messages where this header was explicitly set. (optional)
NSString* headerfrom = newsletter@sender.com; // Filter by the `From` message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope `from` parameter when sending on behalf of another address. (optional)
NSNumber* delivered = 1; // Filter by delivery status.  `1` returns only messages that were successfully delivered to the destination MX.  `0` returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status. (optional)
NSNumber* skip = 0; // Number of records to skip for pagination.  Use in combination with `limit` to page through large result sets.  Defaults to `0` (no skip). (optional) (default to @0)
NSNumber* limit = 100; // Maximum number of records to return per page.  Defaults to `100`. Maximum allowed value is `10000`.  The response also includes a `total` field with the full matched count so you can calculate the number of pages. (optional) (default to @100)
ISAViewMailLogStartDateParameter startDate = 1641781008; // Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-15` or `last monday`.  Messages with a `time` value **greater than or equal to** this value will be included. (optional)
ISAViewMailLogStartDateParameter endDate = 1673317008; // Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-31` or `yesterday`. Messages with a `time` value **less than or equal to** this value will be included. (optional)
NSString* sort = time; // Field to sort results by.  Currently only `time` is supported (sorts by internal row ID which corresponds to chronological order). (optional) (default to @"time")
NSString* dir = desc; // Sort direction.  `desc` returns newest first (default), `asc` returns oldest first. (optional) (default to @"desc")
NSString* groupby = recipient; // Controls how results are grouped.  `recipient` (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own `recipient`, `delivered`, `response`, and delivery metadata.  `message` collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The `total` count in the response matches the grouping mode. (optional) (default to @"recipient")

ISAMailApi*apiInstance = [[ISAMailApi alloc] init];

// Search and paginate per-message Mail Baby delivery log entries
[apiInstance viewMailLogWithId:_id
              _id2:_id2
              origin:origin
              mx:mx
              from:from
              to:to
              subject:subject
              mailid:mailid
              messageId:messageId
              replyto:replyto
              headerfrom:headerfrom
              delivered:delivered
              skip:skip
              limit:limit
              startDate:startDate
              endDate:endDate
              sort:sort
              dir:dir
              groupby:groupby
          completionHandler: ^(ISAMailLog* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAMailApi->viewMailLog: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;. | 
 **_id2** | **NSNumber***| The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from &#x60;GET /mail&#x60; or &#x60;GET /mail/{id}&#x60;. | [optional] 
 **origin** | **NSString***| Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address. | [optional] 
 **mx** | **NSString***| Filter by the MX hostname the relay attempted delivery to.  For example &#x60;mx.google.com&#x60; would return messages destined for Gmail recipients. Maps to &#x60;mxHostname&#x60; in the &#x60;MailLogEntry&#x60; response. | [optional] 
 **from** | **NSString***| Filter by SMTP envelope &#x60;MAIL FROM&#x60; address (exact match).  This is the address the relay used for bounce handling and may differ from the &#x60;From:&#x60; message header.  For header-level filtering use &#x60;headerfrom&#x60;. | [optional] 
 **to** | **NSString***| Filter by SMTP envelope &#x60;RCPT TO&#x60; address (exact match).  This is the delivery address used by the relay and may differ from the &#x60;To:&#x60; header when BCC recipients are involved. | [optional] 
 **subject** | **NSString***| Filter by email &#x60;Subject&#x60; header (exact match).  MIME-encoded subjects are decoded automatically in the response. | [optional] 
 **mailid** | **NSString***| Filter by the relay-assigned mail ID string (exact match).  This corresponds to the &#x60;id&#x60; field in &#x60;MailLogEntry&#x60; and to the &#x60;text&#x60; value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as &#x60;185997065c60008840&#x60;. | [optional] 
 **messageId** | **NSString***| Filter by the &#x60;Message-ID&#x60; email header using a substring (case-insensitive) match. The &#x60;Message-ID&#x60; is assigned by the sending mail client and is visible in the &#x60;messageId&#x60; field of &#x60;MailLogEntry&#x60;. | [optional] 
 **replyto** | **NSString***| Filter by the &#x60;Reply-To&#x60; message header address (exact match).  Only returns messages where this header was explicitly set. | [optional] 
 **headerfrom** | **NSString***| Filter by the &#x60;From&#x60; message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope &#x60;from&#x60; parameter when sending on behalf of another address. | [optional] 
 **delivered** | **NSNumber***| Filter by delivery status.  &#x60;1&#x60; returns only messages that were successfully delivered to the destination MX.  &#x60;0&#x60; returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status. | [optional] 
 **skip** | **NSNumber***| Number of records to skip for pagination.  Use in combination with &#x60;limit&#x60; to page through large result sets.  Defaults to &#x60;0&#x60; (no skip). | [optional] [default to @0]
 **limit** | **NSNumber***| Maximum number of records to return per page.  Defaults to &#x60;100&#x60;. Maximum allowed value is &#x60;10000&#x60;.  The response also includes a &#x60;total&#x60; field with the full matched count so you can calculate the number of pages. | [optional] [default to @100]
 **startDate** | [**ISAViewMailLogStartDateParameter**](.md)| Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-15&#x60; or &#x60;last monday&#x60;.  Messages with a &#x60;time&#x60; value **greater than or equal to** this value will be included. | [optional] 
 **endDate** | [**ISAViewMailLogStartDateParameter**](.md)| Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-31&#x60; or &#x60;yesterday&#x60;. Messages with a &#x60;time&#x60; value **less than or equal to** this value will be included. | [optional] 
 **sort** | **NSString***| Field to sort results by.  Currently only &#x60;time&#x60; is supported (sorts by internal row ID which corresponds to chronological order). | [optional] [default to @&quot;time&quot;]
 **dir** | **NSString***| Sort direction.  &#x60;desc&#x60; returns newest first (default), &#x60;asc&#x60; returns oldest first. | [optional] [default to @&quot;desc&quot;]
 **groupby** | **NSString***| Controls how results are grouped.  &#x60;recipient&#x60; (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own &#x60;recipient&#x60;, &#x60;delivered&#x60;, &#x60;response&#x60;, and delivery metadata.  &#x60;message&#x60; collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The &#x60;total&#x60; count in the response matches the grouping mode. | [optional] [default to @&quot;recipient&quot;]

### Return type

[**ISAMailLog***](ISAMailLog.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


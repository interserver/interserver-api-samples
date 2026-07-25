# ISAAccountApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccountOauthName**](ISAAccountApi.md#deleteaccountoauthname) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
[**deleteAccountTfa**](ISAAccountApi.md#deleteaccounttfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret
[**deleteIpLimit**](ISAAccountApi.md#deleteiplimit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
[**getAccountInfo**](ISAAccountApi.md#getaccountinfo) | **GET** /account | Read full account profile, billing address, and security settings
[**getAccountTfaSetup**](ISAAccountApi.md#getaccounttfasetup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
[**getHome**](ISAAccountApi.md#gethome) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts
[**getSearch**](ISAAccountApi.md#getsearch) | **GET** /search | Global autocomplete across the caller&#39;s services, domains, and records
[**logout**](ISAAccountApi.md#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable
[**logoutAccountOauth**](ISAAccountApi.md#logoutaccountoauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account)
[**updateAccountApiKey**](ISAAccountApi.md#updateaccountapikey) | **POST** /account/apikey | Rotate the account&#39;s REST/MCP API key — old key is invalidated immediately
[**updateAccountFeatures**](ISAAccountApi.md#updateaccountfeatures) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall
[**updateAccountInfo**](ISAAccountApi.md#updateaccountinfo) | **POST** /account | Update contact and billing-address fields on the customer profile
[**updateAccountIpLimits**](ISAAccountApi.md#updateaccountiplimits) | **POST** /account/iplimits | Add an IP CIDR/range to the account&#39;s API+web allow-list (lockout-safe)
[**updateAccountPassword**](ISAAccountApi.md#updateaccountpassword) | **POST** /account/password | Change the account login password (verifies current, kills other sessions)
[**updateAccountSshKey**](ISAAccountApi.md#updateaccountsshkey) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
[**updateAccountTfa**](ISAAccountApi.md#updateaccounttfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account


# **deleteAccountOauthName**
```objc
-(NSURLSessionTask*) deleteAccountOauthNameWithName: (NSString*) name
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account

DESTRUCTIVE: removes the linked provider's tokens from `accounts_ext` (rows where `account_key` IN (`{name}_id`,`{name}_url`)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: `name` (case-insensitive provider key, e.g. `google`, `github`, `facebook`) — must be present in `getOauthConfig().providers`. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns `{success:true, text:'OAuth Provider Unlinked.'}`. Errors: 400 `Invalid Provider Name.` if `name` not configured; 401 unauthenticated. Sibling ops: `logoutAccountOauth`, `getAccountInfo`, `updateAccountPassword`.

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


NSString* name = @"name_example"; // 

ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
[apiInstance deleteAccountOauthNameWithName:name
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->deleteAccountOauthName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccountTfa**
```objc
-(NSURLSessionTask*) deleteAccountTfaWithCompletionHandler: 
        (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Disable two-factor authentication and remove the TOTP secret

DESTRUCTIVE: removes the 2FA secret from `account_security` and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then `getAccountTfaSetup` -> `updateAccountTfa`). Returns `{success:true, text:'Google Two Factor Authentication is disabled successfully!'}`. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate `updateAccountPassword` if you suspect credential compromise. Sibling ops: `getAccountTfaSetup`, `updateAccountTfa`, `updateAccountPassword`.

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



ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Disable two-factor authentication and remove the TOTP secret
[apiInstance deleteAccountTfaWithCompletionHandler: 
          ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->deleteAccountTfa: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIpLimit**
```objc
-(NSURLSessionTask*) deleteIpLimitWithIpLimitRange: (ISAIpLimitRange*) ipLimitRange
        completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler;
```

Remove one IP range from the account allow-list (PATCH on /account/iplimits)

DESTRUCTIVE: deletes the matching `{start, end}` entry from `accounts.session_limit`. Method is PATCH (not DELETE) because the path collides with `updateAccountIpLimits`. Body: `{start, end}` — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller's source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via `X-API-APP: 1` header. Returns `{success:true, text:'IP Range deleted.'}`. Errors: 400/422 `Invalid IP Address` if `start`/`end` aren't valid IPs; 401 unauthenticated. Sibling ops: `updateAccountIpLimits`, `getAccountInfo`.

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


ISAIpLimitRange* ipLimitRange = [[ISAIpLimitRange alloc] init]; //  (optional)

ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Remove one IP range from the account allow-list (PATCH on /account/iplimits)
[apiInstance deleteIpLimitWithIpLimitRange:ipLimitRange
          completionHandler: ^(ISAGenericResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->deleteIpLimit: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ipLimitRange** | [**ISAIpLimitRange***](ISAIpLimitRange.md)|  | [optional] 

### Return type

[**ISAGenericResponse***](ISAGenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInfo**
```objc
-(NSURLSessionTask*) getAccountInfoWithCompletionHandler: 
        (void (^)(ISAAccountInfo* output, NSError* error)) handler;
```

Read full account profile, billing address, and security settings

Use to render the account-settings page or to verify current state before mutating with `updateAccountInfo`. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (`disable_reset`, `disable_reinstall`, `disable_*_notifications`), gravatar URL, language, country->currency map, and `enableLocales`/`enableCurrencies` UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: `updateAccountInfo`, `getAccountTfaSetup`, `updateAccountFeatures`, `updateAccountIpLimits`.

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



ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Read full account profile, billing address, and security settings
[apiInstance getAccountInfoWithCompletionHandler: 
          ^(ISAAccountInfo* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->getAccountInfo: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISAAccountInfo***](ISAAccountInfo.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTfaSetup**
```objc
-(NSURLSessionTask*) getAccountTfaSetupWithCompletionHandler: 
        (void (^)(ISAGetAccountTfaSetup200Response* output, NSError* error)) handler;
```

Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)

Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns `{2fa_google_key, 2fa_google_split}` — render `2fa_google_key` as a QR code (otpauth://totp/My.InterServer:LID?secret=KEY) and display `2fa_google_split` (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with `updateAccountTfa`. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: `updateAccountTfa` (verify & enable), `deleteAccountTfa` (disable).

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



ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
[apiInstance getAccountTfaSetupWithCompletionHandler: 
          ^(ISAGetAccountTfaSetup200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->getAccountTfaSetup: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISAGetAccountTfaSetup200Response***](ISAGetAccountTfaSetup200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHome**
```objc
-(NSURLSessionTask*) getHomeWithCompletionHandler: 
        (void (^)(ISAHome* output, NSError* error)) handler;
```

Aggregate dashboard payload — service counts, recent activity, alerts

Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by `getClientHomeData()` — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don't each issue list calls. Cached implementation lives in `function_requirements('client_home')` -> `getClientHomeData()`. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: `getSearch` (autocomplete), `getAccountInfo`, plus per-module list ops like `getVpsList`, `getDomainsList`, `getBillingInvoices`.

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



ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Aggregate dashboard payload — service counts, recent activity, alerts
[apiInstance getHomeWithCompletionHandler: 
          ^(ISAHome* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->getHome: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISAHome***](ISAHome.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearch**
```objc
-(NSURLSessionTask*) getSearchWithCompletionHandler: 
        (void (^)(ISASearchAutocompleteResponse* output, NSError* error)) handler;
```

Global autocomplete across the caller's services, domains, and records

Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally `q=` though the underlying `getSearchAutoComplete($custid)` may match against multiple fields. Returns a `SearchAutocompleteResponse` object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: `getHome`, `getAccountInfo`, plus per-module list ops (`getVpsList`, `getDomainsList`, `getMailList`, `getTicketsList`).

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



ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Global autocomplete across the caller's services, domains, and records
[apiInstance getSearchWithCompletionHandler: 
          ^(ISASearchAutocompleteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->getSearch: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISASearchAutocompleteResponse***](ISASearchAutocompleteResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
```objc
-(NSURLSessionTask*) logoutWithCompletionHandler: 
        (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Destroy the current API/web session — token becomes unusable

DESTRUCTIVE: invalidates the caller's session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns `200` (no-op when `App::accounts()->data` is empty). API keys (`updateAccountApiKey`) and persistent OAuth links are NOT affected — only this session token. Sibling ops: `updateAccountPassword`, `updateAccountApiKey`, `logoutAccountOauth`, `deleteAccountOauthName`.  **Path/Query/Body:** None.  **Returns:** `{ success: true, text: 'Logged Out' }`.  **Side effects:** calls `App::session()->destroy()` only when `api_check_auth_limits()` passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - `401` — only on a completely malformed auth header.  **Related calls:** - **Re-login:** `submitLogin` or `getOauthRedirect`. - **Per-provider OAuth sign-out (does NOT invalidate the session):** `logoutAccountOauth`. 

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



ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Destroy the current API/web session — token becomes unusable
[apiInstance logoutWithCompletionHandler: 
          ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->logout: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutAccountOauth**
```objc
-(NSURLSessionTask*) logoutAccountOauthWithName: (NSString*) name
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Sign out of the upstream OAuth provider session (does not unlink the account)

Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in `accounts_ext` is preserved, so the user can log back in with that provider without re-linking. Path param: `name` (provider key, e.g. `google`, `github`). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for `Logout` (which kills the MyAdmin session) and NOT a substitute for `deleteAccountOauthName` (which permanently severs the link). Returns `{success:true, text:'OAuth Provider Logged Out.'}`. Errors: 401 unauthenticated. Sibling ops: `deleteAccountOauthName`, `Logout`, `getAccountInfo`.

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


NSString* name = @"name_example"; // 

ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Sign out of the upstream OAuth provider session (does not unlink the account)
[apiInstance logoutAccountOauthWithName:name
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->logoutAccountOauth: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountApiKey**
```objc
-(NSURLSessionTask*) updateAccountApiKeyWithCompletionHandler: 
        (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Rotate the account's REST/MCP API key — old key is invalidated immediately

DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in `account_security` (type `api_key`, label `default`). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns `{success:true, text:NEW_KEY}` — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: `updateAccountPassword`, `updateAccountIpLimits`, `Logout`.

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



ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Rotate the account's REST/MCP API key — old key is invalidated immediately
[apiInstance updateAccountApiKeyWithCompletionHandler: 
          ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->updateAccountApiKey: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountFeatures**
```objc
-(NSURLSessionTask*) updateAccountFeaturesWithDisableReset: (NSNumber*) disableReset
    disableReinstall: (NSNumber*) disableReinstall
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Toggle account-wide safety locks for password reset and OS reinstall

Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current. 

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


NSNumber* disableReset = @56; //  (optional)
NSNumber* disableReinstall = @56; //  (optional)

ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Toggle account-wide safety locks for password reset and OS reinstall
[apiInstance updateAccountFeaturesWithDisableReset:disableReset
              disableReinstall:disableReinstall
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->updateAccountFeatures: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disableReset** | **NSNumber***|  | [optional] 
 **disableReinstall** | **NSNumber***|  | [optional] 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountInfo**
```objc
-(NSURLSessionTask*) updateAccountInfoWithName: (NSString*) name
    address: (NSString*) address
    city: (NSString*) city
    state: (NSString*) state
    zip: (NSString*) zip
    country: (NSString*) country
    phone: (NSString*) phone
    company: (NSString*) company
    address2: (NSString*) address2
    locale: (NSString*) locale
    emailInvoices: (NSString*) emailInvoices
    emailAbuse: (NSString*) emailAbuse
    disableReset: (NSNumber*) disableReset
    disableReinstall: (NSNumber*) disableReinstall
    disableServerNotifications: (NSNumber*) disableServerNotifications
    disableEmailNotifications: (NSNumber*) disableEmailNotifications
    gstin: (NSString*) gstin
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Update contact and billing-address fields on the customer profile

Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.

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


NSString* name = @"name_example"; // Your name.
NSString* address = @"address_example"; // Your address.
NSString* city = @"city_example"; // Your city.
NSString* state = @"state_example"; // Your state.
NSString* zip = @"zip_example"; // Your ZIP code.
NSString* country = @"country_example"; // Your country.
NSString* phone = @"phone_example"; // Your phone number.
NSString* company = @"company_example"; // Your company name. (optional)
NSString* address2 = @"address2_example"; // Additional address information. (optional)
NSString* locale = @"locale_example"; // Your preferred locale. (optional)
NSString* emailInvoices = @"emailInvoices_example"; // Your email for invoice notifications. (optional)
NSString* emailAbuse = @"emailAbuse_example"; // Your email for abuse notifications. (optional)
NSNumber* disableReset = @56; // Set to `true` to disable account resets, or `false` to enable them. (optional)
NSNumber* disableReinstall = @56; // Set to `true` to disable server reinstalls, or `false` to enable them. (optional)
NSNumber* disableServerNotifications = @56; // Set to `true` to disable server notifications, or `false` to enable them. (optional)
NSNumber* disableEmailNotifications = @56; // Set to `true` to disable email notifications, or `false` to enable them. (optional)
NSString* gstin = @"gstin_example"; // Your GST identification number (if applicable). (optional)

ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Update contact and billing-address fields on the customer profile
[apiInstance updateAccountInfoWithName:name
              address:address
              city:city
              state:state
              zip:zip
              country:country
              phone:phone
              company:company
              address2:address2
              locale:locale
              emailInvoices:emailInvoices
              emailAbuse:emailAbuse
              disableReset:disableReset
              disableReinstall:disableReinstall
              disableServerNotifications:disableServerNotifications
              disableEmailNotifications:disableEmailNotifications
              gstin:gstin
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->updateAccountInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Your name. | 
 **address** | **NSString***| Your address. | 
 **city** | **NSString***| Your city. | 
 **state** | **NSString***| Your state. | 
 **zip** | **NSString***| Your ZIP code. | 
 **country** | **NSString***| Your country. | 
 **phone** | **NSString***| Your phone number. | 
 **company** | **NSString***| Your company name. | [optional] 
 **address2** | **NSString***| Additional address information. | [optional] 
 **locale** | **NSString***| Your preferred locale. | [optional] 
 **emailInvoices** | **NSString***| Your email for invoice notifications. | [optional] 
 **emailAbuse** | **NSString***| Your email for abuse notifications. | [optional] 
 **disableReset** | **NSNumber***| Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. | [optional] 
 **disableReinstall** | **NSNumber***| Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. | [optional] 
 **disableServerNotifications** | **NSNumber***| Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. | [optional] 
 **disableEmailNotifications** | **NSNumber***| Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. | [optional] 
 **gstin** | **NSString***| Your GST identification number (if applicable). | [optional] 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountIpLimits**
```objc
-(NSURLSessionTask*) updateAccountIpLimitsWithStart: (NSString*) start
    end: (NSString*) end
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)

DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.

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


NSString* start = @"start_example"; // The begining (or first) IP address in the range.
NSString* end = @"end_example"; // The ending (or last) IP address in the range.

ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)
[apiInstance updateAccountIpLimitsWithStart:start
              end:end
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->updateAccountIpLimits: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **NSString***| The begining (or first) IP address in the range. | 
 **end** | **NSString***| The ending (or last) IP address in the range. | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountPassword**
```objc
-(NSURLSessionTask*) updateAccountPasswordWithPassword: (NSString*) password
        completionHandler: (void (^)(ISATextResponse* output, NSError* error)) handler;
```

Change the account login password (verifies current, kills other sessions)

DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message. 

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


NSString* password = @"password_example"; // 

ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Change the account login password (verifies current, kills other sessions)
[apiInstance updateAccountPasswordWithPassword:password
          completionHandler: ^(ISATextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->updateAccountPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **NSString***|  | 

### Return type

[**ISATextResponse***](ISATextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountSshKey**
```objc
-(NSURLSessionTask*) updateAccountSshKeyWithSshKey: (NSString*) sshKey
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Set the account-level SSH public key auto-installed on new VPS/dedicated orders

Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.

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


NSString* sshKey = @"sshKey_example"; //  (optional)

ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Set the account-level SSH public key auto-installed on new VPS/dedicated orders
[apiInstance updateAccountSshKeyWithSshKey:sshKey
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->updateAccountSshKey: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sshKey** | **NSString***|  | [optional] 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountTfa**
```objc
-(NSURLSessionTask*) updateAccountTfaWith2faGoogleCode: (NSString*) _2faGoogleCode
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Verify TOTP code and enable two-factor authentication on the account

Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.

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


NSString* _2faGoogleCode = @"_2faGoogleCode_example"; // The 6-digit verification code from your authenticator app.

ISAAccountApi*apiInstance = [[ISAAccountApi alloc] init];

// Verify TOTP code and enable two-factor authentication on the account
[apiInstance updateAccountTfaWith2faGoogleCode:_2faGoogleCode
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAAccountApi->updateAccountTfa: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_2faGoogleCode** | **NSString***| The 6-digit verification code from your authenticator app. | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


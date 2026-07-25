# swagger.api.AccountApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccountOauthName**](AccountApi.md#deleteAccountOauthName) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
[**deleteAccountTfa**](AccountApi.md#deleteAccountTfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret
[**deleteIpLimit**](AccountApi.md#deleteIpLimit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
[**getAccountInfo**](AccountApi.md#getAccountInfo) | **GET** /account | Read full account profile, billing address, and security settings
[**getAccountTfaSetup**](AccountApi.md#getAccountTfaSetup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
[**getHome**](AccountApi.md#getHome) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts
[**getSearch**](AccountApi.md#getSearch) | **GET** /search | Global autocomplete across the caller&#x27;s services, domains, and records
[**logout**](AccountApi.md#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable
[**logoutAccountOauth**](AccountApi.md#logoutAccountOauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account)
[**updateAccountApiKey**](AccountApi.md#updateAccountApiKey) | **POST** /account/apikey | Rotate the account&#x27;s REST/MCP API key — old key is invalidated immediately
[**updateAccountFeatures**](AccountApi.md#updateAccountFeatures) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall
[**updateAccountInfo**](AccountApi.md#updateAccountInfo) | **POST** /account | Update contact and billing-address fields on the customer profile
[**updateAccountIpLimits**](AccountApi.md#updateAccountIpLimits) | **POST** /account/iplimits | Add an IP CIDR/range to the account&#x27;s API+web allow-list (lockout-safe)
[**updateAccountPassword**](AccountApi.md#updateAccountPassword) | **POST** /account/password | Change the account login password (verifies current, kills other sessions)
[**updateAccountSshKey**](AccountApi.md#updateAccountSshKey) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
[**updateAccountTfa**](AccountApi.md#updateAccountTfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account

# **deleteAccountOauthName**
> SuccessTextResponse deleteAccountOauthName(name)

Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account

DESTRUCTIVE: removes the linked provider's tokens from `accounts_ext` (rows where `account_key` IN (`{name}_id`,`{name}_url`)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: `name` (case-insensitive provider key, e.g. `google`, `github`, `facebook`) — must be present in `getOauthConfig().providers`. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns `{success:true, text:'OAuth Provider Unlinked.'}`. Errors: 400 `Invalid Provider Name.` if `name` not configured; 401 unauthenticated. Sibling ops: `logoutAccountOauth`, `getAccountInfo`, `updateAccountPassword`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();
var name = name_example; // String | 

try {
    var result = api_instance.deleteAccountOauthName(name);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->deleteAccountOauthName: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccountTfa**
> SuccessTextResponse deleteAccountTfa()

Disable two-factor authentication and remove the TOTP secret

DESTRUCTIVE: removes the 2FA secret from `account_security` and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then `getAccountTfaSetup` -> `updateAccountTfa`). Returns `{success:true, text:'Google Two Factor Authentication is disabled successfully!'}`. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate `updateAccountPassword` if you suspect credential compromise. Sibling ops: `getAccountTfaSetup`, `updateAccountTfa`, `updateAccountPassword`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();

try {
    var result = api_instance.deleteAccountTfa();
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->deleteAccountTfa: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIpLimit**
> GenericResponse deleteIpLimit(body)

Remove one IP range from the account allow-list (PATCH on /account/iplimits)

DESTRUCTIVE: deletes the matching `{start, end}` entry from `accounts.session_limit`. Method is PATCH (not DELETE) because the path collides with `updateAccountIpLimits`. Body: `{start, end}` — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller's source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via `X-API-APP: 1` header. Returns `{success:true, text:'IP Range deleted.'}`. Errors: 400/422 `Invalid IP Address` if `start`/`end` aren't valid IPs; 401 unauthenticated. Sibling ops: `updateAccountIpLimits`, `getAccountInfo`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();
var body = new IpLimitRange(); // IpLimitRange | 

try {
    var result = api_instance.deleteIpLimit(body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->deleteIpLimit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IpLimitRange**](IpLimitRange.md)|  | [optional] 

### Return type

[**GenericResponse**](GenericResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInfo**
> AccountInfo getAccountInfo()

Read full account profile, billing address, and security settings

Use to render the account-settings page or to verify current state before mutating with `updateAccountInfo`. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (`disable_reset`, `disable_reinstall`, `disable_*_notifications`), gravatar URL, language, country->currency map, and `enableLocales`/`enableCurrencies` UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: `updateAccountInfo`, `getAccountTfaSetup`, `updateAccountFeatures`, `updateAccountIpLimits`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();

try {
    var result = api_instance.getAccountInfo();
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->getAccountInfo: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTfaSetup**
> InlineResponse200 getAccountTfaSetup()

Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)

Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns `{2fa_google_key, 2fa_google_split}` — render `2fa_google_key` as a QR code (otpauth://totp/My.InterServer:LID?secret=KEY) and display `2fa_google_split` (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with `updateAccountTfa`. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: `updateAccountTfa` (verify & enable), `deleteAccountTfa` (disable).

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();

try {
    var result = api_instance.getAccountTfaSetup();
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->getAccountTfaSetup: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHome**
> Home getHome()

Aggregate dashboard payload — service counts, recent activity, alerts

Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by `getClientHomeData()` — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don't each issue list calls. Cached implementation lives in `function_requirements('client_home')` -> `getClientHomeData()`. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: `getSearch` (autocomplete), `getAccountInfo`, plus per-module list ops like `getVpsList`, `getDomainsList`, `getBillingInvoices`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();

try {
    var result = api_instance.getHome();
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->getHome: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Home**](Home.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearch**
> SearchAutocompleteResponse getSearch()

Global autocomplete across the caller's services, domains, and records

Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally `q=` though the underlying `getSearchAutoComplete($custid)` may match against multiple fields. Returns a `SearchAutocompleteResponse` object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: `getHome`, `getAccountInfo`, plus per-module list ops (`getVpsList`, `getDomainsList`, `getMailList`, `getTicketsList`).

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();

try {
    var result = api_instance.getSearch();
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->getSearch: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SearchAutocompleteResponse**](SearchAutocompleteResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> SuccessTextResponse logout()

Destroy the current API/web session — token becomes unusable

DESTRUCTIVE: invalidates the caller's session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns `200` (no-op when `App::accounts()->data` is empty). API keys (`updateAccountApiKey`) and persistent OAuth links are NOT affected — only this session token. Sibling ops: `updateAccountPassword`, `updateAccountApiKey`, `logoutAccountOauth`, `deleteAccountOauthName`.  **Path/Query/Body:** None.  **Returns:** `{ success: true, text: 'Logged Out' }`.  **Side effects:** calls `App::session()->destroy()` only when `api_check_auth_limits()` passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - `401` — only on a completely malformed auth header.  **Related calls:** - **Re-login:** `submitLogin` or `getOauthRedirect`. - **Per-provider OAuth sign-out (does NOT invalidate the session):** `logoutAccountOauth`. 

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();

try {
    var result = api_instance.logout();
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->logout: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutAccountOauth**
> SuccessTextResponse logoutAccountOauth(name)

Sign out of the upstream OAuth provider session (does not unlink the account)

Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in `accounts_ext` is preserved, so the user can log back in with that provider without re-linking. Path param: `name` (provider key, e.g. `google`, `github`). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for `Logout` (which kills the MyAdmin session) and NOT a substitute for `deleteAccountOauthName` (which permanently severs the link). Returns `{success:true, text:'OAuth Provider Logged Out.'}`. Errors: 401 unauthenticated. Sibling ops: `deleteAccountOauthName`, `Logout`, `getAccountInfo`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();
var name = name_example; // String | 

try {
    var result = api_instance.logoutAccountOauth(name);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->logoutAccountOauth: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountApiKey**
> SuccessTextResponse updateAccountApiKey()

Rotate the account's REST/MCP API key — old key is invalidated immediately

DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in `account_security` (type `api_key`, label `default`). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns `{success:true, text:NEW_KEY}` — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: `updateAccountPassword`, `updateAccountIpLimits`, `Logout`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();

try {
    var result = api_instance.updateAccountApiKey();
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->updateAccountApiKey: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountFeatures**
> SuccessTextResponse updateAccountFeatures(disableReset, disableReinstall, body)

Toggle account-wide safety locks for password reset and OS reinstall

Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current. 

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();
var disableReset = 56; // int | 
var disableReinstall = 56; // int | 
var body = new AccountFeatures(); // AccountFeatures | 

try {
    var result = api_instance.updateAccountFeatures(disableReset, disableReinstall, body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->updateAccountFeatures: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disableReset** | **int**|  | 
 **disableReinstall** | **int**|  | 
 **body** | [**AccountFeatures**](AccountFeatures.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountInfo**
> SuccessTextResponse updateAccountInfo(name, company, address, address2, city, state, zip, country, phone, locale, emailInvoices, emailAbuse, disableReset, disableReinstall, disableServerNotifications, disableEmailNotifications, gstin, body)

Update contact and billing-address fields on the customer profile

Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();
var name = name_example; // String | 
var company = company_example; // String | 
var address = address_example; // String | 
var address2 = address2_example; // String | 
var city = city_example; // String | 
var state = state_example; // String | 
var zip = zip_example; // String | 
var country = country_example; // String | 
var phone = phone_example; // String | 
var locale = locale_example; // String | 
var emailInvoices = emailInvoices_example; // String | 
var emailAbuse = emailAbuse_example; // String | 
var disableReset = true; // bool | 
var disableReinstall = true; // bool | 
var disableServerNotifications = true; // bool | 
var disableEmailNotifications = true; // bool | 
var gstin = gstin_example; // String | 
var body = new AccountInfoPost(); // AccountInfoPost | 

try {
    var result = api_instance.updateAccountInfo(name, company, address, address2, city, state, zip, country, phone, locale, emailInvoices, emailAbuse, disableReset, disableReinstall, disableServerNotifications, disableEmailNotifications, gstin, body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->updateAccountInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **company** | **String**|  | 
 **address** | **String**|  | 
 **address2** | **String**|  | 
 **city** | **String**|  | 
 **state** | **String**|  | 
 **zip** | **String**|  | 
 **country** | **String**|  | 
 **phone** | **String**|  | 
 **locale** | **String**|  | 
 **emailInvoices** | **String**|  | 
 **emailAbuse** | **String**|  | 
 **disableReset** | **bool**|  | 
 **disableReinstall** | **bool**|  | 
 **disableServerNotifications** | **bool**|  | 
 **disableEmailNotifications** | **bool**|  | 
 **gstin** | **String**|  | 
 **body** | [**AccountInfoPost**](AccountInfoPost.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountIpLimits**
> SuccessTextResponse updateAccountIpLimits(start, end, body)

Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)

DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();
var start = start_example; // String | 
var end = end_example; // String | 
var body = new IpLimitRange(); // IpLimitRange | The lower and upper bounds of an ip range.

try {
    var result = api_instance.updateAccountIpLimits(start, end, body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->updateAccountIpLimits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **String**|  | 
 **end** | **String**|  | 
 **body** | [**IpLimitRange**](IpLimitRange.md)| The lower and upper bounds of an ip range. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountPassword**
> TextResponse updateAccountPassword(password, body)

Change the account login password (verifies current, kills other sessions)

DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message. 

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();
var password = password_example; // String | 
var body = new PasswordRequest(); // PasswordRequest | 

try {
    var result = api_instance.updateAccountPassword(password, body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->updateAccountPassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **String**|  | 
 **body** | [**PasswordRequest**](PasswordRequest.md)|  | 

### Return type

[**TextResponse**](TextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountSshKey**
> SuccessTextResponse updateAccountSshKey(sshKey, body)

Set the account-level SSH public key auto-installed on new VPS/dedicated orders

Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();
var sshKey = sshKey_example; // String | 
var body = new AccountSshKey(); // AccountSshKey | 

try {
    var result = api_instance.updateAccountSshKey(sshKey, body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->updateAccountSshKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sshKey** | **String**|  | 
 **body** | [**AccountSshKey**](AccountSshKey.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountTfa**
> SuccessTextResponse updateAccountTfa(n2faGoogleCode, body)

Verify TOTP code and enable two-factor authentication on the account

Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new AccountApi();
var n2faGoogleCode = n2faGoogleCode_example; // String | 
var body = new Account2faBody1(); // Account2faBody1 | 

try {
    var result = api_instance.updateAccountTfa(n2faGoogleCode, body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->updateAccountTfa: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **n2faGoogleCode** | **String**|  | 
 **body** | [**Account2faBody1**](Account2faBody1.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


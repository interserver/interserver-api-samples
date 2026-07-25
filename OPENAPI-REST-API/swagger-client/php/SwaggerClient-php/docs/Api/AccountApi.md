# InterserverApiClient\AccountApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccountOauthName**](AccountApi.md#deleteaccountoauthname) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
[**deleteAccountTfa**](AccountApi.md#deleteaccounttfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret
[**deleteIpLimit**](AccountApi.md#deleteiplimit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
[**getAccountInfo**](AccountApi.md#getaccountinfo) | **GET** /account | Read full account profile, billing address, and security settings
[**getAccountTfaSetup**](AccountApi.md#getaccounttfasetup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
[**getHome**](AccountApi.md#gethome) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts
[**getSearch**](AccountApi.md#getsearch) | **GET** /search | Global autocomplete across the caller&#x27;s services, domains, and records
[**logout**](AccountApi.md#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable
[**logoutAccountOauth**](AccountApi.md#logoutaccountoauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account)
[**updateAccountApiKey**](AccountApi.md#updateaccountapikey) | **POST** /account/apikey | Rotate the account&#x27;s REST/MCP API key — old key is invalidated immediately
[**updateAccountFeatures**](AccountApi.md#updateaccountfeatures) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall
[**updateAccountInfo**](AccountApi.md#updateaccountinfo) | **POST** /account | Update contact and billing-address fields on the customer profile
[**updateAccountIpLimits**](AccountApi.md#updateaccountiplimits) | **POST** /account/iplimits | Add an IP CIDR/range to the account&#x27;s API+web allow-list (lockout-safe)
[**updateAccountPassword**](AccountApi.md#updateaccountpassword) | **POST** /account/password | Change the account login password (verifies current, kills other sessions)
[**updateAccountSshKey**](AccountApi.md#updateaccountsshkey) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
[**updateAccountTfa**](AccountApi.md#updateaccounttfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account

# **deleteAccountOauthName**
> \InterserverApiClient\Model\SuccessTextResponse deleteAccountOauthName($name)

Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account

DESTRUCTIVE: removes the linked provider's tokens from `accounts_ext` (rows where `account_key` IN (`{name}_id`,`{name}_url`)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: `name` (case-insensitive provider key, e.g. `google`, `github`, `facebook`) — must be present in `getOauthConfig().providers`. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns `{success:true, text:'OAuth Provider Unlinked.'}`. Errors: 400 `Invalid Provider Name.` if `name` not configured; 401 unauthenticated. Sibling ops: `logoutAccountOauth`, `getAccountInfo`, `updateAccountPassword`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = "name_example"; // string | 

try {
    $result = $apiInstance->deleteAccountOauthName($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->deleteAccountOauthName: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteAccountTfa**
> \InterserverApiClient\Model\SuccessTextResponse deleteAccountTfa()

Disable two-factor authentication and remove the TOTP secret

DESTRUCTIVE: removes the 2FA secret from `account_security` and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then `getAccountTfaSetup` -> `updateAccountTfa`). Returns `{success:true, text:'Google Two Factor Authentication is disabled successfully!'}`. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate `updateAccountPassword` if you suspect credential compromise. Sibling ops: `getAccountTfaSetup`, `updateAccountTfa`, `updateAccountPassword`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->deleteAccountTfa();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->deleteAccountTfa: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteIpLimit**
> \InterserverApiClient\Model\GenericResponse deleteIpLimit($body)

Remove one IP range from the account allow-list (PATCH on /account/iplimits)

DESTRUCTIVE: deletes the matching `{start, end}` entry from `accounts.session_limit`. Method is PATCH (not DELETE) because the path collides with `updateAccountIpLimits`. Body: `{start, end}` — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller's source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via `X-API-APP: 1` header. Returns `{success:true, text:'IP Range deleted.'}`. Errors: 400/422 `Invalid IP Address` if `start`/`end` aren't valid IPs; 401 unauthenticated. Sibling ops: `updateAccountIpLimits`, `getAccountInfo`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\IpLimitRange(); // \InterserverApiClient\Model\IpLimitRange | 

try {
    $result = $apiInstance->deleteIpLimit($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->deleteIpLimit: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\IpLimitRange**](../Model/IpLimitRange.md)|  | [optional]

### Return type

[**\InterserverApiClient\Model\GenericResponse**](../Model/GenericResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAccountInfo**
> \InterserverApiClient\Model\AccountInfo getAccountInfo()

Read full account profile, billing address, and security settings

Use to render the account-settings page or to verify current state before mutating with `updateAccountInfo`. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (`disable_reset`, `disable_reinstall`, `disable_*_notifications`), gravatar URL, language, country->currency map, and `enableLocales`/`enableCurrencies` UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: `updateAccountInfo`, `getAccountTfaSetup`, `updateAccountFeatures`, `updateAccountIpLimits`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getAccountInfo();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->getAccountInfo: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\AccountInfo**](../Model/AccountInfo.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAccountTfaSetup**
> \InterserverApiClient\Model\InlineResponse200 getAccountTfaSetup()

Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)

Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns `{2fa_google_key, 2fa_google_split}` — render `2fa_google_key` as a QR code (otpauth://totp/My.InterServer:LID?secret=KEY) and display `2fa_google_split` (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with `updateAccountTfa`. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: `updateAccountTfa` (verify & enable), `deleteAccountTfa` (disable).

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getAccountTfaSetup();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->getAccountTfaSetup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getHome**
> \InterserverApiClient\Model\Home getHome()

Aggregate dashboard payload — service counts, recent activity, alerts

Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by `getClientHomeData()` — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don't each issue list calls. Cached implementation lives in `function_requirements('client_home')` -> `getClientHomeData()`. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: `getSearch` (autocomplete), `getAccountInfo`, plus per-module list ops like `getVpsList`, `getDomainsList`, `getBillingInvoices`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getHome();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->getHome: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\Home**](../Model/Home.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSearch**
> \InterserverApiClient\Model\SearchAutocompleteResponse getSearch()

Global autocomplete across the caller's services, domains, and records

Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally `q=` though the underlying `getSearchAutoComplete($custid)` may match against multiple fields. Returns a `SearchAutocompleteResponse` object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: `getHome`, `getAccountInfo`, plus per-module list ops (`getVpsList`, `getDomainsList`, `getMailList`, `getTicketsList`).

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getSearch();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->getSearch: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\SearchAutocompleteResponse**](../Model/SearchAutocompleteResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **logout**
> \InterserverApiClient\Model\SuccessTextResponse logout()

Destroy the current API/web session — token becomes unusable

DESTRUCTIVE: invalidates the caller's session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns `200` (no-op when `App::accounts()->data` is empty). API keys (`updateAccountApiKey`) and persistent OAuth links are NOT affected — only this session token. Sibling ops: `updateAccountPassword`, `updateAccountApiKey`, `logoutAccountOauth`, `deleteAccountOauthName`.  **Path/Query/Body:** None.  **Returns:** `{ success: true, text: 'Logged Out' }`.  **Side effects:** calls `App::session()->destroy()` only when `api_check_auth_limits()` passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - `401` — only on a completely malformed auth header.  **Related calls:** - **Re-login:** `submitLogin` or `getOauthRedirect`. - **Per-provider OAuth sign-out (does NOT invalidate the session):** `logoutAccountOauth`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->logout();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->logout: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **logoutAccountOauth**
> \InterserverApiClient\Model\SuccessTextResponse logoutAccountOauth($name)

Sign out of the upstream OAuth provider session (does not unlink the account)

Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in `accounts_ext` is preserved, so the user can log back in with that provider without re-linking. Path param: `name` (provider key, e.g. `google`, `github`). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for `Logout` (which kills the MyAdmin session) and NOT a substitute for `deleteAccountOauthName` (which permanently severs the link). Returns `{success:true, text:'OAuth Provider Logged Out.'}`. Errors: 401 unauthenticated. Sibling ops: `deleteAccountOauthName`, `Logout`, `getAccountInfo`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = "name_example"; // string | 

try {
    $result = $apiInstance->logoutAccountOauth($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->logoutAccountOauth: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountApiKey**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountApiKey()

Rotate the account's REST/MCP API key — old key is invalidated immediately

DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in `account_security` (type `api_key`, label `default`). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns `{success:true, text:NEW_KEY}` — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: `updateAccountPassword`, `updateAccountIpLimits`, `Logout`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->updateAccountApiKey();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountApiKey: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountFeatures**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountFeatures($disable_reset, $disable_reinstall)

Toggle account-wide safety locks for password reset and OS reinstall

Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$disable_reset = 56; // int | 
$disable_reinstall = 56; // int | 

try {
    $result = $apiInstance->updateAccountFeatures($disable_reset, $disable_reinstall);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountFeatures: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disable_reset** | **int**|  |
 **disable_reinstall** | **int**|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountFeatures**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountFeatures($body)

Toggle account-wide safety locks for password reset and OS reinstall

Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\AccountFeatures(); // \InterserverApiClient\Model\AccountFeatures | 

try {
    $result = $apiInstance->updateAccountFeatures($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountFeatures: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\AccountFeatures**](../Model/AccountFeatures.md)|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountInfo**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountInfo($name, $company, $address, $address2, $city, $state, $zip, $country, $phone, $locale, $email_invoices, $email_abuse, $disable_reset, $disable_reinstall, $disable_server_notifications, $disable_email_notifications, $gstin)

Update contact and billing-address fields on the customer profile

Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = "name_example"; // string | 
$company = "company_example"; // string | 
$address = "address_example"; // string | 
$address2 = "address2_example"; // string | 
$city = "city_example"; // string | 
$state = "state_example"; // string | 
$zip = "zip_example"; // string | 
$country = "country_example"; // string | 
$phone = "phone_example"; // string | 
$locale = "locale_example"; // string | 
$email_invoices = "email_invoices_example"; // string | 
$email_abuse = "email_abuse_example"; // string | 
$disable_reset = true; // bool | 
$disable_reinstall = true; // bool | 
$disable_server_notifications = true; // bool | 
$disable_email_notifications = true; // bool | 
$gstin = "gstin_example"; // string | 

try {
    $result = $apiInstance->updateAccountInfo($name, $company, $address, $address2, $city, $state, $zip, $country, $phone, $locale, $email_invoices, $email_abuse, $disable_reset, $disable_reinstall, $disable_server_notifications, $disable_email_notifications, $gstin);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountInfo: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **company** | **string**|  |
 **address** | **string**|  |
 **address2** | **string**|  |
 **city** | **string**|  |
 **state** | **string**|  |
 **zip** | **string**|  |
 **country** | **string**|  |
 **phone** | **string**|  |
 **locale** | **string**|  |
 **email_invoices** | **string**|  |
 **email_abuse** | **string**|  |
 **disable_reset** | **bool**|  |
 **disable_reinstall** | **bool**|  |
 **disable_server_notifications** | **bool**|  |
 **disable_email_notifications** | **bool**|  |
 **gstin** | **string**|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountInfo**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountInfo($body)

Update contact and billing-address fields on the customer profile

Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\AccountInfoPost(); // \InterserverApiClient\Model\AccountInfoPost | 

try {
    $result = $apiInstance->updateAccountInfo($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountInfo: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\AccountInfoPost**](../Model/AccountInfoPost.md)|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountIpLimits**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountIpLimits($start, $end)

Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)

DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$start = "start_example"; // string | 
$end = "end_example"; // string | 

try {
    $result = $apiInstance->updateAccountIpLimits($start, $end);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountIpLimits: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **string**|  |
 **end** | **string**|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountIpLimits**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountIpLimits($body)

Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)

DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\IpLimitRange(); // \InterserverApiClient\Model\IpLimitRange | The lower and upper bounds of an ip range.

try {
    $result = $apiInstance->updateAccountIpLimits($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountIpLimits: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\IpLimitRange**](../Model/IpLimitRange.md)| The lower and upper bounds of an ip range. |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountPassword**
> \InterserverApiClient\Model\TextResponse updateAccountPassword($password)

Change the account login password (verifies current, kills other sessions)

DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$password = "password_example"; // string | 

try {
    $result = $apiInstance->updateAccountPassword($password);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountPassword: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **string**|  |

### Return type

[**\InterserverApiClient\Model\TextResponse**](../Model/TextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountPassword**
> \InterserverApiClient\Model\TextResponse updateAccountPassword($body)

Change the account login password (verifies current, kills other sessions)

DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\PasswordRequest(); // \InterserverApiClient\Model\PasswordRequest | 

try {
    $result = $apiInstance->updateAccountPassword($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountPassword: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\PasswordRequest**](../Model/PasswordRequest.md)|  |

### Return type

[**\InterserverApiClient\Model\TextResponse**](../Model/TextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountSshKey**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountSshKey($ssh_key)

Set the account-level SSH public key auto-installed on new VPS/dedicated orders

Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ssh_key = "ssh_key_example"; // string | 

try {
    $result = $apiInstance->updateAccountSshKey($ssh_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountSshKey: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_key** | **string**|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountSshKey**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountSshKey($body)

Set the account-level SSH public key auto-installed on new VPS/dedicated orders

Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\AccountSshKey(); // \InterserverApiClient\Model\AccountSshKey | 

try {
    $result = $apiInstance->updateAccountSshKey($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountSshKey: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\AccountSshKey**](../Model/AccountSshKey.md)|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountTfa**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountTfa($_2fa_google_code)

Verify TOTP code and enable two-factor authentication on the account

Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$_2fa_google_code = "_2fa_google_code_example"; // string | 

try {
    $result = $apiInstance->updateAccountTfa($_2fa_google_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountTfa: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_2fa_google_code** | **string**|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccountTfa**
> \InterserverApiClient\Model\SuccessTextResponse updateAccountTfa($body)

Verify TOTP code and enable two-factor authentication on the account

Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.

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

$apiInstance = new InterserverApiClient\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\Account2faBody1(); // \InterserverApiClient\Model\Account2faBody1 | 

try {
    $result = $apiInstance->updateAccountTfa($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->updateAccountTfa: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\Account2faBody1**](../Model/Account2faBody1.md)|  |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


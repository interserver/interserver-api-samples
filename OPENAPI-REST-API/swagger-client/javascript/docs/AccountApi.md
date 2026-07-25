# InterServerManagementApi.AccountApi

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

<a name="deleteAccountOauthName"></a>
# **deleteAccountOauthName**
> SuccessTextResponse deleteAccountOauthName(name)

Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account

DESTRUCTIVE: removes the linked provider&#x27;s tokens from &#x60;accounts_ext&#x60; (rows where &#x60;account_key&#x60; IN (&#x60;{name}_id&#x60;,&#x60;{name}_url&#x60;)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: &#x60;name&#x60; (case-insensitive provider key, e.g. &#x60;google&#x60;, &#x60;github&#x60;, &#x60;facebook&#x60;) — must be present in &#x60;getOauthConfig().providers&#x60;. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns &#x60;{success:true, text:&#x27;OAuth Provider Unlinked.&#x27;}&#x60;. Errors: 400 &#x60;Invalid Provider Name.&#x60; if &#x60;name&#x60; not configured; 401 unauthenticated. Sibling ops: &#x60;logoutAccountOauth&#x60;, &#x60;getAccountInfo&#x60;, &#x60;updateAccountPassword&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
let name = "name_example"; // String | 

apiInstance.deleteAccountOauthName(name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="deleteAccountTfa"></a>
# **deleteAccountTfa**
> SuccessTextResponse deleteAccountTfa()

Disable two-factor authentication and remove the TOTP secret

DESTRUCTIVE: removes the 2FA secret from &#x60;account_security&#x60; and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then &#x60;getAccountTfaSetup&#x60; -&gt; &#x60;updateAccountTfa&#x60;). Returns &#x60;{success:true, text:&#x27;Google Two Factor Authentication is disabled successfully!&#x27;}&#x60;. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate &#x60;updateAccountPassword&#x60; if you suspect credential compromise. Sibling ops: &#x60;getAccountTfaSetup&#x60;, &#x60;updateAccountTfa&#x60;, &#x60;updateAccountPassword&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
apiInstance.deleteAccountTfa((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="deleteIpLimit"></a>
# **deleteIpLimit**
> GenericResponse deleteIpLimit(opts)

Remove one IP range from the account allow-list (PATCH on /account/iplimits)

DESTRUCTIVE: deletes the matching &#x60;{start, end}&#x60; entry from &#x60;accounts.session_limit&#x60;. Method is PATCH (not DELETE) because the path collides with &#x60;updateAccountIpLimits&#x60;. Body: &#x60;{start, end}&#x60; — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller&#x27;s source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via &#x60;X-API-APP: 1&#x60; header. Returns &#x60;{success:true, text:&#x27;IP Range deleted.&#x27;}&#x60;. Errors: 400/422 &#x60;Invalid IP Address&#x60; if &#x60;start&#x60;/&#x60;end&#x60; aren&#x27;t valid IPs; 401 unauthenticated. Sibling ops: &#x60;updateAccountIpLimits&#x60;, &#x60;getAccountInfo&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
let opts = { 
  'body': new InterServerManagementApi.IpLimitRange() // IpLimitRange | 
};
apiInstance.deleteIpLimit(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="getAccountInfo"></a>
# **getAccountInfo**
> AccountInfo getAccountInfo()

Read full account profile, billing address, and security settings

Use to render the account-settings page or to verify current state before mutating with &#x60;updateAccountInfo&#x60;. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (&#x60;disable_reset&#x60;, &#x60;disable_reinstall&#x60;, &#x60;disable_*_notifications&#x60;), gravatar URL, language, country-&gt;currency map, and &#x60;enableLocales&#x60;/&#x60;enableCurrencies&#x60; UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: &#x60;updateAccountInfo&#x60;, &#x60;getAccountTfaSetup&#x60;, &#x60;updateAccountFeatures&#x60;, &#x60;updateAccountIpLimits&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
apiInstance.getAccountInfo((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="getAccountTfaSetup"></a>
# **getAccountTfaSetup**
> InlineResponse200 getAccountTfaSetup()

Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)

Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns &#x60;{2fa_google_key, 2fa_google_split}&#x60; — render &#x60;2fa_google_key&#x60; as a QR code (otpauth://totp/My.InterServer:LID?secret&#x3D;KEY) and display &#x60;2fa_google_split&#x60; (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with &#x60;updateAccountTfa&#x60;. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: &#x60;updateAccountTfa&#x60; (verify &amp; enable), &#x60;deleteAccountTfa&#x60; (disable).

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
apiInstance.getAccountTfaSetup((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="getHome"></a>
# **getHome**
> Home getHome()

Aggregate dashboard payload — service counts, recent activity, alerts

Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by &#x60;getClientHomeData()&#x60; — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don&#x27;t each issue list calls. Cached implementation lives in &#x60;function_requirements(&#x27;client_home&#x27;)&#x60; -&gt; &#x60;getClientHomeData()&#x60;. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: &#x60;getSearch&#x60; (autocomplete), &#x60;getAccountInfo&#x60;, plus per-module list ops like &#x60;getVpsList&#x60;, &#x60;getDomainsList&#x60;, &#x60;getBillingInvoices&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
apiInstance.getHome((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="getSearch"></a>
# **getSearch**
> SearchAutocompleteResponse getSearch()

Global autocomplete across the caller&#x27;s services, domains, and records

Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally &#x60;q&#x3D;&#x60; though the underlying &#x60;getSearchAutoComplete($custid)&#x60; may match against multiple fields. Returns a &#x60;SearchAutocompleteResponse&#x60; object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: &#x60;getHome&#x60;, &#x60;getAccountInfo&#x60;, plus per-module list ops (&#x60;getVpsList&#x60;, &#x60;getDomainsList&#x60;, &#x60;getMailList&#x60;, &#x60;getTicketsList&#x60;).

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
apiInstance.getSearch((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="logout"></a>
# **logout**
> SuccessTextResponse logout()

Destroy the current API/web session — token becomes unusable

DESTRUCTIVE: invalidates the caller&#x27;s session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns &#x60;200&#x60; (no-op when &#x60;App::accounts()-&gt;data&#x60; is empty). API keys (&#x60;updateAccountApiKey&#x60;) and persistent OAuth links are NOT affected — only this session token. Sibling ops: &#x60;updateAccountPassword&#x60;, &#x60;updateAccountApiKey&#x60;, &#x60;logoutAccountOauth&#x60;, &#x60;deleteAccountOauthName&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;{ success: true, text: &#x27;Logged Out&#x27; }&#x60;.  **Side effects:** calls &#x60;App::session()-&gt;destroy()&#x60; only when &#x60;api_check_auth_limits()&#x60; passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — only on a completely malformed auth header.  **Related calls:** - **Re-login:** &#x60;submitLogin&#x60; or &#x60;getOauthRedirect&#x60;. - **Per-provider OAuth sign-out (does NOT invalidate the session):** &#x60;logoutAccountOauth&#x60;. 

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
apiInstance.logout((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="logoutAccountOauth"></a>
# **logoutAccountOauth**
> SuccessTextResponse logoutAccountOauth(name)

Sign out of the upstream OAuth provider session (does not unlink the account)

Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in &#x60;accounts_ext&#x60; is preserved, so the user can log back in with that provider without re-linking. Path param: &#x60;name&#x60; (provider key, e.g. &#x60;google&#x60;, &#x60;github&#x60;). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for &#x60;Logout&#x60; (which kills the MyAdmin session) and NOT a substitute for &#x60;deleteAccountOauthName&#x60; (which permanently severs the link). Returns &#x60;{success:true, text:&#x27;OAuth Provider Logged Out.&#x27;}&#x60;. Errors: 401 unauthenticated. Sibling ops: &#x60;deleteAccountOauthName&#x60;, &#x60;Logout&#x60;, &#x60;getAccountInfo&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
let name = "name_example"; // String | 

apiInstance.logoutAccountOauth(name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="updateAccountApiKey"></a>
# **updateAccountApiKey**
> SuccessTextResponse updateAccountApiKey()

Rotate the account&#x27;s REST/MCP API key — old key is invalidated immediately

DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in &#x60;account_security&#x60; (type &#x60;api_key&#x60;, label &#x60;default&#x60;). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns &#x60;{success:true, text:NEW_KEY}&#x60; — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: &#x60;updateAccountPassword&#x60;, &#x60;updateAccountIpLimits&#x60;, &#x60;Logout&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
apiInstance.updateAccountApiKey((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="updateAccountFeatures"></a>
# **updateAccountFeatures**
> SuccessTextResponse updateAccountFeatures(disable_reset, disable_reinstall, body)

Toggle account-wide safety locks for password reset and OS reinstall

Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: &#x60;getAccountInfo&#x60;, &#x60;updateAccountInfo&#x60;, &#x60;updateAccountIpLimits&#x60;.  **Body fields:** - &#x60;disable_reset&#x60; (bool, optional) — when &#x60;true&#x60;, blocks server / VPS root-password resets account-wide. - &#x60;disable_reinstall&#x60; (bool, optional) — when &#x60;true&#x60;, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to &#x60;0&#x60; for the comparison and only persist if their value differs from the current stored value.  **Returns:** &#x60;{ success: true, text }&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;400&#x60; / &#x60;422&#x60; — &#x60;Nothing to update&#x60; when neither flag&#x27;s value differs from current. 

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
let disable_reset = 56; // Number | 
let disable_reinstall = 56; // Number | 
let body = new InterServerManagementApi.AccountFeatures(); // AccountFeatures | 

apiInstance.updateAccountFeatures(disable_reset, disable_reinstall, body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disable_reset** | **Number**|  | 
 **disable_reinstall** | **Number**|  | 
 **body** | [**AccountFeatures**](AccountFeatures.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

<a name="updateAccountInfo"></a>
# **updateAccountInfo**
> SuccessTextResponse updateAccountInfo(name, company, address, address2, city, state, zip, country, phone, locale, email_invoices, email_abuse, disable_reset, disable_reinstall, disable_server_notifications, disable_email_notifications, gstin, body)

Update contact and billing-address fields on the customer profile

Use to change the customer&#x27;s name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (&#x60;email_invoices&#x60;, &#x60;email_abuse&#x60;). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): &#x60;name&#x60;, &#x60;country&#x60;, &#x60;address&#x60;, &#x60;city&#x60;, &#x60;state&#x60;, &#x60;zip&#x60;, &#x60;phone&#x60;. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. &#x60;America/New_York&#x60;). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when &#x60;name&#x60; changes. Returns &#x60;{success:true}&#x60;. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: &#x60;getAccountInfo&#x60;, &#x60;updateAccountFeatures&#x60;, &#x60;updateAccountPassword&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
let name = "name_example"; // String | 
let company = "company_example"; // String | 
let address = "address_example"; // String | 
let address2 = "address2_example"; // String | 
let city = "city_example"; // String | 
let state = "state_example"; // String | 
let zip = "zip_example"; // String | 
let country = "country_example"; // String | 
let phone = "phone_example"; // String | 
let locale = "locale_example"; // String | 
let email_invoices = "email_invoices_example"; // String | 
let email_abuse = "email_abuse_example"; // String | 
let disable_reset = true; // Boolean | 
let disable_reinstall = true; // Boolean | 
let disable_server_notifications = true; // Boolean | 
let disable_email_notifications = true; // Boolean | 
let gstin = "gstin_example"; // String | 
let body = new InterServerManagementApi.AccountInfoPost(); // AccountInfoPost | 

apiInstance.updateAccountInfo(name, company, address, address2, city, state, zip, country, phone, locale, email_invoices, email_abuse, disable_reset, disable_reinstall, disable_server_notifications, disable_email_notifications, gstin, body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
 **email_invoices** | **String**|  | 
 **email_abuse** | **String**|  | 
 **disable_reset** | **Boolean**|  | 
 **disable_reinstall** | **Boolean**|  | 
 **disable_server_notifications** | **Boolean**|  | 
 **disable_email_notifications** | **Boolean**|  | 
 **gstin** | **String**|  | 
 **body** | [**AccountInfoPost**](AccountInfoPost.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

<a name="updateAccountIpLimits"></a>
# **updateAccountIpLimits**
> SuccessTextResponse updateAccountIpLimits(start, end, body)

Add an IP CIDR/range to the account&#x27;s API+web allow-list (lockout-safe)

DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to &#x60;accounts.session_limit&#x60;. Once ANY range exists, all &#x60;/apiv2&#x60; and panel access is restricted to matching source IPs. Body: &#x60;{start, end, restrict?}&#x60; — both IPv4 dotted-quad; &#x60;restrict&#x60; is &#x60;Web &amp; API&#x60; (default) or &#x60;Only API&#x60;. Safety net: server checks the caller&#x27;s IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header &#x60;X-API-APP: 1&#x60; which short-circuits the IP check entirely (see &#x60;api_check_auth_limits()&#x60;), so MCP tools keep working. Caveats: &#x60;192.168.1.0&#x60;-&#x60;192.168.1.255&#x60; is rejected as a placeholder. Returns &#x60;{success:true, text}&#x60;. Errors: 400/422 &#x60;Invalid IP Address&#x60;; 401 unauthenticated. Sibling ops: &#x60;deleteIpLimit&#x60;, &#x60;getAccountInfo&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
let start = "start_example"; // String | 
let end = "end_example"; // String | 
let body = new InterServerManagementApi.IpLimitRange(); // IpLimitRange | The lower and upper bounds of an ip range.

apiInstance.updateAccountIpLimits(start, end, body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="updateAccountPassword"></a>
# **updateAccountPassword**
> TextResponse updateAccountPassword(password, body)

Change the account login password (verifies current, kills other sessions)

DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller&#x27;s session is preserved; API keys generated via &#x60;updateAccountApiKey&#x60; remain valid. Sibling ops: &#x60;updateAccountApiKey&#x60;, &#x60;Logout&#x60;, &#x60;updateAccountTfa&#x60;.  **Body fields:** - &#x60;currentpassword&#x60; (string, required) — verified via &#x60;auth::authenticate&#x60;. - &#x60;password&#x60; (string, required) — must pass &#x60;valid_password()&#x60; — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of &#x60;_~-!@#$%^&amp;*&#x60;. - &#x60;password2&#x60; (string, required) — must equal &#x60;password&#x60;.  **Returns:** &#x60;{ success: bool }&#x60; — flash messages on the response capture per-field errors.  **Side effects:** - Persists &#x60;md5(password)&#x60; to &#x60;accounts.account_passwd&#x60;. - Sends &#x60;password_change_notify.tpl&#x60; email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - &#x60;401&#x60; — unauthenticated. - Flash &#x60;Current login password is mismatching&#x60; — bad &#x60;currentpassword&#x60;. - Flash &#x60;Confirm Password is mismatching&#x60; — &#x60;password&#x60; ≠ &#x60;password2&#x60;. - Flash password-policy violation message. 

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
let password = "password_example"; // String | 
let body = new InterServerManagementApi.PasswordRequest(); // PasswordRequest | 

apiInstance.updateAccountPassword(password, body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="updateAccountSshKey"></a>
# **updateAccountSshKey**
> SuccessTextResponse updateAccountSshKey(ssh_key, body)

Set the account-level SSH public key auto-installed on new VPS/dedicated orders

Stores or replaces the SSH public key on &#x60;account_security&#x60; (type &#x60;ssh_key&#x60;, label &#x60;default&#x60;). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into &#x60;~/.ssh/authorized_keys&#x60; for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: &#x60;{sshKey:string}&#x60; — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns &#x60;{success:true, text:&#x27;SSH Keys Updated.&#x27;}&#x60;. Errors: 401 unauthenticated. Sibling ops: &#x60;getAccountInfo&#x60;, &#x60;updateAccountPassword&#x60;, &#x60;updateAccountApiKey&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
let ssh_key = "ssh_key_example"; // String | 
let body = new InterServerManagementApi.AccountSshKey(); // AccountSshKey | 

apiInstance.updateAccountSshKey(ssh_key, body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_key** | **String**|  | 
 **body** | [**AccountSshKey**](AccountSshKey.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

<a name="updateAccountTfa"></a>
# **updateAccountTfa**
> SuccessTextResponse updateAccountTfa(_2fa_google_code, body)

Verify TOTP code and enable two-factor authentication on the account

Use as step 2 of 2FA enrollment, after &#x60;getAccountTfaSetup&#x60;. Body: &#x60;{2fa_google_code:string}&#x60; — the 6-digit code currently displayed by the user&#x27;s authenticator app for the secret returned from &#x60;getAccountTfaSetup&#x60;. On verify success, the secret is persisted to &#x60;account_security&#x60; (type &#x60;2fa_google_key&#x60;, label &#x60;default&#x60;) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id !&#x3D; current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns &#x60;{success:true, text}&#x60;. Errors: 401 unauthenticated; 422 &#x60;Invalid Code&#x60; if the TOTP doesn&#x27;t match (clock skew, wrong app entry, or expired). Sibling ops: &#x60;getAccountTfaSetup&#x60;, &#x60;deleteAccountTfa&#x60;.

### Example
```javascript
import {InterServerManagementApi} from 'inter_server_management_api';
let defaultClient = InterServerManagementApi.ApiClient.instance;

// Configure API key authorization: apiKeyAuth
let apiKeyAuth = defaultClient.authentications['apiKeyAuth'];
apiKeyAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdCookieAuth
let sessionIdCookieAuth = defaultClient.authentications['sessionIdCookieAuth'];
sessionIdCookieAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdCookieAuth.apiKeyPrefix = 'Token';

// Configure API key authorization: sessionIdHeaderAuth
let sessionIdHeaderAuth = defaultClient.authentications['sessionIdHeaderAuth'];
sessionIdHeaderAuth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//sessionIdHeaderAuth.apiKeyPrefix = 'Token';

let apiInstance = new InterServerManagementApi.AccountApi();
let _2fa_google_code = "_2fa_google_code_example"; // String | 
let body = new InterServerManagementApi.Account2faBody1(); // Account2faBody1 | 

apiInstance.updateAccountTfa(_2fa_google_code, body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_2fa_google_code** | **String**|  | 
 **body** | [**Account2faBody1**](Account2faBody1.md)|  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json


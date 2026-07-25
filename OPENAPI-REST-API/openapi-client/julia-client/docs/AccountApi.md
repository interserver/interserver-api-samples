# AccountApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_account_oauth_name**](AccountApi.md#delete_account_oauth_name) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
[**delete_account_tfa**](AccountApi.md#delete_account_tfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret
[**delete_ip_limit**](AccountApi.md#delete_ip_limit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
[**get_account_info**](AccountApi.md#get_account_info) | **GET** /account | Read full account profile, billing address, and security settings
[**get_account_tfa_setup**](AccountApi.md#get_account_tfa_setup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
[**get_home**](AccountApi.md#get_home) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts
[**get_search**](AccountApi.md#get_search) | **GET** /search | Global autocomplete across the caller&#39;s services, domains, and records
[**logout**](AccountApi.md#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable
[**logout_account_oauth**](AccountApi.md#logout_account_oauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account)
[**update_account_api_key**](AccountApi.md#update_account_api_key) | **POST** /account/apikey | Rotate the account&#39;s REST/MCP API key — old key is invalidated immediately
[**update_account_features**](AccountApi.md#update_account_features) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall
[**update_account_info**](AccountApi.md#update_account_info) | **POST** /account | Update contact and billing-address fields on the customer profile
[**update_account_ip_limits**](AccountApi.md#update_account_ip_limits) | **POST** /account/iplimits | Add an IP CIDR/range to the account&#39;s API+web allow-list (lockout-safe)
[**update_account_password**](AccountApi.md#update_account_password) | **POST** /account/password | Change the account login password (verifies current, kills other sessions)
[**update_account_ssh_key**](AccountApi.md#update_account_ssh_key) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
[**update_account_tfa**](AccountApi.md#update_account_tfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account


# **delete_account_oauth_name**
> `delete_account_oauth_name`(_api::`AccountApi`, `name`::`String`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `delete_account_oauth_name`(_api::`AccountApi`, response_stream::`Channel`, `name`::`String`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account

DESTRUCTIVE: removes the linked provider's tokens from `accounts_ext` (rows where `account_key` IN (`{name}_id`,`{name}_url`)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: `name` (case-insensitive provider key, e.g. `google`, `github`, `facebook`) — must be present in `getOauthConfig().providers`. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns `{success:true, text:'OAuth Provider Unlinked.'}`. Errors: 400 `Invalid Provider Name.` if `name` not configured; 401 unauthenticated. Sibling ops: `logoutAccountOauth`, `getAccountInfo`, `updateAccountPassword`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`AccountApi`** | API context | 
**`name`** | **`String`** |  |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_account_tfa**
> `delete_account_tfa`(_api::`AccountApi`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `delete_account_tfa`(_api::`AccountApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Disable two-factor authentication and remove the TOTP secret

DESTRUCTIVE: removes the 2FA secret from `account_security` and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then `getAccountTfaSetup` -> `updateAccountTfa`). Returns `{success:true, text:'Google Two Factor Authentication is disabled successfully!'}`. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate `updateAccountPassword` if you suspect credential compromise. Sibling ops: `getAccountTfaSetup`, `updateAccountTfa`, `updateAccountPassword`.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_ip_limit**
> `delete_ip_limit`(_api::`AccountApi`; `ip_limit_range`=nothing, _mediaType=nothing) -> `GenericResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `delete_ip_limit`(_api::`AccountApi`, response_stream::`Channel`; `ip_limit_range`=nothing, _mediaType=nothing) -> `Channel`{ `GenericResponse` }, `OpenAPI.Clients.ApiResponse`

Remove one IP range from the account allow-list (PATCH on /account/iplimits)

DESTRUCTIVE: deletes the matching `{start, end}` entry from `accounts.session_limit`. Method is PATCH (not DELETE) because the path collides with `updateAccountIpLimits`. Body: `{start, end}` — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller's source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via `X-API-APP: 1` header. Returns `{success:true, text:'IP Range deleted.'}`. Errors: 400/422 `Invalid IP Address` if `start`/`end` aren't valid IPs; 401 unauthenticated. Sibling ops: `updateAccountIpLimits`, `getAccountInfo`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`AccountApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`ip_limit_range`** | [**`IpLimitRange`**](IpLimitRange.md) |  | 

### Return type

[**`GenericResponse`**](GenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_account_info**
> `get_account_info`(_api::`AccountApi`; _mediaType=nothing) -> `AccountInfo`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_account_info`(_api::`AccountApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `AccountInfo` }, `OpenAPI.Clients.ApiResponse`

Read full account profile, billing address, and security settings

Use to render the account-settings page or to verify current state before mutating with `updateAccountInfo`. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (`disable_reset`, `disable_reinstall`, `disable_*_notifications`), gravatar URL, language, country->currency map, and `enableLocales`/`enableCurrencies` UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: `updateAccountInfo`, `getAccountTfaSetup`, `updateAccountFeatures`, `updateAccountIpLimits`.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`AccountInfo`**](AccountInfo.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_account_tfa_setup**
> `get_account_tfa_setup`(_api::`AccountApi`; _mediaType=nothing) -> `GetAccountTfaSetup200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_account_tfa_setup`(_api::`AccountApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `GetAccountTfaSetup200Response` }, `OpenAPI.Clients.ApiResponse`

Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)

Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns `{2fa_google_key, 2fa_google_split}` — render `2fa_google_key` as a QR code (otpauth://totp/My.InterServer:LID?secret=KEY) and display `2fa_google_split` (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with `updateAccountTfa`. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: `updateAccountTfa` (verify & enable), `deleteAccountTfa` (disable).

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`GetAccountTfaSetup200Response`**](GetAccountTfaSetup200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_home**
> `get_home`(_api::`AccountApi`; _mediaType=nothing) -> `Home`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_home`(_api::`AccountApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Home` }, `OpenAPI.Clients.ApiResponse`

Aggregate dashboard payload — service counts, recent activity, alerts

Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by `getClientHomeData()` — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don't each issue list calls. Cached implementation lives in `function_requirements('client_home')` -> `getClientHomeData()`. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: `getSearch` (autocomplete), `getAccountInfo`, plus per-module list ops like `getVpsList`, `getDomainsList`, `getBillingInvoices`.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`Home`**](Home.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_search**
> `get_search`(_api::`AccountApi`; _mediaType=nothing) -> `SearchAutocompleteResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_search`(_api::`AccountApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `SearchAutocompleteResponse` }, `OpenAPI.Clients.ApiResponse`

Global autocomplete across the caller's services, domains, and records

Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally `q=` though the underlying `getSearchAutoComplete($custid)` may match against multiple fields. Returns a `SearchAutocompleteResponse` object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: `getHome`, `getAccountInfo`, plus per-module list ops (`getVpsList`, `getDomainsList`, `getMailList`, `getTicketsList`).

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`SearchAutocompleteResponse`**](SearchAutocompleteResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **logout**
> `logout`(_api::`AccountApi`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `logout`(_api::`AccountApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Destroy the current API/web session — token becomes unusable

DESTRUCTIVE: invalidates the caller's session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns `200` (no-op when `App::accounts()->data` is empty). API keys (`updateAccountApiKey`) and persistent OAuth links are NOT affected — only this session token. Sibling ops: `updateAccountPassword`, `updateAccountApiKey`, `logoutAccountOauth`, `deleteAccountOauthName`.  **Path/Query/Body:** None.  **Returns:** `{ success: true, text: 'Logged Out' }`.  **Side effects:** calls `App::session()->destroy()` only when `api_check_auth_limits()` passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - `401` — only on a completely malformed auth header.  **Related calls:** - **Re-login:** `submitLogin` or `getOauthRedirect`. - **Per-provider OAuth sign-out (does NOT invalidate the session):** `logoutAccountOauth`. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **logout_account_oauth**
> `logout_account_oauth`(_api::`AccountApi`, `name`::`String`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `logout_account_oauth`(_api::`AccountApi`, response_stream::`Channel`, `name`::`String`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Sign out of the upstream OAuth provider session (does not unlink the account)

Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in `accounts_ext` is preserved, so the user can log back in with that provider without re-linking. Path param: `name` (provider key, e.g. `google`, `github`). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for `Logout` (which kills the MyAdmin session) and NOT a substitute for `deleteAccountOauthName` (which permanently severs the link). Returns `{success:true, text:'OAuth Provider Logged Out.'}`. Errors: 401 unauthenticated. Sibling ops: `deleteAccountOauthName`, `Logout`, `getAccountInfo`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`AccountApi`** | API context | 
**`name`** | **`String`** |  |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_account_api_key**
> `update_account_api_key`(_api::`AccountApi`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_account_api_key`(_api::`AccountApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Rotate the account's REST/MCP API key — old key is invalidated immediately

DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in `account_security` (type `api_key`, label `default`). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns `{success:true, text:NEW_KEY}` — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: `updateAccountPassword`, `updateAccountIpLimits`, `Logout`.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_account_features**
> `update_account_features`(_api::`AccountApi`; `disable_reset`=nothing, `disable_reinstall`=nothing, _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_account_features`(_api::`AccountApi`, response_stream::`Channel`; `disable_reset`=nothing, `disable_reinstall`=nothing, _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Toggle account-wide safety locks for password reset and OS reinstall

Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`AccountApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`disable_reset`** | **`Int64`** |  | [default to nothing]
 **`disable_reinstall`** | **`Int64`** |  | [default to nothing]

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_account_info**
> `update_account_info`(_api::`AccountApi`, `name`::`String`, `address`::`String`, `city`::`String`, `state`::`String`, `zip`::`String`, `country`::`String`, `phone`::`String`; `company`=nothing, `address2`=nothing, `locale`=nothing, `email_invoices`=nothing, `email_abuse`=nothing, `disable_reset`=nothing, `disable_reinstall`=nothing, `disable_server_notifications`=nothing, `disable_email_notifications`=nothing, `gstin`=nothing, _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_account_info`(_api::`AccountApi`, response_stream::`Channel`, `name`::`String`, `address`::`String`, `city`::`String`, `state`::`String`, `zip`::`String`, `country`::`String`, `phone`::`String`; `company`=nothing, `address2`=nothing, `locale`=nothing, `email_invoices`=nothing, `email_abuse`=nothing, `disable_reset`=nothing, `disable_reinstall`=nothing, `disable_server_notifications`=nothing, `disable_email_notifications`=nothing, `gstin`=nothing, _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Update contact and billing-address fields on the customer profile

Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`AccountApi`** | API context | 
**`name`** | **`String`** | Your name. |
**`address`** | **`String`** | Your address. |
**`city`** | **`String`** | Your city. |
**`state`** | **`String`** | Your state. |
**`zip`** | **`String`** | Your ZIP code. |
**`country`** | **`String`** | Your country. |
**`phone`** | **`String`** | Your phone number. |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`company`** | **`String`** | Your company name. | [default to nothing]
 **`address2`** | **`String`** | Additional address information. | [default to nothing]
 **`locale`** | **`String`** | Your preferred locale. | [default to nothing]
 **`email_invoices`** | **`String`** | Your email for invoice notifications. | [default to nothing]
 **`email_abuse`** | **`String`** | Your email for abuse notifications. | [default to nothing]
 **`disable_reset`** | **`Bool`** | Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. | [default to nothing]
 **`disable_reinstall`** | **`Bool`** | Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. | [default to nothing]
 **`disable_server_notifications`** | **`Bool`** | Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. | [default to nothing]
 **`disable_email_notifications`** | **`Bool`** | Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. | [default to nothing]
 **`gstin`** | **`String`** | Your GST identification number (if applicable). | [default to nothing]

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_account_ip_limits**
> `update_account_ip_limits`(_api::`AccountApi`, `start`::`String`, `__end__`::`String`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_account_ip_limits`(_api::`AccountApi`, response_stream::`Channel`, `start`::`String`, `__end__`::`String`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)

DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`AccountApi`** | API context | 
**`start`** | **`String`** | The begining (or first) IP address in the range. |
**`__end__`** | **`String`** | The ending (or last) IP address in the range. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_account_password**
> `update_account_password`(_api::`AccountApi`, `password`::`String`; _mediaType=nothing) -> `TextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_account_password`(_api::`AccountApi`, response_stream::`Channel`, `password`::`String`; _mediaType=nothing) -> `Channel`{ `TextResponse` }, `OpenAPI.Clients.ApiResponse`

Change the account login password (verifies current, kills other sessions)

DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`AccountApi`** | API context | 
**`password`** | **`String`** |  |

### Return type

[**`TextResponse`**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_account_ssh_key**
> `update_account_ssh_key`(_api::`AccountApi`; `ssh_key`=nothing, _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_account_ssh_key`(_api::`AccountApi`, response_stream::`Channel`; `ssh_key`=nothing, _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Set the account-level SSH public key auto-installed on new VPS/dedicated orders

Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`AccountApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`ssh_key`** | **`String`** |  | [default to nothing]

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_account_tfa**
> `update_account_tfa`(_api::`AccountApi`, `2fa_google_code`::`String`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_account_tfa`(_api::`AccountApi`, response_stream::`Channel`, `2fa_google_code`::`String`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Verify TOTP code and enable two-factor authentication on the account

Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`AccountApi`** | API context | 
**`2fa_google_code`** | **`String`** | The 6-digit verification code from your authenticator app. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


# InterServerClient::AccountApi

All URIs are relative to *https://my.interserver.net/apiv2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_account_oauth_name**](AccountApi.md#delete_account_oauth_name) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account |
| [**delete_account_tfa**](AccountApi.md#delete_account_tfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret |
| [**delete_ip_limit**](AccountApi.md#delete_ip_limit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits) |
| [**get_account_info**](AccountApi.md#get_account_info) | **GET** /account | Read full account profile, billing address, and security settings |
| [**get_account_tfa_setup**](AccountApi.md#get_account_tfa_setup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.) |
| [**get_home**](AccountApi.md#get_home) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts |
| [**get_search**](AccountApi.md#get_search) | **GET** /search | Global autocomplete across the caller&#39;s services, domains, and records |
| [**logout**](AccountApi.md#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable |
| [**logout_account_oauth**](AccountApi.md#logout_account_oauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account) |
| [**update_account_api_key**](AccountApi.md#update_account_api_key) | **POST** /account/apikey | Rotate the account&#39;s REST/MCP API key — old key is invalidated immediately |
| [**update_account_features**](AccountApi.md#update_account_features) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall |
| [**update_account_info**](AccountApi.md#update_account_info) | **POST** /account | Update contact and billing-address fields on the customer profile |
| [**update_account_ip_limits**](AccountApi.md#update_account_ip_limits) | **POST** /account/iplimits | Add an IP CIDR/range to the account&#39;s API+web allow-list (lockout-safe) |
| [**update_account_password**](AccountApi.md#update_account_password) | **POST** /account/password | Change the account login password (verifies current, kills other sessions) |
| [**update_account_ssh_key**](AccountApi.md#update_account_ssh_key) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders |
| [**update_account_tfa**](AccountApi.md#update_account_tfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account |


## delete_account_oauth_name

> <SuccessTextResponse> delete_account_oauth_name(name)

Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account

DESTRUCTIVE: removes the linked provider's tokens from `accounts_ext` (rows where `account_key` IN (`{name}_id`,`{name}_url`)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: `name` (case-insensitive provider key, e.g. `google`, `github`, `facebook`) — must be present in `getOauthConfig().providers`. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns `{success:true, text:'OAuth Provider Unlinked.'}`. Errors: 400 `Invalid Provider Name.` if `name` not configured; 401 unauthenticated. Sibling ops: `logoutAccountOauth`, `getAccountInfo`, `updateAccountPassword`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new
name = 'name_example' # String | 

begin
  # Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
  result = api_instance.delete_account_oauth_name(name)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->delete_account_oauth_name: #{e}"
end
```

#### Using the delete_account_oauth_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> delete_account_oauth_name_with_http_info(name)

```ruby
begin
  # Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
  data, status_code, headers = api_instance.delete_account_oauth_name_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->delete_account_oauth_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_account_tfa

> <SuccessTextResponse> delete_account_tfa

Disable two-factor authentication and remove the TOTP secret

DESTRUCTIVE: removes the 2FA secret from `account_security` and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then `getAccountTfaSetup` -> `updateAccountTfa`). Returns `{success:true, text:'Google Two Factor Authentication is disabled successfully!'}`. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate `updateAccountPassword` if you suspect credential compromise. Sibling ops: `getAccountTfaSetup`, `updateAccountTfa`, `updateAccountPassword`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new

begin
  # Disable two-factor authentication and remove the TOTP secret
  result = api_instance.delete_account_tfa
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->delete_account_tfa: #{e}"
end
```

#### Using the delete_account_tfa_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> delete_account_tfa_with_http_info

```ruby
begin
  # Disable two-factor authentication and remove the TOTP secret
  data, status_code, headers = api_instance.delete_account_tfa_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->delete_account_tfa_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ip_limit

> <GenericResponse> delete_ip_limit(opts)

Remove one IP range from the account allow-list (PATCH on /account/iplimits)

DESTRUCTIVE: deletes the matching `{start, end}` entry from `accounts.session_limit`. Method is PATCH (not DELETE) because the path collides with `updateAccountIpLimits`. Body: `{start, end}` — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller's source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via `X-API-APP: 1` header. Returns `{success:true, text:'IP Range deleted.'}`. Errors: 400/422 `Invalid IP Address` if `start`/`end` aren't valid IPs; 401 unauthenticated. Sibling ops: `updateAccountIpLimits`, `getAccountInfo`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new
opts = {
  ip_limit_range: InterServerClient::IpLimitRange.new({start: '1.2.3.0', _end: '1.2.3.255'}) # IpLimitRange | 
}

begin
  # Remove one IP range from the account allow-list (PATCH on /account/iplimits)
  result = api_instance.delete_ip_limit(opts)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->delete_ip_limit: #{e}"
end
```

#### Using the delete_ip_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericResponse>, Integer, Hash)> delete_ip_limit_with_http_info(opts)

```ruby
begin
  # Remove one IP range from the account allow-list (PATCH on /account/iplimits)
  data, status_code, headers = api_instance.delete_ip_limit_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->delete_ip_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_limit_range** | [**IpLimitRange**](IpLimitRange.md) |  | [optional] |

### Return type

[**GenericResponse**](GenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_account_info

> <AccountInfo> get_account_info

Read full account profile, billing address, and security settings

Use to render the account-settings page or to verify current state before mutating with `updateAccountInfo`. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (`disable_reset`, `disable_reinstall`, `disable_*_notifications`), gravatar URL, language, country->currency map, and `enableLocales`/`enableCurrencies` UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: `updateAccountInfo`, `getAccountTfaSetup`, `updateAccountFeatures`, `updateAccountIpLimits`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new

begin
  # Read full account profile, billing address, and security settings
  result = api_instance.get_account_info
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->get_account_info: #{e}"
end
```

#### Using the get_account_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountInfo>, Integer, Hash)> get_account_info_with_http_info

```ruby
begin
  # Read full account profile, billing address, and security settings
  data, status_code, headers = api_instance.get_account_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountInfo>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->get_account_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_tfa_setup

> <GetAccountTfaSetup200Response> get_account_tfa_setup

Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)

Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns `{2fa_google_key, 2fa_google_split}` — render `2fa_google_key` as a QR code (otpauth://totp/My.InterServer:LID?secret=KEY) and display `2fa_google_split` (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with `updateAccountTfa`. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: `updateAccountTfa` (verify & enable), `deleteAccountTfa` (disable).

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new

begin
  # Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
  result = api_instance.get_account_tfa_setup
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->get_account_tfa_setup: #{e}"
end
```

#### Using the get_account_tfa_setup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountTfaSetup200Response>, Integer, Hash)> get_account_tfa_setup_with_http_info

```ruby
begin
  # Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
  data, status_code, headers = api_instance.get_account_tfa_setup_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountTfaSetup200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->get_account_tfa_setup_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAccountTfaSetup200Response**](GetAccountTfaSetup200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_home

> <Home> get_home

Aggregate dashboard payload — service counts, recent activity, alerts

Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by `getClientHomeData()` — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don't each issue list calls. Cached implementation lives in `function_requirements('client_home')` -> `getClientHomeData()`. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: `getSearch` (autocomplete), `getAccountInfo`, plus per-module list ops like `getVpsList`, `getDomainsList`, `getBillingInvoices`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new

begin
  # Aggregate dashboard payload — service counts, recent activity, alerts
  result = api_instance.get_home
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->get_home: #{e}"
end
```

#### Using the get_home_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Home>, Integer, Hash)> get_home_with_http_info

```ruby
begin
  # Aggregate dashboard payload — service counts, recent activity, alerts
  data, status_code, headers = api_instance.get_home_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Home>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->get_home_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Home**](Home.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_search

> <SearchAutocompleteResponse> get_search

Global autocomplete across the caller's services, domains, and records

Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally `q=` though the underlying `getSearchAutoComplete($custid)` may match against multiple fields. Returns a `SearchAutocompleteResponse` object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: `getHome`, `getAccountInfo`, plus per-module list ops (`getVpsList`, `getDomainsList`, `getMailList`, `getTicketsList`).

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new

begin
  # Global autocomplete across the caller's services, domains, and records
  result = api_instance.get_search
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->get_search: #{e}"
end
```

#### Using the get_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAutocompleteResponse>, Integer, Hash)> get_search_with_http_info

```ruby
begin
  # Global autocomplete across the caller's services, domains, and records
  data, status_code, headers = api_instance.get_search_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAutocompleteResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->get_search_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SearchAutocompleteResponse**](SearchAutocompleteResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## logout

> <SuccessTextResponse> logout

Destroy the current API/web session — token becomes unusable

DESTRUCTIVE: invalidates the caller's session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns `200` (no-op when `App::accounts()->data` is empty). API keys (`updateAccountApiKey`) and persistent OAuth links are NOT affected — only this session token. Sibling ops: `updateAccountPassword`, `updateAccountApiKey`, `logoutAccountOauth`, `deleteAccountOauthName`.  **Path/Query/Body:** None.  **Returns:** `{ success: true, text: 'Logged Out' }`.  **Side effects:** calls `App::session()->destroy()` only when `api_check_auth_limits()` passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - `401` — only on a completely malformed auth header.  **Related calls:** - **Re-login:** `submitLogin` or `getOauthRedirect`. - **Per-provider OAuth sign-out (does NOT invalidate the session):** `logoutAccountOauth`. 

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new

begin
  # Destroy the current API/web session — token becomes unusable
  result = api_instance.logout
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> logout_with_http_info

```ruby
begin
  # Destroy the current API/web session — token becomes unusable
  data, status_code, headers = api_instance.logout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->logout_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## logout_account_oauth

> <SuccessTextResponse> logout_account_oauth(name)

Sign out of the upstream OAuth provider session (does not unlink the account)

Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in `accounts_ext` is preserved, so the user can log back in with that provider without re-linking. Path param: `name` (provider key, e.g. `google`, `github`). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for `Logout` (which kills the MyAdmin session) and NOT a substitute for `deleteAccountOauthName` (which permanently severs the link). Returns `{success:true, text:'OAuth Provider Logged Out.'}`. Errors: 401 unauthenticated. Sibling ops: `deleteAccountOauthName`, `Logout`, `getAccountInfo`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new
name = 'name_example' # String | 

begin
  # Sign out of the upstream OAuth provider session (does not unlink the account)
  result = api_instance.logout_account_oauth(name)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->logout_account_oauth: #{e}"
end
```

#### Using the logout_account_oauth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> logout_account_oauth_with_http_info(name)

```ruby
begin
  # Sign out of the upstream OAuth provider session (does not unlink the account)
  data, status_code, headers = api_instance.logout_account_oauth_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->logout_account_oauth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account_api_key

> <SuccessTextResponse> update_account_api_key

Rotate the account's REST/MCP API key — old key is invalidated immediately

DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in `account_security` (type `api_key`, label `default`). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns `{success:true, text:NEW_KEY}` — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: `updateAccountPassword`, `updateAccountIpLimits`, `Logout`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new

begin
  # Rotate the account's REST/MCP API key — old key is invalidated immediately
  result = api_instance.update_account_api_key
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_api_key: #{e}"
end
```

#### Using the update_account_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> update_account_api_key_with_http_info

```ruby
begin
  # Rotate the account's REST/MCP API key — old key is invalidated immediately
  data, status_code, headers = api_instance.update_account_api_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_api_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account_features

> <SuccessTextResponse> update_account_features(opts)

Toggle account-wide safety locks for password reset and OS reinstall

Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current. 

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new
opts = {
  disable_reset: 56, # Integer | 
  disable_reinstall: 56 # Integer | 
}

begin
  # Toggle account-wide safety locks for password reset and OS reinstall
  result = api_instance.update_account_features(opts)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_features: #{e}"
end
```

#### Using the update_account_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> update_account_features_with_http_info(opts)

```ruby
begin
  # Toggle account-wide safety locks for password reset and OS reinstall
  data, status_code, headers = api_instance.update_account_features_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disable_reset** | **Integer** |  | [optional] |
| **disable_reinstall** | **Integer** |  | [optional] |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## update_account_info

> <SuccessTextResponse> update_account_info(name, address, city, state, zip, country, phone, opts)

Update contact and billing-address fields on the customer profile

Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new
name = 'name_example' # String | Your name.
address = 'address_example' # String | Your address.
city = 'city_example' # String | Your city.
state = 'state_example' # String | Your state.
zip = 'zip_example' # String | Your ZIP code.
country = 'country_example' # String | Your country.
phone = 'phone_example' # String | Your phone number.
opts = {
  company: 'company_example', # String | Your company name.
  address2: 'address2_example', # String | Additional address information.
  locale: 'locale_example', # String | Your preferred locale.
  email_invoices: 'email_invoices_example', # String | Your email for invoice notifications.
  email_abuse: 'email_abuse_example', # String | Your email for abuse notifications.
  disable_reset: true, # Boolean | Set to `true` to disable account resets, or `false` to enable them.
  disable_reinstall: true, # Boolean | Set to `true` to disable server reinstalls, or `false` to enable them.
  disable_server_notifications: true, # Boolean | Set to `true` to disable server notifications, or `false` to enable them.
  disable_email_notifications: true, # Boolean | Set to `true` to disable email notifications, or `false` to enable them.
  gstin: 'gstin_example' # String | Your GST identification number (if applicable).
}

begin
  # Update contact and billing-address fields on the customer profile
  result = api_instance.update_account_info(name, address, city, state, zip, country, phone, opts)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_info: #{e}"
end
```

#### Using the update_account_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> update_account_info_with_http_info(name, address, city, state, zip, country, phone, opts)

```ruby
begin
  # Update contact and billing-address fields on the customer profile
  data, status_code, headers = api_instance.update_account_info_with_http_info(name, address, city, state, zip, country, phone, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Your name. |  |
| **address** | **String** | Your address. |  |
| **city** | **String** | Your city. |  |
| **state** | **String** | Your state. |  |
| **zip** | **String** | Your ZIP code. |  |
| **country** | **String** | Your country. |  |
| **phone** | **String** | Your phone number. |  |
| **company** | **String** | Your company name. | [optional] |
| **address2** | **String** | Additional address information. | [optional] |
| **locale** | **String** | Your preferred locale. | [optional] |
| **email_invoices** | **String** | Your email for invoice notifications. | [optional] |
| **email_abuse** | **String** | Your email for abuse notifications. | [optional] |
| **disable_reset** | **Boolean** | Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. | [optional] |
| **disable_reinstall** | **Boolean** | Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. | [optional] |
| **disable_server_notifications** | **Boolean** | Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. | [optional] |
| **disable_email_notifications** | **Boolean** | Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. | [optional] |
| **gstin** | **String** | Your GST identification number (if applicable). | [optional] |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## update_account_ip_limits

> <SuccessTextResponse> update_account_ip_limits(start, _end)

Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)

DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new
start = 'start_example' # String | The begining (or first) IP address in the range.
_end = '_end_example' # String | The ending (or last) IP address in the range.

begin
  # Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)
  result = api_instance.update_account_ip_limits(start, _end)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_ip_limits: #{e}"
end
```

#### Using the update_account_ip_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> update_account_ip_limits_with_http_info(start, _end)

```ruby
begin
  # Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)
  data, status_code, headers = api_instance.update_account_ip_limits_with_http_info(start, _end)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_ip_limits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | The begining (or first) IP address in the range. |  |
| **_end** | **String** | The ending (or last) IP address in the range. |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## update_account_password

> <TextResponse> update_account_password(password)

Change the account login password (verifies current, kills other sessions)

DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message. 

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new
password = 'password_example' # String | 

begin
  # Change the account login password (verifies current, kills other sessions)
  result = api_instance.update_account_password(password)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_password: #{e}"
end
```

#### Using the update_account_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TextResponse>, Integer, Hash)> update_account_password_with_http_info(password)

```ruby
begin
  # Change the account login password (verifies current, kills other sessions)
  data, status_code, headers = api_instance.update_account_password_with_http_info(password)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** |  |  |

### Return type

[**TextResponse**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## update_account_ssh_key

> <SuccessTextResponse> update_account_ssh_key(opts)

Set the account-level SSH public key auto-installed on new VPS/dedicated orders

Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new
opts = {
  ssh_key: 'ssh_key_example' # String | 
}

begin
  # Set the account-level SSH public key auto-installed on new VPS/dedicated orders
  result = api_instance.update_account_ssh_key(opts)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_ssh_key: #{e}"
end
```

#### Using the update_account_ssh_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> update_account_ssh_key_with_http_info(opts)

```ruby
begin
  # Set the account-level SSH public key auto-installed on new VPS/dedicated orders
  data, status_code, headers = api_instance.update_account_ssh_key_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_ssh_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssh_key** | **String** |  | [optional] |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## update_account_tfa

> <SuccessTextResponse> update_account_tfa(_2fa_google_code)

Verify TOTP code and enable two-factor authentication on the account

Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::AccountApi.new
_2fa_google_code = '_2fa_google_code_example' # String | The 6-digit verification code from your authenticator app.

begin
  # Verify TOTP code and enable two-factor authentication on the account
  result = api_instance.update_account_tfa(_2fa_google_code)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_tfa: #{e}"
end
```

#### Using the update_account_tfa_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> update_account_tfa_with_http_info(_2fa_google_code)

```ruby
begin
  # Verify TOTP code and enable two-factor authentication on the account
  data, status_code, headers = api_instance.update_account_tfa_with_http_info(_2fa_google_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling AccountApi->update_account_tfa_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_2fa_google_code** | **String** | The 6-digit verification code from your authenticator app. |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


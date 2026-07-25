# InterServerClient::PublicApi

All URIs are relative to *https://my.interserver.net/apiv2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_currencies**](PublicApi.md#get_account_currencies) | **GET** /account/currencies | List enabled currency codes accepted for billing and preferences |
| [**get_account_locales**](PublicApi.md#get_account_locales) | **GET** /account/locales | List supported UI locales with English and native display names |
| [**get_captcha**](PublicApi.md#get_captcha) | **GET** /captcha | Fetch a base64 JPEG captcha challenge for human verification |
| [**get_countries**](PublicApi.md#get_countries) | **GET** /account/countries | List enabled countries keyed by ISO-2/ISO-3/numeric code |
| [**get_info**](PublicApi.md#get_info) | **GET** /info | Discover available modules, service packages, categories, and types |
| [**get_login_info**](PublicApi.md#get_login_info) | **GET** /login | Fetch logo, captcha, language, and stats for rendering a login page |
| [**get_mp_servers**](PublicApi.md#get_mp_servers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing |
| [**get_oauth_redirect**](PublicApi.md#get_oauth_redirect) | **GET** /oauth | Begin OAuth login flow — redirect user to provider for authentication |
| [**get_timezones**](PublicApi.md#get_timezones) | **GET** /account/timezones | List all PHP timezone identifiers usable on accounts and services |
| [**patch_oauth_two_factor**](PublicApi.md#patch_oauth_two_factor) | **PATCH** /oauth | Submit 2FA code to finish OAuth login when account has 2FA enabled |
| [**ping_server**](PublicApi.md#ping_server) | **GET** /ping | Liveness check — returns the JSON string \&quot;pong\&quot; to confirm API is up |
| [**post_oauth_callback**](PublicApi.md#post_oauth_callback) | **POST** /oauth | Complete OAuth login by linking provider to existing or new account |
| [**submit_login**](PublicApi.md#submit_login) | **POST** /login | Authenticate with email + password and return a session token |
| [**submit_signup**](PublicApi.md#submit_signup) | **POST** /signup | Create a new customer account (email + password + captcha + ToS) |


## get_account_currencies

> Array&lt;String&gt; get_account_currencies

List enabled currency codes accepted for billing and preferences

Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountLocales`, plus the billing-preference endpoints under `/account/*` and `/billing/*`.  **Path/Query/Body:** None.  **Returns:** flat JSON array of ISO-4217 currency codes — e.g. `[\"USD\", \"EUR\", \"GBP\", \"INR\"]`. Sourced from rows in the `currencies` table where `currency_enabled=1`, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** `updateAccountInfo`. - **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountLocales`. 

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

api_instance = InterServerClient::PublicApi.new

begin
  # List enabled currency codes accepted for billing and preferences
  result = api_instance.get_account_currencies
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_account_currencies: #{e}"
end
```

#### Using the get_account_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> get_account_currencies_with_http_info

```ruby
begin
  # List enabled currency codes accepted for billing and preferences
  data, status_code, headers = api_instance.get_account_currencies_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_account_currencies_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_locales

> <Hash<String, GetAccountLocales200ResponseValue>> get_account_locales

List supported UI locales with English and native display names

Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP's Punic locale data with `locale/google_langs.php` so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen locale).  **Path/Query/Body:** None.  **Returns:** JSON object keyed by BCP-47-style locale code, with `{ name, local_name }` per entry — e.g.      {       \"en\": { \"name\": \"English\", \"local_name\": \"English\" },       \"es\": { \"name\": \"Spanish\", \"local_name\": \"español\" },       \"fr\": { \"name\": \"French\", \"local_name\": \"français\" }     }  `name` is the English label; `local_name` is the locale's name in its own language (good for accessibility and avoiding the wrong-script problem).  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** `updateAccountInfo` (sets `locale`). - **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountCurrencies`. 

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

api_instance = InterServerClient::PublicApi.new

begin
  # List supported UI locales with English and native display names
  result = api_instance.get_account_locales
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_account_locales: #{e}"
end
```

#### Using the get_account_locales_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetAccountLocales200ResponseValue>>, Integer, Hash)> get_account_locales_with_http_info

```ruby
begin
  # List supported UI locales with English and native display names
  data, status_code, headers = api_instance.get_account_locales_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetAccountLocales200ResponseValue>>
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_account_locales_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, GetAccountLocales200ResponseValue&gt;**](GetAccountLocales200ResponseValue.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_captcha

> <CaptchaResponse> get_captcha

Fetch a base64 JPEG captcha challenge for human verification

Fetches a fresh captcha challenge image to display before submitting `submitSignup` (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: `getLoginInfo` (returns a captcha alongside other login-page data), `submitSignup` (consumes the answer), `submitLogin`.  **Path/Query/Body:** None.  **Returns:** `{ captcha: string }` — `captcha` is a `data:image/jpeg;base64,...` URL ready to drop into an `<img src>`.  **Side effects:** the phrase is stored server-side in `$_SESSION['captcha']` (also aliased to the signup-flow key `$_SESSION['captchaSignup']` and forgot-password key `$_SESSION['captchaFP']`). The browser must send the same `PHPSESSID` cookie back when posting the answer.  **Charset:** 8 chars from `3456789ABCDEFGHJKLMNPQRSTWXY` — no ambiguous `0`/`1`/`I`/`O`/`2`/`Z`.  **Related calls:** - **Consumers:** `submitSignup`, `submitLogin`. - **One-shot login bootstrap:** `getLoginInfo`. answer in `captcha` field). 

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

api_instance = InterServerClient::PublicApi.new

begin
  # Fetch a base64 JPEG captcha challenge for human verification
  result = api_instance.get_captcha
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_captcha: #{e}"
end
```

#### Using the get_captcha_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaptchaResponse>, Integer, Hash)> get_captcha_with_http_info

```ruby
begin
  # Fetch a base64 JPEG captcha challenge for human verification
  data, status_code, headers = api_instance.get_captcha_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaptchaResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_captcha_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CaptchaResponse**](CaptchaResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_countries

> Object get_countries(opts)

List enabled countries keyed by ISO-2/ISO-3/numeric code

Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in `country_t.enabled`. Sibling ops: `getTimezones`, `getAccountLocales`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen country).  **Query parameters:** - `fetch_by` (string, optional) — one of `iso2` (default; two-letter codes like `US`, `GB`), `iso3` (three-letter like `USA`, `GBR`), or `numcode` (UN M49 numeric like `840`). Any other value silently falls back to `iso2`.  **Body:** None.  **Returns:** JSON object mapping the chosen key format to the country's short name — e.g. `{ \"AF\": \"Afghanistan\", \"US\": \"United States\", \"ZW\": \"Zimbabwe\" }`. Sourced from the `country_t` table, filtered to `enabled=1`, ordered alphabetically by `short_name`.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** `updateAccountInfo`. - **Other preference catalogs:** `getTimezones`, `getAccountLocales`, `getAccountCurrencies`. 

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

api_instance = InterServerClient::PublicApi.new
opts = {
  fetch_by: 'iso2' # String | Get countries by iso2 or iso3 or numcode
}

begin
  # List enabled countries keyed by ISO-2/ISO-3/numeric code
  result = api_instance.get_countries(opts)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_countries: #{e}"
end
```

#### Using the get_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_countries_with_http_info(opts)

```ruby
begin
  # List enabled countries keyed by ISO-2/ISO-3/numeric code
  data, status_code, headers = api_instance.get_countries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_countries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fetch_by** | **String** | Get countries by iso2 or iso3 or numcode | [optional] |

### Return type

**Object**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_info

> <ServicesInfo> get_info

Discover available modules, service packages, categories, and types

Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer` — each module's catalog op for buyable-package details.  **Path/Query/Body:** None.  **Returns:** `{ modules, services, serviceTypes, serviceCategories }`. - `modules` (array) — enabled plugin modules (`vps`, `webhosting`, `domains`, `ssl`, etc.). - `services` (object) — map of `services_id` → row from the `services` table, filtered to `services_buyable=1 AND services_hidden=0`, with `services_ourcost` / `services_hidden` stripped, and `services_id` / `services_category` / `services_type` cast to int and `services_cost` cast to float. - `serviceTypes` (object) — joins service rows to human-readable type names. - `serviceCategories` (object) — joins service rows to category names.  **Auth:** None.  **Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.  **Related calls:** - **Module-specific order catalog:** `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer`. - **Deeper health probe:** `pingServer`. 

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

api_instance = InterServerClient::PublicApi.new

begin
  # Discover available modules, service packages, categories, and types
  result = api_instance.get_info
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_info: #{e}"
end
```

#### Using the get_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServicesInfo>, Integer, Hash)> get_info_with_http_info

```ruby
begin
  # Discover available modules, service packages, categories, and types
  data, status_code, headers = api_instance.get_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServicesInfo>
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServicesInfo**](ServicesInfo.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_login_info

> <LoginInfo> get_login_info

Fetch logo, captcha, language, and stats for rendering a login page

Bootstraps an unauthenticated login page in one round-trip — branding logo, fresh captcha challenge, auto-detected user language, and live counts of VPS / websites / servers managed by the system (often used as marketing stats). Public — no auth required. Sibling ops: `submitLogin` (consume the captcha), `getCaptcha` (refresh captcha only), `getAccountLocales`, `submitSignup`.  **Path/Query/Body:** None.  **Returns** `{ logo, captcha, language, counts }`: - `logo` (string) — URL; uses the `LOGO` constant or a default. - `captcha` (string) — `data:image/jpeg;base64,...` image; phrase is stored server-side under `$_SESSION['captcha']` (also aliased to `$_SESSION['captchaSignup']` and `$_SESSION['captchaFP']`) — the browser's `PHPSESSID` cookie carries the phrase to `submitLogin` / `submitSignup`. - `language` (string) — BCP-47 locale (e.g. `en-US`). - `counts` (object) — `{ vps: int, websites: int, servers: int }` from live `SELECT COUNT(*)` on the underlying tables.  **Auth:** None.  **Errors:** `403` per `LoginResponseError` if a stricter login gate is configured upstream.  **Related calls:** - **Next:** `submitLogin` (login form post) or `submitSignup` (new account). - **Captcha refresh only:** `getCaptcha`. - **OAuth alternative:** `getOauthRedirect`. 

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

api_instance = InterServerClient::PublicApi.new

begin
  # Fetch logo, captcha, language, and stats for rendering a login page
  result = api_instance.get_login_info
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_login_info: #{e}"
end
```

#### Using the get_login_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginInfo>, Integer, Hash)> get_login_info_with_http_info

```ruby
begin
  # Fetch logo, captcha, language, and stats for rendering a login page
  data, status_code, headers = api_instance.get_login_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginInfo>
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_login_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LoginInfo**](LoginInfo.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mp_servers

> <BuyItNowList> get_mp_servers

List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing

Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`. Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired. Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).

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

api_instance = InterServerClient::PublicApi.new

begin
  # List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
  result = api_instance.get_mp_servers
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_mp_servers: #{e}"
end
```

#### Using the get_mp_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyItNowList>, Integer, Hash)> get_mp_servers_with_http_info

```ruby
begin
  # List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
  data, status_code, headers = api_instance.get_mp_servers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyItNowList>
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_mp_servers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BuyItNowList**](BuyItNowList.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_oauth_redirect

> <GetOauthRedirect200Response> get_oauth_redirect(provider)

Begin OAuth login flow — redirect user to provider for authentication

Use as step 1 of social login. Navigate the browser (typically a popup) to `/apiv2/oauth?provider=X` so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required. Query params: `provider` (required, case-sensitive: `Google`/`GitHub`/`Facebook`/`Twitter`), `origin` (optional, opener window origin used to target postMessage instead of `*`). The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: `oauth_success` (logged in), `oauth_2fa_required` (call `patchOauthTwoFactor` with the `oauth_token`), `oauth_link_required` (call `postOauthCallback` to link or create), or `oauth_error`. Siblings: `postOauthCallback`, `patchOauthTwoFactor`, `submitLogin` (password flow).

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

api_instance = InterServerClient::PublicApi.new
provider = 'provider_example' # String | The OAuth provider name (e.g. `Google`).

begin
  # Begin OAuth login flow — redirect user to provider for authentication
  result = api_instance.get_oauth_redirect(provider)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_oauth_redirect: #{e}"
end
```

#### Using the get_oauth_redirect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOauthRedirect200Response>, Integer, Hash)> get_oauth_redirect_with_http_info(provider)

```ruby
begin
  # Begin OAuth login flow — redirect user to provider for authentication
  data, status_code, headers = api_instance.get_oauth_redirect_with_http_info(provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOauthRedirect200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_oauth_redirect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | The OAuth provider name (e.g. &#x60;Google&#x60;). |  |

### Return type

[**GetOauthRedirect200Response**](GetOauthRedirect200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_timezones

> Array&lt;String&gt; get_timezones

List all PHP timezone identifiers usable on accounts and services

Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP's `DateTimeZone::listIdentifiers()` so the catalog is large (~400+ zones, including deprecated aliases like `US/Eastern`). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: `postVpsChangeTimezone`, `postQsChangeTimezone`, `getCountries`, `getAccountLocales`, `getAccountCurrencies`.  **Path/Query/Body:** None.  **Returns:** flat JSON array of stable IANA tz strings, e.g. `[\"Africa/Abidjan\", \"America/New_York\", \"Asia/Tokyo\", \"Europe/London\", \"UTC\"]`. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.  **Auth:** None.  **Errors:** No documented error path under normal operation.  **Related calls:** - **Apply selection to a service:** `postVpsChangeTimezone` (`/vps/{id}/change_timezone`), `postQsChangeTimezone` (`/qs/{id}/change_timezone`). - **Apply to account profile:** `updateAccountInfo` (sets `timezone`). - **Other preference catalogs:** `getCountries`, `getAccountLocales`, `getAccountCurrencies`. 

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

api_instance = InterServerClient::PublicApi.new

begin
  # List all PHP timezone identifiers usable on accounts and services
  result = api_instance.get_timezones
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_timezones: #{e}"
end
```

#### Using the get_timezones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> get_timezones_with_http_info

```ruby
begin
  # List all PHP timezone identifiers usable on accounts and services
  data, status_code, headers = api_instance.get_timezones_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->get_timezones_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_oauth_two_factor

> <PatchOauthTwoFactor200Response> patch_oauth_two_factor(patch_oauth_two_factor_request)

Submit 2FA code to finish OAuth login when account has 2FA enabled

Final step of the OAuth login flow when the account has 2FA enabled. Called after `postOauthCallback` (or the popup's `window.postMessage()` handshake) returned `2fa_required`. Verifies the TOTP against the account's stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: `postOauthCallback` (prior step), `getOauthRedirect` (entry point), `getAccountTfaSetup` (enroll 2FA), `submitLogin`.  **Body fields** (JSON or form): - `code` (string, required) — 6-digit TOTP from the authenticator app. - `account_id` (integer, required) — returned by the prior `postOauthCallback`. - `oauth_token` (string, optional) — signed token from the original `postMessage` payload, type `2fa`, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.  **Returns:** `{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token` or no pending verification. - `401` — invalid 2FA code. - `409` — 2FA not enabled on the account. - `422` — missing `code`.  **Related calls:** - **Prerequisite:** `postOauthCallback`. - **Enroll 2FA on the account first:** `getAccountTfaSetup` → `updateAccountTfa`. - **Alternate login:** `submitLogin`. 

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

api_instance = InterServerClient::PublicApi.new
patch_oauth_two_factor_request = InterServerClient::PatchOauthTwoFactorRequest.new({account_id: 37, code: 'code_example'}) # PatchOauthTwoFactorRequest | 

begin
  # Submit 2FA code to finish OAuth login when account has 2FA enabled
  result = api_instance.patch_oauth_two_factor(patch_oauth_two_factor_request)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->patch_oauth_two_factor: #{e}"
end
```

#### Using the patch_oauth_two_factor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchOauthTwoFactor200Response>, Integer, Hash)> patch_oauth_two_factor_with_http_info(patch_oauth_two_factor_request)

```ruby
begin
  # Submit 2FA code to finish OAuth login when account has 2FA enabled
  data, status_code, headers = api_instance.patch_oauth_two_factor_with_http_info(patch_oauth_two_factor_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchOauthTwoFactor200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->patch_oauth_two_factor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **patch_oauth_two_factor_request** | [**PatchOauthTwoFactorRequest**](PatchOauthTwoFactorRequest.md) |  |  |

### Return type

[**PatchOauthTwoFactor200Response**](PatchOauthTwoFactor200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## ping_server

> String ping_server

Liveness check — returns the JSON string \"pong\" to confirm API is up

Trivial GET that returns the JSON string `\"pong\"` so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: `getInfo` (richer probe that touches MySQL).  **Path/Query/Body:** None.  **Returns:** JSON-encoded string `\"pong\"` with HTTP 200.  **Auth:** None (public endpoint).  **Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.  **Use when:** - Bootstrapping a new client and want to confirm the API is reachable. - Smoke-testing in CI/health-check pipelines. - Diagnosing connectivity issues before higher-cost calls.  **Related calls:** - **Deeper health probe:** `getInfo` (exercises the DB layer). 

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

api_instance = InterServerClient::PublicApi.new

begin
  # Liveness check — returns the JSON string \"pong\" to confirm API is up
  result = api_instance.ping_server
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->ping_server: #{e}"
end
```

#### Using the ping_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> ping_server_with_http_info

```ruby
begin
  # Liveness check — returns the JSON string \"pong\" to confirm API is up
  data, status_code, headers = api_instance.ping_server_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->ping_server_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_oauth_callback

> <PostOauthCallback200Response> post_oauth_callback(provider, opts)

Complete OAuth login by linking provider to existing or new account

Step 3 of the OAuth login flow. Called after `getOauthRedirect` returned `oauth_link_required` via the popup's `window.postMessage()`. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: `patchOauthTwoFactor` (2FA follow-up), `getOauthRedirect` (start the flow), `submitSignup`, `submitLogin`.  **Body fields** (JSON or form): - `oauth_token` (string, required) — signed token from the popup's `window.postMessage()` payload; 10-minute expiry. - `login` (string, required) — email. - `password` (string, required). - `create` (boolean, optional) — set `true` to create a new account instead of linking. - `email_confirmation` (string, conditional) — 8-char code emailed on the first `create=true` attempt; server returns 422 `email_verification_required` until provided. - `tfa` (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 `2fa_required`).  **Returns:** `{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token`. - `401` — bad password or wrong 2FA code. - `409` — account already exists (when `create: true`). - `422` — missing field; `email_verification_required`; `2fa_required`.  **Related calls:** - **Prerequisite:** `getOauthRedirect` to initiate the popup flow. - **Follow-up when 2FA required:** `patchOauthTwoFactor`. - **Alternate entry points:** `submitLogin`, `submitSignup`. 

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

api_instance = InterServerClient::PublicApi.new
provider = 'provider_example' # String | The OAuth provider name (e.g. `Google`).
opts = {
  post_oauth_callback_request: InterServerClient::PostOauthCallbackRequest.new # PostOauthCallbackRequest | 
}

begin
  # Complete OAuth login by linking provider to existing or new account
  result = api_instance.post_oauth_callback(provider, opts)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->post_oauth_callback: #{e}"
end
```

#### Using the post_oauth_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostOauthCallback200Response>, Integer, Hash)> post_oauth_callback_with_http_info(provider, opts)

```ruby
begin
  # Complete OAuth login by linking provider to existing or new account
  data, status_code, headers = api_instance.post_oauth_callback_with_http_info(provider, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostOauthCallback200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->post_oauth_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | The OAuth provider name (e.g. &#x60;Google&#x60;). |  |
| **post_oauth_callback_request** | [**PostOauthCallbackRequest**](PostOauthCallbackRequest.md) |  | [optional] |

### Return type

[**PostOauthCallback200Response**](PostOauthCallback200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## submit_login

> <LoginSuccessResponse> submit_login(login, passwd, opts)

Authenticate with email + password and return a session token

Primary password→session-token exchange. Pass the returned session id back as the `sessionid` HTTP header on subsequent calls. Public — no auth required. Sibling ops: `getLoginInfo` (captcha + branding), `getOauthRedirect` (social login), `submitSignup`, `updateAccountApiKey` (rotate API key once logged in).  **Body fields** (JSON or form): - `login` (string, required) — email. - `passwd` (string, required) — password. - `tfa` (string, conditional) — 6-digit TOTP when the account has 2FA enabled. - `verify` (string, conditional) — 8-char email-confirmation code returned via email when logging in from a new IP. Triggered automatically when the IP has no `acquittal` trial record yet (see `Trial` ORM, type `verify_email`). - `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — extends cookie lifetime.  **Returns:** `{ sessionId, account_id, account_lid, ima, name, gravatar }`. The `sessionId` value is the credential to send on every subsequent authenticated request.  **Errors:** - `401` — bad credentials or wrong 2FA / verify code. - `422` — missing `login` / `passwd` / `tfa` / `verify`; response body's `field` indicates which input is required next. - `429` — too many failed attempts (login-log rate-limit) or max code retries reached.  **Related calls:** - **Prerequisite:** `getLoginInfo` to fetch the captcha challenge and counts. - **Alternate:** `getOauthRedirect` → `postOauthCallback` for social login. - **After login:** `updateAccountApiKey`. 

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

api_instance = InterServerClient::PublicApi.new
login = 'login_example' # String | 
passwd = 'passwd_example' # String | 
opts = {
  remember: 'remember_example', # String | 
  g_recaptcha_response: InterServerClient::LoginSubmissionExampleGRecaptchaResponse.new, # LoginSubmissionExampleGRecaptchaResponse | 
  tfa: 'tfa_example' # String | Two Factor Authentication Response.
}

begin
  # Authenticate with email + password and return a session token
  result = api_instance.submit_login(login, passwd, opts)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->submit_login: #{e}"
end
```

#### Using the submit_login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginSuccessResponse>, Integer, Hash)> submit_login_with_http_info(login, passwd, opts)

```ruby
begin
  # Authenticate with email + password and return a session token
  data, status_code, headers = api_instance.submit_login_with_http_info(login, passwd, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginSuccessResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->submit_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **String** |  |  |
| **passwd** | **String** |  |  |
| **remember** | **String** |  | [optional] |
| **g_recaptcha_response** | [**LoginSubmissionExampleGRecaptchaResponse**](LoginSubmissionExampleGRecaptchaResponse.md) |  | [optional] |
| **tfa** | **String** | Two Factor Authentication Response. | [optional] |

### Return type

[**LoginSuccessResponse**](LoginSuccessResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## submit_signup

> submit_signup(opts)

Create a new customer account (email + password + captcha + ToS)

First step of the signup flow before adding payment or services. Public — no auth required. The account is created in `pending` state and moved to `active` once the email-confirmation code is verified; an `account.activated` event then fires (welcome email + admin notification). MaxMind GeoIP populates `country` from the client IP. Sibling ops: `submitLogin`, `getCaptcha`, `getLoginInfo`, `addBillingPrepay`, plus the `add*` service ops to follow up after signup.  **Body fields** (JSON or form): - `login` (string, required) — email; must be valid and not an alias like `+tag` or dotted gmail. - `passwd` (string, required) — 4–64 chars. - `tos` (truthy, required) — `yes` / `true` / `1`. - `captcha` (string, required) — answer to the phrase from `getCaptcha` or `getLoginInfo` (server reads the phrase from `$_SESSION['captchaSignup']`). - `email_confirmation` (string, conditional) — 8-char code emailed on the first attempt; server returns `400 { field: 'email_confirmation' }` until provided. - `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — 256-day cookie.  **Returns:** `{ sessionId, account_id, account_lid, ima }`.  **Errors:** - `400` — missing or invalid `login` / `passwd` / `tos` / `captcha` / `email_confirmation`; blocked-domain or aliased-email; account already exists. - `402` per `LoginResponseError` — signup gate misconfigured upstream.  **Related calls:** - **Prerequisite:** `getCaptcha` or `getLoginInfo`. - **After signup:** `submitLogin`, `addBillingPrepay`, plus any `add*` order op. 

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

api_instance = InterServerClient::PublicApi.new
opts = {
  login_submission_example: InterServerClient::LoginSubmissionExample.new({login: 'login_example', passwd: 'passwd_example'}) # LoginSubmissionExample | 
}

begin
  # Create a new customer account (email + password + captcha + ToS)
  api_instance.submit_signup(opts)
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->submit_signup: #{e}"
end
```

#### Using the submit_signup_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> submit_signup_with_http_info(opts)

```ruby
begin
  # Create a new customer account (email + password + captcha + ToS)
  data, status_code, headers = api_instance.submit_signup_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue InterServerClient::ApiError => e
  puts "Error when calling PublicApi->submit_signup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_submission_example** | [**LoginSubmissionExample**](LoginSubmissionExample.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# interserver_api_client.PublicApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_currencies**](PublicApi.md#get_account_currencies) | **GET** /account/currencies | List enabled currency codes accepted for billing and preferences
[**get_account_locales**](PublicApi.md#get_account_locales) | **GET** /account/locales | List supported UI locales with English and native display names
[**get_captcha**](PublicApi.md#get_captcha) | **GET** /captcha | Fetch a base64 JPEG captcha challenge for human verification
[**get_countries**](PublicApi.md#get_countries) | **GET** /account/countries | List enabled countries keyed by ISO-2/ISO-3/numeric code
[**get_info**](PublicApi.md#get_info) | **GET** /info | Discover available modules, service packages, categories, and types
[**get_login_info**](PublicApi.md#get_login_info) | **GET** /login | Fetch logo, captcha, language, and stats for rendering a login page
[**get_mp_servers**](PublicApi.md#get_mp_servers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
[**get_oauth_redirect**](PublicApi.md#get_oauth_redirect) | **GET** /oauth | Begin OAuth login flow — redirect user to provider for authentication
[**get_timezones**](PublicApi.md#get_timezones) | **GET** /account/timezones | List all PHP timezone identifiers usable on accounts and services
[**patch_oauth_two_factor**](PublicApi.md#patch_oauth_two_factor) | **PATCH** /oauth | Submit 2FA code to finish OAuth login when account has 2FA enabled
[**ping_server**](PublicApi.md#ping_server) | **GET** /ping | Liveness check — returns the JSON string \&quot;pong\&quot; to confirm API is up
[**post_oauth_callback**](PublicApi.md#post_oauth_callback) | **POST** /oauth | Complete OAuth login by linking provider to existing or new account
[**submit_login**](PublicApi.md#submit_login) | **POST** /login | Authenticate with email + password and return a session token
[**submit_signup**](PublicApi.md#submit_signup) | **POST** /signup | Create a new customer account (email + password + captcha + ToS)


# **get_account_currencies**
> List[str] get_account_currencies()

List enabled currency codes accepted for billing and preferences

Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountLocales`, plus the billing-preference endpoints under `/account/*` and `/billing/*`.

**Path/Query/Body:** None.

**Returns:** flat JSON array of ISO-4217 currency codes — e.g. `["USD", "EUR", "GBP", "INR"]`. Sourced from rows in the `currencies` table where `currency_enabled=1`, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.

**Auth:** None.

**Errors:** No documented error path.

**Related calls:**
- **Apply to account profile:** `updateAccountInfo`.
- **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountLocales`.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)

    try:
        # List enabled currency codes accepted for billing and preferences
        api_response = api_instance.get_account_currencies()
        print("The response of PublicApi->get_account_currencies:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->get_account_currencies: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**List[str]**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An array of enabled currency codes. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_account_locales**
> Dict[str, GetAccountLocales200ResponseValue] get_account_locales()

List supported UI locales with English and native display names

Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP's Punic locale data with `locale/google_langs.php` so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen locale).

**Path/Query/Body:** None.

**Returns:** JSON object keyed by BCP-47-style locale code, with `{ name, local_name }` per entry — e.g.

    {
      "en": { "name": "English", "local_name": "English" },
      "es": { "name": "Spanish", "local_name": "español" },
      "fr": { "name": "French", "local_name": "français" }
    }

`name` is the English label; `local_name` is the locale's name in its own language (good for accessibility and avoiding the wrong-script problem).

**Auth:** None.

**Errors:** No documented error path.

**Related calls:**
- **Apply to account profile:** `updateAccountInfo` (sets `locale`).
- **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountCurrencies`.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.get_account_locales200_response_value import GetAccountLocales200ResponseValue
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)

    try:
        # List supported UI locales with English and native display names
        api_response = api_instance.get_account_locales()
        print("The response of PublicApi->get_account_locales:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->get_account_locales: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**Dict[str, GetAccountLocales200ResponseValue]**](GetAccountLocales200ResponseValue.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Map of locale identifiers to display names. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_captcha**
> CaptchaResponse get_captcha()

Fetch a base64 JPEG captcha challenge for human verification

Fetches a fresh captcha challenge image to display before submitting `submitSignup` (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: `getLoginInfo` (returns a captcha alongside other login-page data), `submitSignup` (consumes the answer), `submitLogin`.

**Path/Query/Body:** None.

**Returns:** `{ captcha: string }` — `captcha` is a `data:image/jpeg;base64,...` URL ready to drop into an `<img src>`.

**Side effects:** the phrase is stored server-side in `$_SESSION['captcha']` (also aliased to the signup-flow key `$_SESSION['captchaSignup']` and forgot-password key `$_SESSION['captchaFP']`). The browser must send the same `PHPSESSID` cookie back when posting the answer.

**Charset:** 8 chars from `3456789ABCDEFGHJKLMNPQRSTWXY` — no ambiguous `0`/`1`/`I`/`O`/`2`/`Z`.

**Related calls:**
- **Consumers:** `submitSignup`, `submitLogin`.
- **One-shot login bootstrap:** `getLoginInfo`.
answer in `captcha` field).


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.captcha_response import CaptchaResponse
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)

    try:
        # Fetch a base64 JPEG captcha challenge for human verification
        api_response = api_instance.get_captcha()
        print("The response of PublicApi->get_captcha:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->get_captcha: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An array containing a &#x60;captcha&#x60; field containing a string with a base64 encoded captcha image. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_countries**
> object get_countries(fetch_by=fetch_by)

List enabled countries keyed by ISO-2/ISO-3/numeric code

Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in `country_t.enabled`. Sibling ops: `getTimezones`, `getAccountLocales`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen country).

**Query parameters:**
- `fetch_by` (string, optional) — one of `iso2` (default; two-letter codes like `US`, `GB`), `iso3` (three-letter like `USA`, `GBR`), or `numcode` (UN M49 numeric like `840`). Any other value silently falls back to `iso2`.

**Body:** None.

**Returns:** JSON object mapping the chosen key format to the country's short name — e.g. `{ "AF": "Afghanistan", "US": "United States", "ZW": "Zimbabwe" }`. Sourced from the `country_t` table, filtered to `enabled=1`, ordered alphabetically by `short_name`.

**Auth:** None.

**Errors:** No documented error path.

**Related calls:**
- **Apply to account profile:** `updateAccountInfo`.
- **Other preference catalogs:** `getTimezones`, `getAccountLocales`, `getAccountCurrencies`.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)
    fetch_by = 'fetch_by_example' # str | Get countries by iso2 or iso3 or numcode (optional)

    try:
        # List enabled countries keyed by ISO-2/ISO-3/numeric code
        api_response = api_instance.get_countries(fetch_by=fetch_by)
        print("The response of PublicApi->get_countries:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->get_countries: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fetch_by** | **str**| Get countries by iso2 or iso3 or numcode | [optional] 

### Return type

**object**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The list of countries with both 2 letter abbreviations and the country names. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_info**
> ServicesInfo get_info()

Discover available modules, service packages, categories, and types

Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer` — each module's catalog op for buyable-package details.

**Path/Query/Body:** None.

**Returns:** `{ modules, services, serviceTypes, serviceCategories }`.
- `modules` (array) — enabled plugin modules (`vps`, `webhosting`, `domains`, `ssl`, etc.).
- `services` (object) — map of `services_id` → row from the `services` table, filtered to `services_buyable=1 AND services_hidden=0`, with `services_ourcost` / `services_hidden` stripped, and `services_id` / `services_category` / `services_type` cast to int and `services_cost` cast to float.
- `serviceTypes` (object) — joins service rows to human-readable type names.
- `serviceCategories` (object) — joins service rows to category names.

**Auth:** None.

**Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.

**Related calls:**
- **Module-specific order catalog:** `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer`.
- **Deeper health probe:** `pingServer`.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.services_info import ServicesInfo
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)

    try:
        # Discover available modules, service packages, categories, and types
        api_response = api_instance.get_info()
        print("The response of PublicApi->get_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->get_info: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The modules and services information from the server. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_login_info**
> LoginInfo get_login_info()

Fetch logo, captcha, language, and stats for rendering a login page

Bootstraps an unauthenticated login page in one round-trip — branding logo, fresh captcha challenge, auto-detected user language, and live counts of VPS / websites / servers managed by the system (often used as marketing stats). Public — no auth required. Sibling ops: `submitLogin` (consume the captcha), `getCaptcha` (refresh captcha only), `getAccountLocales`, `submitSignup`.

**Path/Query/Body:** None.

**Returns** `{ logo, captcha, language, counts }`:
- `logo` (string) — URL; uses the `LOGO` constant or a default.
- `captcha` (string) — `data:image/jpeg;base64,...` image; phrase is stored server-side under `$_SESSION['captcha']` (also aliased to `$_SESSION['captchaSignup']` and `$_SESSION['captchaFP']`) — the browser's `PHPSESSID` cookie carries the phrase to `submitLogin` / `submitSignup`.
- `language` (string) — BCP-47 locale (e.g. `en-US`).
- `counts` (object) — `{ vps: int, websites: int, servers: int }` from live `SELECT COUNT(*)` on the underlying tables.

**Auth:** None.

**Errors:** `403` per `LoginResponseError` if a stricter login gate is configured upstream.

**Related calls:**
- **Next:** `submitLogin` (login form post) or `submitSignup` (new account).
- **Captcha refresh only:** `getCaptcha`.
- **OAuth alternative:** `getOauthRedirect`.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.login_info import LoginInfo
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)

    try:
        # Fetch logo, captcha, language, and stats for rendering a login page
        api_response = api_instance.get_login_info()
        print("The response of PublicApi->get_login_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->get_login_info: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Various pieces of information useful for rendering a login page. |  -  |
**403** | Error response to a login request. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_mp_servers**
> BuyItNowList get_mp_servers()

List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing

Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`.
Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired.
Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).

### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.buy_it_now_list import BuyItNowList
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)

    try:
        # List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
        api_response = api_instance.get_mp_servers()
        print("The response of PublicApi->get_mp_servers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->get_mp_servers: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Marketplace Buy it now servers list |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_oauth_redirect**
> GetOauthRedirect200Response get_oauth_redirect(provider)

Begin OAuth login flow — redirect user to provider for authentication

Use as step 1 of social login. Navigate the browser (typically a popup) to `/apiv2/oauth?provider=X` so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required.
Query params: `provider` (required, case-sensitive: `Google`/`GitHub`/`Facebook`/`Twitter`), `origin` (optional, opener window origin used to target postMessage instead of `*`).
The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: `oauth_success` (logged in), `oauth_2fa_required` (call `patchOauthTwoFactor` with the `oauth_token`), `oauth_link_required` (call `postOauthCallback` to link or create), or `oauth_error`.
Siblings: `postOauthCallback`, `patchOauthTwoFactor`, `submitLogin` (password flow).

### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.get_oauth_redirect200_response import GetOauthRedirect200Response
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)
    provider = 'provider_example' # str | The OAuth provider name (e.g. `Google`).

    try:
        # Begin OAuth login flow — redirect user to provider for authentication
        api_response = api_instance.get_oauth_redirect(provider)
        print("The response of PublicApi->get_oauth_redirect:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->get_oauth_redirect: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **str**| The OAuth provider name (e.g. &#x60;Google&#x60;). | 

### Return type

[**GetOauthRedirect200Response**](GetOauthRedirect200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OAuth redirect URL for the requested provider. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_timezones**
> List[str] get_timezones()

List all PHP timezone identifiers usable on accounts and services

Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP's `DateTimeZone::listIdentifiers()` so the catalog is large (~400+ zones, including deprecated aliases like `US/Eastern`). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: `postVpsChangeTimezone`, `postQsChangeTimezone`, `getCountries`, `getAccountLocales`, `getAccountCurrencies`.

**Path/Query/Body:** None.

**Returns:** flat JSON array of stable IANA tz strings, e.g. `["Africa/Abidjan", "America/New_York", "Asia/Tokyo", "Europe/London", "UTC"]`. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.

**Auth:** None.

**Errors:** No documented error path under normal operation.

**Related calls:**
- **Apply selection to a service:** `postVpsChangeTimezone` (`/vps/{id}/change_timezone`), `postQsChangeTimezone` (`/qs/{id}/change_timezone`).
- **Apply to account profile:** `updateAccountInfo` (sets `timezone`).
- **Other preference catalogs:** `getCountries`, `getAccountLocales`, `getAccountCurrencies`.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)

    try:
        # List all PHP timezone identifiers usable on accounts and services
        api_response = api_instance.get_timezones()
        print("The response of PublicApi->get_timezones:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->get_timezones: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**List[str]**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An array of all available timezone identifiers. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_oauth_two_factor**
> PatchOauthTwoFactor200Response patch_oauth_two_factor(patch_oauth_two_factor_request)

Submit 2FA code to finish OAuth login when account has 2FA enabled

Final step of the OAuth login flow when the account has 2FA enabled. Called after `postOauthCallback` (or the popup's `window.postMessage()` handshake) returned `2fa_required`. Verifies the TOTP against the account's stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: `postOauthCallback` (prior step), `getOauthRedirect` (entry point), `getAccountTfaSetup` (enroll 2FA), `submitLogin`.

**Body fields** (JSON or form):
- `code` (string, required) — 6-digit TOTP from the authenticator app.
- `account_id` (integer, required) — returned by the prior `postOauthCallback`.
- `oauth_token` (string, optional) — signed token from the original `postMessage` payload, type `2fa`, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.

**Returns:** `{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }`.

**Errors:**
- `400` — invalid / expired `oauth_token` or no pending verification.
- `401` — invalid 2FA code.
- `409` — 2FA not enabled on the account.
- `422` — missing `code`.

**Related calls:**
- **Prerequisite:** `postOauthCallback`.
- **Enroll 2FA on the account first:** `getAccountTfaSetup` → `updateAccountTfa`.
- **Alternate login:** `submitLogin`.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.patch_oauth_two_factor200_response import PatchOauthTwoFactor200Response
from interserver_api_client.models.patch_oauth_two_factor_request import PatchOauthTwoFactorRequest
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)
    patch_oauth_two_factor_request = interserver_api_client.PatchOauthTwoFactorRequest() # PatchOauthTwoFactorRequest | 

    try:
        # Submit 2FA code to finish OAuth login when account has 2FA enabled
        api_response = api_instance.patch_oauth_two_factor(patch_oauth_two_factor_request)
        print("The response of PublicApi->patch_oauth_two_factor:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->patch_oauth_two_factor: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patch_oauth_two_factor_request** | [**PatchOauthTwoFactorRequest**](PatchOauthTwoFactorRequest.md)|  | 

### Return type

[**PatchOauthTwoFactor200Response**](PatchOauthTwoFactor200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OAuth 2FA verification result. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ping_server**
> str ping_server()

Liveness check — returns the JSON string \"pong\" to confirm API is up

Trivial GET that returns the JSON string `"pong"` so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: `getInfo` (richer probe that touches MySQL).

**Path/Query/Body:** None.

**Returns:** JSON-encoded string `"pong"` with HTTP 200.

**Auth:** None (public endpoint).

**Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.

**Use when:**
- Bootstrapping a new client and want to confirm the API is reachable.
- Smoke-testing in CI/health-check pipelines.
- Diagnosing connectivity issues before higher-cost calls.

**Related calls:**
- **Deeper health probe:** `getInfo` (exercises the DB layer).


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)

    try:
        # Liveness check — returns the JSON string \"pong\" to confirm API is up
        api_response = api_instance.ping_server()
        print("The response of PublicApi->ping_server:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->ping_server: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A simple response of \&quot;pong\&quot; for use with simple tests to see if a service is up.  |  -  |
**401** | Unauthorized |  -  |
**0** | Something is wrong |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_oauth_callback**
> PostOauthCallback200Response post_oauth_callback(provider, post_oauth_callback_request=post_oauth_callback_request)

Complete OAuth login by linking provider to existing or new account

Step 3 of the OAuth login flow. Called after `getOauthRedirect` returned `oauth_link_required` via the popup's `window.postMessage()`. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: `patchOauthTwoFactor` (2FA follow-up), `getOauthRedirect` (start the flow), `submitSignup`, `submitLogin`.

**Body fields** (JSON or form):
- `oauth_token` (string, required) — signed token from the popup's `window.postMessage()` payload; 10-minute expiry.
- `login` (string, required) — email.
- `password` (string, required).
- `create` (boolean, optional) — set `true` to create a new account instead of linking.
- `email_confirmation` (string, conditional) — 8-char code emailed on the first `create=true` attempt; server returns 422 `email_verification_required` until provided.
- `tfa` (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 `2fa_required`).

**Returns:** `{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }`.

**Errors:**
- `400` — invalid / expired `oauth_token`.
- `401` — bad password or wrong 2FA code.
- `409` — account already exists (when `create: true`).
- `422` — missing field; `email_verification_required`; `2fa_required`.

**Related calls:**
- **Prerequisite:** `getOauthRedirect` to initiate the popup flow.
- **Follow-up when 2FA required:** `patchOauthTwoFactor`.
- **Alternate entry points:** `submitLogin`, `submitSignup`.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.post_oauth_callback200_response import PostOauthCallback200Response
from interserver_api_client.models.post_oauth_callback_request import PostOauthCallbackRequest
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)
    provider = 'provider_example' # str | The OAuth provider name (e.g. `Google`).
    post_oauth_callback_request = interserver_api_client.PostOauthCallbackRequest() # PostOauthCallbackRequest |  (optional)

    try:
        # Complete OAuth login by linking provider to existing or new account
        api_response = api_instance.post_oauth_callback(provider, post_oauth_callback_request=post_oauth_callback_request)
        print("The response of PublicApi->post_oauth_callback:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->post_oauth_callback: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **str**| The OAuth provider name (e.g. &#x60;Google&#x60;). | 
 **post_oauth_callback_request** | [**PostOauthCallbackRequest**](PostOauthCallbackRequest.md)|  | [optional] 

### Return type

[**PostOauthCallback200Response**](PostOauthCallback200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OAuth callback result. |  -  |
**401** | Unauthorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_login**
> LoginSuccessResponse submit_login(login, passwd, remember=remember, g_recaptcha_response=g_recaptcha_response, tfa=tfa)

Authenticate with email + password and return a session token

Primary password→session-token exchange. Pass the returned session id back as the `sessionid` HTTP header on subsequent calls. Public — no auth required. Sibling ops: `getLoginInfo` (captcha + branding), `getOauthRedirect` (social login), `submitSignup`, `updateAccountApiKey` (rotate API key once logged in).

**Body fields** (JSON or form):
- `login` (string, required) — email.
- `passwd` (string, required) — password.
- `tfa` (string, conditional) — 6-digit TOTP when the account has 2FA enabled.
- `verify` (string, conditional) — 8-char email-confirmation code returned via email when logging in from a new IP. Triggered automatically when the IP has no `acquittal` trial record yet (see `Trial` ORM, type `verify_email`).
- `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — extends cookie lifetime.

**Returns:** `{ sessionId, account_id, account_lid, ima, name, gravatar }`. The `sessionId` value is the credential to send on every subsequent authenticated request.

**Errors:**
- `401` — bad credentials or wrong 2FA / verify code.
- `422` — missing `login` / `passwd` / `tfa` / `verify`; response body's `field` indicates which input is required next.
- `429` — too many failed attempts (login-log rate-limit) or max code retries reached.

**Related calls:**
- **Prerequisite:** `getLoginInfo` to fetch the captcha challenge and counts.
- **Alternate:** `getOauthRedirect` → `postOauthCallback` for social login.
- **After login:** `updateAccountApiKey`.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.login_submission_example_g_recaptcha_response import LoginSubmissionExampleGRecaptchaResponse
from interserver_api_client.models.login_success_response import LoginSuccessResponse
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)
    login = 'login_example' # str | 
    passwd = 'passwd_example' # str | 
    remember = 'remember_example' # str |  (optional)
    g_recaptcha_response = interserver_api_client.LoginSubmissionExampleGRecaptchaResponse() # LoginSubmissionExampleGRecaptchaResponse |  (optional)
    tfa = 'tfa_example' # str | Two Factor Authentication Response. (optional)

    try:
        # Authenticate with email + password and return a session token
        api_response = api_instance.submit_login(login, passwd, remember=remember, g_recaptcha_response=g_recaptcha_response, tfa=tfa)
        print("The response of PublicApi->submit_login:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicApi->submit_login: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **str**|  | 
 **passwd** | **str**|  | 
 **remember** | **str**|  | [optional] 
 **g_recaptcha_response** | [**LoginSubmissionExampleGRecaptchaResponse**](LoginSubmissionExampleGRecaptchaResponse.md)|  | [optional] 
 **tfa** | **str**| Two Factor Authentication Response. | [optional] 

### Return type

[**LoginSuccessResponse**](LoginSuccessResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful login response containing the session token. |  -  |
**402** | Error response to a login request. |  -  |
**0** | Default response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_signup**
> submit_signup(login_submission_example=login_submission_example)

Create a new customer account (email + password + captcha + ToS)

First step of the signup flow before adding payment or services. Public — no auth required. The account is created in `pending` state and moved to `active` once the email-confirmation code is verified; an `account.activated` event then fires (welcome email + admin notification). MaxMind GeoIP populates `country` from the client IP. Sibling ops: `submitLogin`, `getCaptcha`, `getLoginInfo`, `addBillingPrepay`, plus the `add*` service ops to follow up after signup.

**Body fields** (JSON or form):
- `login` (string, required) — email; must be valid and not an alias like `+tag` or dotted gmail.
- `passwd` (string, required) — 4–64 chars.
- `tos` (truthy, required) — `yes` / `true` / `1`.
- `captcha` (string, required) — answer to the phrase from `getCaptcha` or `getLoginInfo` (server reads the phrase from `$_SESSION['captchaSignup']`).
- `email_confirmation` (string, conditional) — 8-char code emailed on the first attempt; server returns `400 { field: 'email_confirmation' }` until provided.
- `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — 256-day cookie.

**Returns:** `{ sessionId, account_id, account_lid, ima }`.

**Errors:**
- `400` — missing or invalid `login` / `passwd` / `tos` / `captcha` / `email_confirmation`; blocked-domain or aliased-email; account already exists.
- `402` per `LoginResponseError` — signup gate misconfigured upstream.

**Related calls:**
- **Prerequisite:** `getCaptcha` or `getLoginInfo`.
- **After signup:** `submitLogin`, `addBillingPrepay`, plus any `add*` order op.


### Example

* Api Key Authentication (sessionIdCookieAuth):
* Api Key Authentication (apiKeyAuth):
* Api Key Authentication (sessionIdHeaderAuth):

```python
import interserver_api_client
from interserver_api_client.models.login_submission_example import LoginSubmissionExample
from interserver_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://my.interserver.net/apiv2
# See configuration.py for a list of all supported configuration parameters.
configuration = interserver_api_client.Configuration(
    host = "https://my.interserver.net/apiv2"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: sessionIdCookieAuth
configuration.api_key['sessionIdCookieAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdCookieAuth'] = 'Bearer'

# Configure API key authorization: apiKeyAuth
configuration.api_key['apiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyAuth'] = 'Bearer'

# Configure API key authorization: sessionIdHeaderAuth
configuration.api_key['sessionIdHeaderAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['sessionIdHeaderAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with interserver_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = interserver_api_client.PublicApi(api_client)
    login_submission_example = {"login":"user@domain.com","passwd":"mypassword","remember":"true","g-recaptcha-response":{"__v_isShallow":false,"dep":{"w":0,"n":0},"__v_isRef":true,"_rawValue":"zzzzz","_value":"zzzzz"}} # LoginSubmissionExample |  (optional)

    try:
        # Create a new customer account (email + password + captcha + ToS)
        api_instance.submit_signup(login_submission_example=login_submission_example)
    except Exception as e:
        print("Exception when calling PublicApi->submit_signup: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login_submission_example** | [**LoginSubmissionExample**](LoginSubmissionExample.md)|  | [optional] 

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
**200** | Account created successfully. |  -  |
**402** | Error response to a login request. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


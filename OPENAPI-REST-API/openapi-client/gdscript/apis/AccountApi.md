<a name="__pageTop"></a>
# AccountApi   { #AccountApi }


All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_account_oauth_name**](#delete_account_oauth_name) | **DELETE** `/account/oauth/{name}` | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
[**delete_account_tfa**](#delete_account_tfa) | **DELETE** `/account/2fa` | Disable two-factor authentication and remove the TOTP secret
[**delete_ip_limit**](#delete_ip_limit) | **PATCH** `/account/iplimits` | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
[**get_account_info**](#get_account_info) | **GET** `/account` | Read full account profile, billing address, and security settings
[**get_account_tfa_setup**](#get_account_tfa_setup) | **GET** `/account/2fa` | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
[**get_home**](#get_home) | **GET** `/home` | Aggregate dashboard payload — service counts, recent activity, alerts
[**get_search**](#get_search) | **GET** `/search` | Global autocomplete across the caller&#x27;s services, domains, and records
[**logout**](#logout) | **GET** `/logout` | Destroy the current API/web session — token becomes unusable
[**logout_account_oauth**](#logout_account_oauth) | **GET** `/account/oauth/{name}/logout` | Sign out of the upstream OAuth provider session (does not unlink the account)
[**update_account_api_key**](#update_account_api_key) | **POST** `/account/apikey` | Rotate the account&#x27;s REST/MCP API key — old key is invalidated immediately
[**update_account_features**](#update_account_features) | **POST** `/account/features` | Toggle account-wide safety locks for password reset and OS reinstall
[**update_account_info**](#update_account_info) | **POST** `/account` | Update contact and billing-address fields on the customer profile
[**update_account_ip_limits**](#update_account_ip_limits) | **POST** `/account/iplimits` | Add an IP CIDR/range to the account&#x27;s API+web allow-list (lockout-safe)
[**update_account_password**](#update_account_password) | **POST** `/account/password` | Change the account login password (verifies current, kills other sessions)
[**update_account_ssh_key**](#update_account_ssh_key) | **POST** `/account/sshkey` | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
[**update_account_tfa**](#update_account_tfa) | **POST** `/account/2fa` | Verify TOTP code and enable two-factor authentication on the account

# **delete_account_oauth_name**   { #delete_account_oauth_name }
<a name="delete_account_oauth_name"></a>

> `delete_account_oauth_name(name: String, on_success: Callable, on_failure: Callable)`

Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account

DESTRUCTIVE: removes the linked provider's tokens from `accounts_ext` (rows where `account_key` IN (`{name}_id`,`{name}_url`)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: `name` (case-insensitive provider key, e.g. `google`, `github`, `facebook`) — must be present in `getOauthConfig().providers`. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns `{success:true, text:'OAuth Provider Unlinked.'}`. Errors: 400 `Invalid Provider Name.` if `name` not configured; 401 unauthenticated. Sibling ops: `logoutAccountOauth`, `getAccountInfo`, `updateAccountPassword`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.delete_account_oauth_name(
	# name: String = ""   Eg: name_example
	name,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_account_oauth_name", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delete_account_tfa**   { #delete_account_tfa }
<a name="delete_account_tfa"></a>

> `delete_account_tfa( on_success: Callable, on_failure: Callable)`

Disable two-factor authentication and remove the TOTP secret

DESTRUCTIVE: removes the 2FA secret from `account_security` and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then `getAccountTfaSetup` -> `updateAccountTfa`). Returns `{success:true, text:'Google Two Factor Authentication is disabled successfully!'}`. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate `updateAccountPassword` if you suspect credential compromise. Sibling ops: `getAccountTfaSetup`, `updateAccountTfa`, `updateAccountPassword`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.delete_account_tfa(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_account_tfa", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delete_ip_limit**   { #delete_ip_limit }
<a name="delete_ip_limit"></a>

> `delete_ip_limit(ipLimitRange = null, on_success: Callable, on_failure: Callable)`

Remove one IP range from the account allow-list (PATCH on /account/iplimits)

DESTRUCTIVE: deletes the matching `{start, end}` entry from `accounts.session_limit`. Method is PATCH (not DELETE) because the path collides with `updateAccountIpLimits`. Body: `{start, end}` — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller's source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via `X-API-APP: 1` header. Returns `{success:true, text:'IP Range deleted.'}`. Errors: 400/422 `Invalid IP Address` if `start`/`end` aren't valid IPs; 401 unauthenticated. Sibling ops: `updateAccountIpLimits`, `getAccountInfo`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)

var ipLimitRange = IpLimitRange.new()
# … fill model ipLimitRange with data

# Invoke an endpoint
api.delete_ip_limit(
	# ipLimitRange: IpLimitRange
	ipLimitRange,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_ip_limit", response)
		assert(response.data is GenericResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_account_info**   { #get_account_info }
<a name="get_account_info"></a>

> `get_account_info( on_success: Callable, on_failure: Callable)`

Read full account profile, billing address, and security settings

Use to render the account-settings page or to verify current state before mutating with `updateAccountInfo`. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (`disable_reset`, `disable_reinstall`, `disable_*_notifications`), gravatar URL, language, country->currency map, and `enableLocales`/`enableCurrencies` UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: `updateAccountInfo`, `getAccountTfaSetup`, `updateAccountFeatures`, `updateAccountIpLimits`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.get_account_info(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_account_info", response)
		assert(response.data is AccountInfo)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_account_tfa_setup**   { #get_account_tfa_setup }
<a name="get_account_tfa_setup"></a>

> `get_account_tfa_setup( on_success: Callable, on_failure: Callable)`

Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)

Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns `{2fa_google_key, 2fa_google_split}` — render `2fa_google_key` as a QR code (otpauth://totp/My.InterServer:LID?secret=KEY) and display `2fa_google_split` (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with `updateAccountTfa`. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: `updateAccountTfa` (verify & enable), `deleteAccountTfa` (disable).

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.get_account_tfa_setup(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_account_tfa_setup", response)
		assert(response.data is getAccountTfaSetup_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_home**   { #get_home }
<a name="get_home"></a>

> `get_home( on_success: Callable, on_failure: Callable)`

Aggregate dashboard payload — service counts, recent activity, alerts

Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by `getClientHomeData()` — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don't each issue list calls. Cached implementation lives in `function_requirements('client_home')` -> `getClientHomeData()`. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: `getSearch` (autocomplete), `getAccountInfo`, plus per-module list ops like `getVpsList`, `getDomainsList`, `getBillingInvoices`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.get_home(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_home", response)
		assert(response.data is Home)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_search**   { #get_search }
<a name="get_search"></a>

> `get_search( on_success: Callable, on_failure: Callable)`

Global autocomplete across the caller's services, domains, and records

Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally `q=` though the underlying `getSearchAutoComplete($custid)` may match against multiple fields. Returns a `SearchAutocompleteResponse` object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: `getHome`, `getAccountInfo`, plus per-module list ops (`getVpsList`, `getDomainsList`, `getMailList`, `getTicketsList`).

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.get_search(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_search", response)
		assert(response.data is SearchAutocompleteResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **logout**   { #logout }
<a name="logout"></a>

> `logout( on_success: Callable, on_failure: Callable)`

Destroy the current API/web session — token becomes unusable

DESTRUCTIVE: invalidates the caller's session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns `200` (no-op when `App::accounts()->data` is empty). API keys (`updateAccountApiKey`) and persistent OAuth links are NOT affected — only this session token. Sibling ops: `updateAccountPassword`, `updateAccountApiKey`, `logoutAccountOauth`, `deleteAccountOauthName`.  **Path/Query/Body:** None.  **Returns:** `{ success: true, text: 'Logged Out' }`.  **Side effects:** calls `App::session()->destroy()` only when `api_check_auth_limits()` passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - `401` — only on a completely malformed auth header.  **Related calls:** - **Re-login:** `submitLogin` or `getOauthRedirect`. - **Per-provider OAuth sign-out (does NOT invalidate the session):** `logoutAccountOauth`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.logout(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "logout", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **logout_account_oauth**   { #logout_account_oauth }
<a name="logout_account_oauth"></a>

> `logout_account_oauth(name: String, on_success: Callable, on_failure: Callable)`

Sign out of the upstream OAuth provider session (does not unlink the account)

Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in `accounts_ext` is preserved, so the user can log back in with that provider without re-linking. Path param: `name` (provider key, e.g. `google`, `github`). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for `Logout` (which kills the MyAdmin session) and NOT a substitute for `deleteAccountOauthName` (which permanently severs the link). Returns `{success:true, text:'OAuth Provider Logged Out.'}`. Errors: 401 unauthenticated. Sibling ops: `deleteAccountOauthName`, `Logout`, `getAccountInfo`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.logout_account_oauth(
	# name: String = ""   Eg: name_example
	name,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "logout_account_oauth", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_account_api_key**   { #update_account_api_key }
<a name="update_account_api_key"></a>

> `update_account_api_key( on_success: Callable, on_failure: Callable)`

Rotate the account's REST/MCP API key — old key is invalidated immediately

DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in `account_security` (type `api_key`, label `default`). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns `{success:true, text:NEW_KEY}` — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: `updateAccountPassword`, `updateAccountIpLimits`, `Logout`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.update_account_api_key(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_account_api_key", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_account_features**   { #update_account_features }
<a name="update_account_features"></a>

> `update_account_features(disableReset = null,disableReinstall = null, on_success: Callable, on_failure: Callable)`

Toggle account-wide safety locks for password reset and OS reinstall

Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.update_account_features(
	# disableReset: int   Eg: 56
	disableReset,
	# disableReinstall: int   Eg: 56
	disableReinstall,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_account_features", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_account_info**   { #update_account_info }
<a name="update_account_info"></a>

> `update_account_info(name: String,address: String,city: String,state: String,zip: String,country: String,phone: String,company = "",address2 = "",locale = "",emailInvoices = "",emailAbuse = "",disableReset = null,disableReinstall = null,disableServerNotifications = null,disableEmailNotifications = null,gstin = "", on_success: Callable, on_failure: Callable)`

Update contact and billing-address fields on the customer profile

Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.update_account_info(
	# name: String = ""   Eg: name_example
	# Your name.
	name,
	# address: String = ""   Eg: address_example
	# Your address.
	address,
	# city: String = ""   Eg: city_example
	# Your city.
	city,
	# state: String = ""   Eg: state_example
	# Your state.
	state,
	# zip: String = ""   Eg: zip_example
	# Your ZIP code.
	zip,
	# country: String = ""   Eg: country_example
	# Your country.
	country,
	# phone: String = ""   Eg: phone_example
	# Your phone number.
	phone,
	# company: String = ""   Eg: company_example
	# Your company name.
	company,
	# address2: String = ""   Eg: address2_example
	# Additional address information.
	address2,
	# locale: String = ""   Eg: locale_example
	# Your preferred locale.
	locale,
	# emailInvoices: String = ""   Eg: emailInvoices_example
	# Your email for invoice notifications.
	emailInvoices,
	# emailAbuse: String = ""   Eg: emailAbuse_example
	# Your email for abuse notifications.
	emailAbuse,
	# disableReset: bool   Eg: true
	# Set to `true` to disable account resets, or `false` to enable them.
	disableReset,
	# disableReinstall: bool   Eg: true
	# Set to `true` to disable server reinstalls, or `false` to enable them.
	disableReinstall,
	# disableServerNotifications: bool   Eg: true
	# Set to `true` to disable server notifications, or `false` to enable them.
	disableServerNotifications,
	# disableEmailNotifications: bool   Eg: true
	# Set to `true` to disable email notifications, or `false` to enable them.
	disableEmailNotifications,
	# gstin: String = ""   Eg: gstin_example
	# Your GST identification number (if applicable).
	gstin,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_account_info", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_account_ip_limits**   { #update_account_ip_limits }
<a name="update_account_ip_limits"></a>

> `update_account_ip_limits(start: String,end: String, on_success: Callable, on_failure: Callable)`

Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)

DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.update_account_ip_limits(
	# start: String = ""   Eg: start_example
	# The begining (or first) IP address in the range.
	start,
	# end: String = ""   Eg: end_example
	# The ending (or last) IP address in the range.
	end,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_account_ip_limits", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_account_password**   { #update_account_password }
<a name="update_account_password"></a>

> `update_account_password(password: String, on_success: Callable, on_failure: Callable)`

Change the account login password (verifies current, kills other sessions)

DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.update_account_password(
	# password: String = ""   Eg: password_example
	password,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_account_password", response)
		assert(response.data is TextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_account_ssh_key**   { #update_account_ssh_key }
<a name="update_account_ssh_key"></a>

> `update_account_ssh_key(sshKey = "", on_success: Callable, on_failure: Callable)`

Set the account-level SSH public key auto-installed on new VPS/dedicated orders

Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.update_account_ssh_key(
	# sshKey: String = ""   Eg: sshKey_example
	sshKey,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_account_ssh_key", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_account_tfa**   { #update_account_tfa }
<a name="update_account_tfa"></a>

> `update_account_tfa(2faGoogleCode: String, on_success: Callable, on_failure: Callable)`

Verify TOTP code and enable two-factor authentication on the account

Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = AccountApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AccountApi.new(config, client)


# Invoke an endpoint
api.update_account_tfa(
	# 2faGoogleCode: String = ""   Eg: 2faGoogleCode_example
	# The 6-digit verification code from your authenticator app.
	2faGoogleCode,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_account_tfa", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```


### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), 
[sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth), 
[sessionIdCookieAuth](../README.md#sessionIdCookieAuth)

[[Back to top]](#__pageTop) \
[[Back to API list]](../README.md#documentation-for-api-endpoints) \
[[Back to Model list]](../README.md#documentation-for-models) \
[[Back to README]](../README.md) \


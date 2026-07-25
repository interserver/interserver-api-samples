<a name="__pageTop"></a>
# BackupsApi   { #BackupsApi }


All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_backup**](#add_backup) | **POST** `/backups/order` | Place a new off-site backup storage order and generate the invoice
[**cancel_backup**](#cancel_backup) | **DELETE** `/backups/{id}` | Cancel an off-site backup storage subscription
[**get_backup_info**](#get_backup_info) | **GET** `/backups/{id}` | Get details of a specific off-site backup storage service
[**get_backup_invoices**](#get_backup_invoices) | **GET** `/backups/{id}/invoices` | List invoices for a single backup-storage subscription
[**get_backup_login**](#get_backup_login) | **GET** `/backups/{id}/login` | Open a single sign-on session URL for the backup storage panel
[**get_backups_list**](#get_backups_list) | **GET** `/backups` | List off-site backup storage subscriptions on the authenticated account
[**get_backups_welcome_email**](#get_backups_welcome_email) | **GET** `/backups/{id}/welcome_email` | Resend the welcome email for an off-site backup storage service
[**get_new_backup**](#get_new_backup) | **GET** `/backups/order` | Get backup-storage order form metadata and pricing tiers
[**update_backup_info**](#update_backup_info) | **POST** `/backups/{id}` | Update stored metadata for a backup-storage subscription
[**validate_backup_order**](#validate_backup_order) | **PUT** `/backups/order` | Validate a backup-storage order and preview pricing without charging

# **add_backup**   { #add_backup }
<a name="add_backup"></a>

> `add_backup(validateOnly = null,serviceType = null,coupon = "", on_success: Callable, on_failure: Callable)`

Place a new off-site backup storage order and generate the invoice

Step 3 of the backup-storage order flow. Revalidates via `validate_buy_storage()`, then calls `place_buy_storage()` which creates a `backups` service row, a `repeat_invoices` recurring entry, and the first `invoices` row. **Real billable order — call `validateBackupOrder` first.** Service is provisioned only after the invoice is paid. Sibling ops: `getNewBackup` (catalog), `validateBackupOrder` (quote), `getBackupInvoices` (billing history), `initiatePayment` (settle).  **Body fields** (JSON or multipart): - `serviceType` (integer, required) — `services_id` from `getNewBackup`. - `coupon` (string, optional) — coupon code. - `period` (integer, optional, default `1`) — billing months. - `comment` (string, optional) — saved on the order row.  **Returns** (on success): `{ continue: true, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }` — feed `real_iids` into `initiatePayment`. On validation failure: `{ continue: false, errors: [...] }` with HTTP 200.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. - `422` inside `errors[]` — coupon/plan/duplicate-hostname validation. - Explicit error text when no backend storage server is available for assignment.  **Side effects:** new rows in `backups`, `repeat_invoices`, `invoices`; queued provisioning kicks off only after payment.  **Related calls:** - **Prerequisite:** `validateBackupOrder`. - **Pay:** `getBillingInvoice` → `initiatePayment`. - **Poll status:** `getBackupInfo` (until `backup_status='active'`). 

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.add_backup(
	# validateOnly: bool   Eg: true
	validateOnly,
	# serviceType: int   Eg: 56
	serviceType,
	# coupon: String = ""   Eg: coupon_example
	coupon,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "add_backup", response)
		assert(response.data is BackupOrderPostResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **cancel_backup**   { #cancel_backup }
<a name="cancel_backup"></a>

> `cancel_backup(id: int, on_success: Callable, on_failure: Callable)`

Cancel an off-site backup storage subscription

DESTRUCTIVE. Use to terminate a backup-storage subscription. Delegates to `CancelService::go($id)` with module `backups`, which marks the service for cancellation and stops future recurring billing; data on the storage backend may become inaccessible at end of cycle. Path param: `id` from `getBackupsList`. No body. Returns `BackupsCancelResponse`. Caveats: irreversible — a new order via `addBackup` is required to restore service, with a new IP/username and no migration of prior data. Does NOT delete VPS/QS/webhosting in-place snapshots (those live under their own tags). Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller; HTTP 409 if the service is already cancelled or pending cancellation. Siblings: `addBackup`, `getBackupInfo`, `getBackupInvoices`.

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.cancel_backup(
	# id: int   Eg: 56
	# The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "cancel_backup", response)
		assert(response.data is cancelBackup_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_backup_info**   { #get_backup_info }
<a name="get_backup_info"></a>

> `get_backup_info(id: int, on_success: Callable, on_failure: Callable)`

Get details of a specific off-site backup storage service

Use to fetch the full management view for one backup-storage subscription. Path param: `id` (backup service ID from `getBackupsList`). No body. Returns `serviceInfo` (with `backup_username`, `backup_ip`, `backup_status`, `backup_quota`, `backup_type`, `backup_invoice`), plus `billingDetails`, `extraInfoTables`, `package`, `custCurrency`, and `client_links` (rewritten to surface the link target rather than the raw queue URL). `admin_links`, internal `settings`, and `csrf` are stripped. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` does not belong to the caller (cross-account access blocked by `get_service`). Siblings: `getBackupLogin` (open storage panel session), `getBackupInvoices`, `getBackupsWelcomeEmail`, `cancelBackup`, `updateBackupInfo`.

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.get_backup_info(
	# id: int   Eg: 56
	# The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_backup_info", response)
		assert(response.data is Backup)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_backup_invoices**   { #get_backup_invoices }
<a name="get_backup_invoices"></a>

> `get_backup_invoices(id: int, on_success: Callable, on_failure: Callable)`

List invoices for a single backup-storage subscription

Use to retrieve all invoices tied to one off-site backup storage service — useful for confirming billing status, locating an unpaid invoice to pay, or reconciling renewals. Path param: `id` from `getBackupsList`. Delegates to the shared `InvoicesList::go()` handler with module `backups`. No body. Returns `ChargeInvoiceRows` (array of invoice rows with `invoices_id`, status, amount, dates). Feed `invoices_id` into `getBillingInvoice` for full detail or `/billing/pay/{method}/{invoices}` to settle an unpaid invoice. For the account-wide invoice list use the Billing tag instead. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller. Siblings: `getBackupInfo`, `addBackup`.

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.get_backup_invoices(
	# id: int   Eg: 56
	# The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_backup_invoices", response)
		assert(response.data is ChargeInvoiceRows)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_backup_login**   { #get_backup_login }
<a name="get_backup_login"></a>

> `get_backup_login(id: int, on_success: Callable, on_failure: Callable)`

Open a single sign-on session URL for the backup storage panel

Use to drop the customer straight into the off-site backup storage management panel without a separate login prompt. Calls `get_storage_session($id)` to mint a one-shot session URL; treat the URL as short-lived and credentials-equivalent — do not log or share. Path param: `id` from `getBackupsList`. No body. Returns `BackupLoginResponse` (`success`, session URL/token, optional connection hints). On `success=false` the handler returns `json_error(text)` (HTTP 400) with the upstream reason. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller; backend errors when the storage server is unreachable. Siblings: `getBackupInfo` (SFTP `backup_username`/`backup_ip` for direct connections), `getBackupsWelcomeEmail` (resend setup credentials).

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.get_backup_login(
	# id: int   Eg: 56
	# The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_backup_login", response)
		assert(response.data is BackupLoginResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_backups_list**   { #get_backups_list }
<a name="get_backups_list"></a>

> `get_backups_list( on_success: Callable, on_failure: Callable)`

List off-site backup storage subscriptions on the authenticated account

Use when enumerating all off-site backup storage services (SFTP-style remote storage subscriptions) on the authenticated customer's account. NOT for VPS/QS/webhosting in-place snapshots — those live under their own tags (`getVpsBackups`, `getQsBackups`, `getWebsitesBackups`). No query params, no body. Returns an array of rows; each row carries `backup_id`, `backup_name`, `backup_username`, `backup_status`, `services_name` (plan), and `backup_cost` (recurring price from `repeat_invoices`). Use `backup_id` as the path `{id}` for `getBackupInfo`, `getBackupLogin`, `getBackupInvoices`, `getBackupsWelcomeEmail`, `cancelBackup`. Errors: HTTP 401 if unauthenticated. Empty array when the customer has no backup services. Siblings: `getBackupInfo`, `getNewBackup`, `addBackup`.

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.get_backups_list(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_backups_list", response)
		assert(response.data is BackupRow)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_backups_welcome_email**   { #get_backups_welcome_email }
<a name="get_backups_welcome_email"></a>

> `get_backups_welcome_email(id: int, on_success: Callable, on_failure: Callable)`

Resend the welcome email for an off-site backup storage service

Use when the original welcome email was lost or never arrived. Resends connection credentials (SFTP host, username, quota) and setup instructions to the account email by invoking the module's `backup_welcome_email($id)` helper. Path param: `id` from `getBackupsList`. No body. Returns `SuccessTextResponse` with `text='Welcome Email has been resent.'`. Caveats: only works while the service is `active`; cancelled/pending services will return 409. Email is sent to the customer-of-record on file — there is no override recipient parameter. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller (`Invalid Service Passed`); HTTP 409 if `backup_status` is not `active` (`Service is not active`). Siblings: `getBackupLogin`, `getBackupInfo`.

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.get_backups_welcome_email(
	# id: int   Eg: 56
	# The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_backups_welcome_email", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_new_backup**   { #get_new_backup }
<a name="get_new_backup"></a>

> `get_new_backup( on_success: Callable, on_failure: Callable)`

Get backup-storage order form metadata and pricing tiers

Use before placing an off-site backup storage order to fetch the available plans, their service-type IDs, and per-tier pricing needed to render an order form. No params, no body. Returns `{ packageCosts, serviceTypes }` — `packageCosts` is a map of `services_id` → recurring cost (from `services` where `services_module='backups'` and `services_buyable=1`); `serviceTypes` is the dispatcher output of `run_event('get_service_types', true, 'backups')` describing each tier. Pass the chosen `services_id` as `serviceType` to `validateBackupOrder` (PUT) for a price preview, then to `addBackup` (POST) to commit. Errors: HTTP 401 if unauthenticated. Siblings: `validateBackupOrder`, `addBackup`, `getBackupsList`.

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.get_new_backup(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_new_backup", response)
		assert(response.data is BackupsOrder)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_backup_info**   { #update_backup_info }
<a name="update_backup_info"></a>

> `update_backup_info(id: int, on_success: Callable, on_failure: Callable)`

Update stored metadata for a backup-storage subscription

Use to update non-billing metadata (e.g. stored credentials, comment, hostname) on an existing off-site backup storage service. Path param: `id` from `getBackupsList`. Body fields are forwarded to the same `View::go()` handler as the GET; consult the order form for accepted keys. Returns the standard `SuccessTextResponse`. Caveats: this endpoint does NOT change the plan, quota, or billing — those require cancel + reorder via `cancelBackup` and `addBackup`. It also does NOT trigger any backend SFTP credential rotation. Errors: HTTP 401 unauthenticated; HTTP 404 if `id` is not owned by the caller; HTTP 422 on invalid input. Siblings: `getBackupInfo`, `cancelBackup`, `getBackupLogin`.

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.update_backup_info(
	# id: int   Eg: 56
	# The backup service ID. Use the `backup_id` from `GET /backups` to identify the service.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_backup_info", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **validate_backup_order**   { #validate_backup_order }
<a name="validate_backup_order"></a>

> `validate_backup_order(validateOnly = null,serviceType = null,coupon = "", on_success: Callable, on_failure: Callable)`

Validate a backup-storage order and preview pricing without charging

Use to dry-run a backup order — runs `validate_buy_storage()` to compute final price, apply any coupon, and surface validation errors before the customer commits. No invoice is created and no service is provisioned. Body (JSON or multipart): `serviceType` (services_id from `getNewBackup`), optional `coupon`, `period` (months, default 1), `comment`. Returns `{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, hostname, password, coupon, couponCode }`. Use the response to render a confirmation screen, then call `addBackup` (POST same path) to place the order. Errors: HTTP 401 unauthenticated; HTTP 422 surfaced inside `errors[]` (invalid coupon, ineligible plan, duplicate hostname). Siblings: `addBackup`, `getNewBackup`.

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
var api = BackupsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BackupsApi.new(config, client)


# Invoke an endpoint
api.validate_backup_order(
	# validateOnly: bool   Eg: true
	validateOnly,
	# serviceType: int   Eg: 56
	serviceType,
	# coupon: String = ""   Eg: coupon_example
	coupon,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "validate_backup_order", response)
		assert(response.data is BackupOrderPutResponse)
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


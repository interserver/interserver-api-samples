<a name="__pageTop"></a>
# FloatingIPsApi   { #FloatingIPsApi }


All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_floating_ip**](#add_floating_ip) | **POST** `/floating_ips/order` | Place a real Floating IP order, create billing records, and provision the service
[**floating_ips_cancel**](#floating_ips_cancel) | **DELETE** `/floating_ips/{id}` | Cancel a Floating IP service and release the IP — destructive, billing stops
[**get_floating_ip_info**](#get_floating_ip_info) | **GET** `/floating_ips/{id}` | Fetch full details for one Floating IP service, including current target IP
[**get_floating_ip_invoices**](#get_floating_ip_invoices) | **GET** `/floating_ips/{id}/invoices` | List all billing invoices charged against a specific Floating IP service
[**get_floating_ips_list**](#get_floating_ips_list) | **GET** `/floating_ips` | List all Floating IP services on the authenticated customer&#x27;s account
[**get_floating_ips_welcome_email**](#get_floating_ips_welcome_email) | **GET** `/floating_ips/{id}/welcome_email` | Resend the Floating IP welcome / setup email to the account contact
[**get_new_floating_ip**](#get_new_floating_ip) | **GET** `/floating_ips/order` | Get pricing and service-type options for ordering a new Floating IP
[**post_floating_ips_change_ip**](#post_floating_ips_change_ip) | **POST** `/floating_ips/{id}/change_ip` | Re-point a Floating IP to a different target IP on one of the customer&#x27;s services
[**put_floating_ips**](#put_floating_ips) | **PUT** `/floating_ips/order` | Validate a Floating IP order and price it without charging the customer
[**update_floating_ip_info**](#update_floating_ip_info) | **POST** `/floating_ips/{id}` | Update a Floating IP service&#x27;s editable settings (label / metadata)

# **add_floating_ip**   { #add_floating_ip }
<a name="add_floating_ip"></a>

> `add_floating_ip(floatingIpOrderRequest: FloatingIpOrderRequest, on_success: Callable, on_failure: Callable)`

Place a real Floating IP order, create billing records, and provision the service

Charges the customer and creates a new Floating IP service via `place_buy_floating_ip`. Validate first with `putFloating_ips` to avoid surprise failures. Body (form-encoded): `serviceType` (required, `services_id`), `coupon` (optional), `comment` (optional internal note). On success returns `{ continue:true, errors, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }` — `iid` is the master invoice ID, `serviceId` is the new `floating_ip_id`. On validation failure returns `{ continue:false, errors:[...] }` with no charge. Errors: 401 if unauthenticated; soft errors in `errors[]`. The newly-issued IP starts unassigned — point it at a target with `postFloatingIpsChangeIp` once the service is `active`.  Sibling ops: `getNewFloatingIp` (catalog), `putFloating_ips` (validate), `getFloatingIpInfo` (poll), `postFloatingIpsChangeIp` (route), `getBillingInvoice` + `initiatePayment` (settle invoice), `floating_ipsCancel`.

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)

var floatingIpOrderRequest = FloatingIpOrderRequest.new()
# … fill model floatingIpOrderRequest with data

# Invoke an endpoint
api.add_floating_ip(
	# floatingIpOrderRequest: FloatingIpOrderRequest
	floatingIpOrderRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "add_floating_ip", response)
		assert(response.data is ServiceOrderPostResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **floating_ips_cancel**   { #floating_ips_cancel }
<a name="floating_ips_cancel"></a>

> `floating_ips_cancel(id: int, on_success: Callable, on_failure: Callable)`

Cancel a Floating IP service and release the IP — destructive, billing stops

Cancels the Floating IP via the shared `Api\\Billing\\CancelService` flow — flips status to canceled, halts recurring billing, and releases the IP back to the pool so it can no longer be re-routed. Not reversible: the customer cannot recover the same IP after release. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `FloatingIpsCancelResponse` shape (success text / cancellation outcome). Errors: 401 if unauthenticated; 404 / cross-customer hidden when `id` is not owned by the caller; 409 if already canceled or otherwise non-cancelable. Confirm with the customer before calling — for routing changes use `postFloatingIpsChangeIp` instead of cancel-and-reorder.  Sibling ops: `getFloatingIpInfo` (status), `getFloatingIpInvoices` (outstanding charges), `postFloatingIpsChangeIp` (re-route instead of cancel), `addFloatingIp` (re-order).

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)


# Invoke an endpoint
api.floating_ips_cancel(
	# id: int   Eg: 56
	# The Floating IP service ID. Use the ID from `GET /floating_ips`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "floating_ips_cancel", response)
		assert(response.data is floating_ipsCancel_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_floating_ip_info**   { #get_floating_ip_info }
<a name="get_floating_ip_info"></a>

> `get_floating_ip_info(id: int, on_success: Callable, on_failure: Callable)`

Fetch full details for one Floating IP service, including current target IP

Use for a Floating IP detail screen, or to read `floating_ip_ip` / `floating_ip_target_ip` before calling `postFloatingIpsChangeIp`. Read-only. Path param `id` (integer, `floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ViewFloatingIp.getDetails()` payload — service info, billing/cost summary, status, target IP, and `client_links` (action URLs the UI can render). Internal-only fields (`admin_links`, `settings`, `csrf`) are stripped. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller (`get_service` filters by custid). Siblings: `postFloatingIpsChangeIp`, `updateFloatingIpInfo`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, `floating_ipsCancel`.

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)


# Invoke an endpoint
api.get_floating_ip_info(
	# id: int   Eg: 56
	# The Floating IP service ID. Use the ID from `GET /floating_ips`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_floating_ip_info", response)
		assert(response.data is )
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_floating_ip_invoices**   { #get_floating_ip_invoices }
<a name="get_floating_ip_invoices"></a>

> `get_floating_ip_invoices(id: int, on_success: Callable, on_failure: Callable)`

List all billing invoices charged against a specific Floating IP service

Use for a per-service billing history view — pulls the standard `Api\\Billing\\InvoicesList` rows scoped to this Floating IP. Read-only. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ChargeInvoiceRows` schema: array of invoice rows with id, date, amount, status, etc. Use the invoice IDs with the global billing endpoints (`getBillingInvoice`, `initiatePayment`) for line-item detail. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller. Siblings: `getFloatingIpInfo` (service details), `getFloatingIpsWelcomeEmail`.

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)


# Invoke an endpoint
api.get_floating_ip_invoices(
	# id: int   Eg: 56
	# The Floating IP service ID. Use the ID from `GET /floating_ips`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_floating_ip_invoices", response)
		assert(response.data is ChargeInvoiceRows)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_floating_ips_list**   { #get_floating_ips_list }
<a name="get_floating_ips_list"></a>

> `get_floating_ips_list( on_success: Callable, on_failure: Callable)`

List all Floating IP services on the authenticated customer's account

Use to enumerate every Floating IP the caller owns before drilling into a specific one. Read-only; safe to call frequently. No params, no body. Returns an array of rows: `floating_ip_id`, `repeat_invoices_cost` (recurring price), `floating_ip_ip` (the portable IP), `floating_ip_target_ip` (the IP it currently routes to), `floating_ip_status` (active/pending/canceled/etc.), `services_name` (package label). Empty array if the account owns no Floating IPs. Errors: 401 if unauthenticated. Use returned IDs with `getFloatingIpInfo`, `postFloatingIpsChangeIp`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, or `floating_ipsCancel`. To order a new one see `getNewFloatingIp` / `addFloatingIp`.  Sibling ops: `getFloatingIpInfo`, `getNewFloatingIp` (catalog), `addFloatingIp` (order).

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)


# Invoke an endpoint
api.get_floating_ips_list(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_floating_ips_list", response)
		assert(response.data is object)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_floating_ips_welcome_email**   { #get_floating_ips_welcome_email }
<a name="get_floating_ips_welcome_email"></a>

> `get_floating_ips_welcome_email(id: int, on_success: Callable, on_failure: Callable)`

Resend the Floating IP welcome / setup email to the account contact

Triggers `floating_ip_welcome_email($id)` to re-deliver the original setup email (the IP, routing instructions, etc.) to the customer's on-file address. Useful when the email was lost or the customer needs the IP/setup details again. No body, no params besides path `id` (`floating_ip_id`). Returns `{ text: 'Welcome Email has been resent.' }`. Errors: 401 if unauthenticated; 404 (`Invalid Service Passed`) if `id` is not owned by the caller; 409 (`Service is not active`) if status is not `active`. Side effect: sends an outbound email — avoid in tight loops. Read state first via `getFloatingIpInfo` if unsure of status.  Sibling ops: `getFloatingIpInfo` (status), `addFloatingIp` (new order), `floating_ipsCancel`.

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)


# Invoke an endpoint
api.get_floating_ips_welcome_email(
	# id: int   Eg: 56
	# The Floating IP service ID. Use the ID from `GET /floating_ips`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_floating_ips_welcome_email", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_new_floating_ip**   { #get_new_floating_ip }
<a name="get_new_floating_ip"></a>

> `get_new_floating_ip( on_success: Callable, on_failure: Callable)`

Get pricing and service-type options for ordering a new Floating IP

Use before showing a Floating IP order form, or before calling `addFloatingIp`, to discover which service types (`serviceTypes`) and prices (`packageCosts`, keyed by `services_id` in the customer's currency) are currently buyable. Read-only; no side effects. No params, no body. Returns `{ packageCosts: { <services_id>: <cost> }, serviceTypes: [ ... ] } `. Costs are `services.services_cost` filtered to `services_buyable=1` for module `floating_ips`. Errors: 401 if unauthenticated. Next steps: validate the chosen `serviceType` with `putFloating_ips`, then place the order with `addFloatingIp`. Floating IPs are portable IPv4 addresses that route to a target IP on one of the customer's active services.  Sibling ops: `putFloating_ips` (validate), `addFloatingIp` (commit), `getFloatingIpsList` (existing IPs).

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)


# Invoke an endpoint
api.get_new_floating_ip(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_new_floating_ip", response)
		assert(response.data is )
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_floating_ips_change_ip**   { #post_floating_ips_change_ip }
<a name="post_floating_ips_change_ip"></a>

> `post_floating_ips_change_ip(id: int,some_ipnull: String, on_success: Callable, on_failure: Callable)`

Re-point a Floating IP to a different target IP on one of the customer's services

Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via `Sshwitch`), then updates `floating_ip_target_ip`. Use to move a portable IP between the customer's VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param `id` (`floating_ip_id`). Body: `{ ip: <new target IP> }` (also accepts multipart form). Returns `{ success:true, text:'IP Changed' }`. Errors (returned via `json_error`): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: `getFloatingIpInfo` (read current target), `getFloatingIpsList`, `floating_ipsCancel`. Read current target with `getFloatingIpInfo` first.

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)


# Invoke an endpoint
api.post_floating_ips_change_ip(
	# id: int   Eg: 56
	# The Floating IP service ID. Use the ID from `GET /floating_ips`.
	id,
	# some_ipnull: String = ""   Eg: some_ipnull_example
	# IP Address
	some_ipnull,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "post_floating_ips_change_ip", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **put_floating_ips**   { #put_floating_ips }
<a name="put_floating_ips"></a>

> `put_floating_ips(floatingIpOrderRequest: FloatingIpOrderRequest, on_success: Callable, on_failure: Callable)`

Validate a Floating IP order and price it without charging the customer

Dry-run for `addFloatingIp` — runs `validate_buy_floating_ip` to apply coupons, compute intro/repeat pricing, and surface errors before committing. No charge, no service created. Body fields (form-encoded): `serviceType` (required, `services_id` from `getNewFloatingIp.packageCosts`), `coupon` (optional code). Returns `{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, password, introFrequency, coupon, couponCode }`. `continue=true` means the order would succeed; `continue=false` plus populated `errors[]` means it would not. Errors: 401 if unauthenticated; 422-style soft errors arrive in the `errors` array. Use the returned `serviceType` and `couponCode` when calling `addFloatingIp`. Sibling ops: `getNewFloatingIp` (catalog), `addFloatingIp` (commit).

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)

var floatingIpOrderRequest = FloatingIpOrderRequest.new()
# … fill model floatingIpOrderRequest with data

# Invoke an endpoint
api.put_floating_ips(
	# floatingIpOrderRequest: FloatingIpOrderRequest
	floatingIpOrderRequest,
	# On Success
	func(response):
		prints("Success!", "put_floating_ips", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_floating_ip_info**   { #update_floating_ip_info }
<a name="update_floating_ip_info"></a>

> `update_floating_ip_info(id: String, on_success: Callable, on_failure: Callable)`

Update a Floating IP service's editable settings (label / metadata)

Stub edit endpoint that delegates to the same handler as `getFloatingIpInfo` — currently used for label/metadata edits surfaced by `ViewFloatingIp`. To re-route the IP to a different target use the dedicated `postFloatingIpsChangeIp` instead; this op does not change routing. Path param `id` (`floating_ip_id`). Body: form-encoded fields exposed by the Floating IP edit form (label/comment style). Returns the standard success-text response. Errors: 401 if unauthenticated; effectively 404 if `id` not owned by the caller. Read state first with `getFloatingIpInfo`.  Sibling ops: `getFloatingIpInfo` (read), `postFloatingIpsChangeIp` (re-route), `floating_ipsCancel`.

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
var api = FloatingIPsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = FloatingIPsApi.new(config, client)


# Invoke an endpoint
api.update_floating_ip_info(
	# id: String = ""   Eg: id_example
	# The Floating IP service ID. Use the ID from `GET /floating_ips`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_floating_ip_info", response)
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


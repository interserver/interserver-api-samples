<a name="__pageTop"></a>
# ScrubIpsApi   { #ScrubIpsApi }


All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_scrub_ip**](#cancel_scrub_ip) | **DELETE** `/scrub_ips/{id}` | Cancel a Scrub IP service and stop its recurring DDoS billing
[**create_filter**](#create_filter) | **POST** `/scrub_ips/{id}/create_filter` | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
[**create_geo_rule**](#create_geo_rule) | **POST** `/scrub_ips/{id}/create_geo_rule` | Add a geographic firewall rule (block/allow by country code or ASN)
[**create_rule**](#create_rule) | **POST** `/scrub_ips/{id}/create_rule` | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
[**delete_filter**](#delete_filter) | **POST** `/scrub_ips/{id}/delete_filter` | Remove a scrubbing filter by matching filter_type and port
[**disable_scrub**](#disable_scrub) | **GET** `/scrub_ips/{id}/disable` | Disable DDoS scrubbing and remove the BGP announcement on the IP
[**enable_scrub**](#enable_scrub) | **GET** `/scrub_ips/{id}/enable` | Enable DDoS scrubbing (BGP announcement) on the service&#x27;s protected IP
[**get_order_detail**](#get_order_detail) | **GET** `/scrub_ips/order` | Get plans, pricing, and eligible IPs for a new Scrub IP order
[**get_scrub_ip_details**](#get_scrub_ip_details) | **GET** `/scrub_ips/{id}` | Get full Scrub IP service detail (rules + geo + filters)
[**get_scrub_ip_filter_types**](#get_scrub_ip_filter_types) | **GET** `/scrub_ips/filter_types` | List enabled traffic filter profiles available for createFilter
[**get_scrub_ip_invoices**](#get_scrub_ip_invoices) | **GET** `/scrub_ips/{id}/invoices` | List recurring and one-time invoices billed for this Scrub IP service
[**get_scrub_ip_logs**](#get_scrub_ip_logs) | **GET** `/scrub_ips/{id}/logs` | Get last 50000 packet/event log entries for the protected IP
[**get_scrub_ips_list**](#get_scrub_ips_list) | **GET** `/scrub_ips` | List all Scrub IP DDoS protection services on the authenticated account
[**place_scrub_order**](#place_scrub_order) | **POST** `/scrub_ips/order` | Place a new Scrub IP DDoS protection order and generate an invoice
[**put_scrub_ips**](#put_scrub_ips) | **PUT** `/scrub_ips/order` | Validate a Scrub IP order and return effective pricing without billing
[**scrub_ips_delete_geo_rule**](#scrub_ips_delete_geo_rule) | **POST** `/scrub_ips/{id}/delete_geo_rule` | Delete a geo firewall rule by rule_id from getScrubIpDetails
[**scrub_ips_delete_rule**](#scrub_ips_delete_rule) | **POST** `/scrub_ips/{id}/delete_rule` | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails

# **cancel_scrub_ip**   { #cancel_scrub_ip }
<a name="cancel_scrub_ip"></a>

> `cancel_scrub_ip(id: int, on_success: Callable, on_failure: Callable)`

Cancel a Scrub IP service and stop its recurring DDoS billing

Cancels the Scrub IP DDoS protection service. The protected IP is removed from the scrubbing infrastructure and the recurring invoice is closed; protection stops at end of the current billing cycle. Use only when the customer no longer needs DDoS scrubbing for the IP. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body. Returns {success: true, text: 'Scrub Ips is canceled.'}. Errors: 401 unauthenticated; 404/Invalid Service if id is not owned by the session account; 409 if the service is not in a cancellable state. Caveat: leaves the underlying VPS/server IP exposed to attacks once protection ends; contact billing for refund handling. Siblings: getScrubIpDetails, disableScrub, getScrubIpInvoices.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)


# Invoke an endpoint
api.cancel_scrub_ip(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "cancel_scrub_ip", response)
		assert(response.data is cancelScrubIp_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **create_filter**   { #create_filter }
<a name="create_filter"></a>

> `create_filter(id: int,createFilter: CreateFilter, on_success: Callable, on_failure: Callable)`

Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port

Attaches a named scrubbing profile to a destination port on the protected IP, applying protocol-aware mitigation (DNS amplification protection, HTTP rate limiting, synproxy SYN-cookies). Call getScrubIpFilterTypes first to list valid `filter_type` values. Path param: `id` (integer, required) — service ID. Body (CreateFilter): `filter_type` (string, required, one of getScrubIpFilterTypes keys), `port` (int, required, >= 0). Destination IP is locked to the service IP server-side; synproxy uses a different shape internally. Returns 201 {success: true, text: 'New filter has been created.'}. Errors: 400 'Filter type is empty/invalid', 'Port is invalid', or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::filterCreate fails. Siblings: deleteFilter, getScrubIpFilterTypes, createRule.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)

var createFilter = CreateFilter.new()
# … fill model createFilter with data

# Invoke an endpoint
api.create_filter(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# createFilter: CreateFilter
	createFilter,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "create_filter", response)
		assert(response.data is createFilter_201_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **create_geo_rule**   { #create_geo_rule }
<a name="create_geo_rule"></a>

> `create_geo_rule(id: int,createGeoFirewallRule: CreateGeoFirewallRule, on_success: Callable, on_failure: Callable)`

Add a geographic firewall rule (block/allow by country code or ASN)

Creates a geo-based XDP rule on the scrubber for the service's protected IP. Use to block traffic from specific countries or ASNs (botnet source regions) or to allow only known regions. Path param: `id` (integer, required) — service ID. Body (CreateGeoFirewallRule): `country_code` (int, country numeric ID) OR `asn` (int) — at least one is required, `destination_port` (int, defaults 80), `xdp_action` (0 allow, 1 drop, defaults 1). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 errors[] 'Country or Asn is required.' or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::geoFirewallCreate fails. Caveat: country_code is an internal numeric ID, not ISO-3166. Siblings: scrubIpsDeleteGeoRule, createRule, createFilter.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)

var createGeoFirewallRule = CreateGeoFirewallRule.new()
# … fill model createGeoFirewallRule with data

# Invoke an endpoint
api.create_geo_rule(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# createGeoFirewallRule: CreateGeoFirewallRule
	createGeoFirewallRule,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "create_geo_rule", response)
		assert(response.data is createRule_201_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **create_rule**   { #create_rule }
<a name="create_rule"></a>

> `create_rule(id: int,createFirewallRule: CreateFirewallRule, on_success: Callable, on_failure: Callable)`

Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)

Creates an XDP firewall rule on the scrubber for the service's protected IP. Use to whitelist a known good source, block an abusive source, or restrict a destination port. Path param: `id` (integer, required) — service ID. Body (CreateFirewallRule): `source_ip` (IPv4, 0 = any), `source_port` (int, 0 = any), `destination_port` (int, 0 = any), `protocol_id` (1 ICMP or 2 TCP/UDP — must be 1 or 2), `xdp_action` (0 allow, 1 drop). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 with `errors[]` for invalid source_ip/protocol_id/xdp_action or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::firewallCreate fails. Caveat: rules are stateless and may interact with active filters. Siblings: scrubIpsDeleteRule, createGeoRule, createFilter.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)

var createFirewallRule = CreateFirewallRule.new()
# … fill model createFirewallRule with data

# Invoke an endpoint
api.create_rule(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# createFirewallRule: CreateFirewallRule
	createFirewallRule,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "create_rule", response)
		assert(response.data is createRule_201_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delete_filter**   { #delete_filter }
<a name="delete_filter"></a>

> `delete_filter(id: int,createFilter: CreateFilter, on_success: Callable, on_failure: Callable)`

Remove a scrubbing filter by matching filter_type and port

Removes a previously attached scrubbing profile from the protected IP. Identification is by composite key, not `rule_id` — pass the same `filter_type` and `port` that were used in `createFilter`. The endpoint splits `filter_type` on `_` to dispatch to the correct delete shape (synproxy vs generic). Sibling ops: `createFilter`, `getScrubIpFilterTypes`.  **Path:** `id` (integer, required) — Scrub IP service ID.  **Body fields:** - `filter_type` (string, required) — must match an enabled type from `getScrubIpFilterTypes`. - `port` (integer, required) — must be `> 0`.  **Returns:** `{ success: true, text: 'Filter is deleted.' }`.  **Errors:** - `400` — `'Filter is required.'` / `'Port is required.'` / `'Invalid filter'` / `Invalid Service`. - `401` — unauthenticated. - `500` — upstream `Scrub::filterDelete` failed.  **Caveat:** the port loses its protocol-specific scrubbing protection until `createFilter` is called again with the same composite key. 

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)

var createFilter = CreateFilter.new()
# … fill model createFilter with data

# Invoke an endpoint
api.delete_filter(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# createFilter: CreateFilter
	createFilter,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_filter", response)
		assert(response.data is deleteFilter_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **disable_scrub**   { #disable_scrub }
<a name="disable_scrub"></a>

> `disable_scrub(id: int, on_success: Callable, on_failure: Callable)`

Disable DDoS scrubbing and remove the BGP announcement on the IP

Withdraws the BGP announcement from Wanguard so the IP stops being routed through scrubbing; traffic resumes flowing directly to the backend. Use for maintenance windows or migration off scrub. Path param: `id` (integer, required) — service ID from getScrubIpsList. No body (HTTP GET). The endpoint reads the stored Wanguard `href` from the service's `extra` JSON to know which announcement to delete; clears `extra` on success. Returns {success: true, text: 'Scrub is disabled on your IP.'}. Errors: 400 Invalid Service if id is not owned, or 'Scrub is not enabled in this service.' if there is no active announcement; 401 unauthenticated; 500 if upstream delete fails. Caveat: leaves the IP unprotected against DDoS until enableScrub is called. Siblings: enableScrub, cancelScrubIp, getScrubIpDetails.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)


# Invoke an endpoint
api.disable_scrub(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "disable_scrub", response)
		assert(response.data is disableScrub_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **enable_scrub**   { #enable_scrub }
<a name="enable_scrub"></a>

> `enable_scrub(id: int, on_success: Callable, on_failure: Callable)`

Enable DDoS scrubbing (BGP announcement) on the service's protected IP

Routes the service's protected IP through the Wanguard scrubbing infrastructure by creating a BGP announcement, so inbound traffic passes through filtering before reaching the backend. Call after placeScrubOrder activation, after disableScrub, or whenever the announcement was lost. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body (HTTP GET). Returns {success: true, text: 'Scrub is enabled on your IP.'} on 201 from Wanguard, persisted into the service's `extra` column. Errors: 400 Invalid Service if id is not owned by the session account; 401 unauthenticated; 500 if the upstream Wanguard call fails. Caveat: enabling re-routes live traffic and can briefly disrupt active sessions. Siblings: disableScrub, getScrubIpDetails, getScrubIpLogs.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)


# Invoke an endpoint
api.enable_scrub(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "enable_scrub", response)
		assert(response.data is enableScrub_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_order_detail**   { #get_order_detail }
<a name="get_order_detail"></a>

> `get_order_detail( on_success: Callable, on_failure: Callable)`

Get plans, pricing, and eligible IPs for a new Scrub IP order

Returns the data needed to render a new-order form: `packageCosts` (default services_id and recurring price in customer currency with symbol), `serviceTypes` (each buyable plan with services_id, services_name, services_cost, services_module), and `ips` (the customer's existing VPS/server/floating IPs eligible to be put behind a scrubber, each with service_id, service_module, service_hostname). Use as a precursor to putScrubIps (validate) or placeScrubOrder (commit). No path/query/body parameters. Returns object. Errors: 401 unauthenticated. Caveat: ips list is filtered to the session account; pricing is converted to the customer's currency. Siblings: putScrubIps, placeScrubOrder, getScrubIpsList.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)


# Invoke an endpoint
api.get_order_detail(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_order_detail", response)
		assert(response.data is getOrderDetail_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_scrub_ip_details**   { #get_scrub_ip_details }
<a name="get_scrub_ip_details"></a>

> `get_scrub_ip_details(id: int, on_success: Callable, on_failure: Callable)`

Get full Scrub IP service detail (rules + geo + filters)

Returns the full service-detail payload for one Scrub IP — used to render the dashboard or before mutating rules/filters. Includes `serviceInfo` (status, scrubbed IP, custid), `billingDetails` (cost, frequency), `client_links` (allowed self-service actions), and `filter_firewall` with the active firewall `rules`, geographic `geo_rules`, and traffic `filters`. Each rule/filter row carries its own `id` used by the delete endpoints. Sibling ops: `getScrubIpsList`, `enableScrub`, `disableScrub`, `createRule`, `scrubIpsDeleteRule`, `createGeoRule`, `scrubIpsDeleteGeoRule`, `createFilter`, `deleteFilter`, `getScrubIpInvoices`, `getScrubIpLogs`, `cancelScrubIp`.  **Path:** `id` (integer, required) — service ID from `getScrubIpsList`.  **Body / query:** None.  **Returns:** object with `serviceInfo`, `billingDetails`, `client_links`, `filter_firewall` (`rules` / `geo_rules` / `filters`).  **Auth:** Session/API key. Ownership enforced via `scrub_ips_custid`.  **Errors:** - `401` — unauthenticated. - `Invalid Service` — `id` is not owned by the session account.  **Caveat:** rule/filter IDs are regenerated after recreate — re-fetch before calling a delete endpoint.  **Related calls:** - **Mutations:** `enableScrub`, `disableScrub`, `createRule`, `createGeoRule`, `createFilter`. - **Deletes:** `scrubIpsDeleteRule`, `scrubIpsDeleteGeoRule`, `deleteFilter`. - **Billing / activity:** `getScrubIpInvoices`, `getScrubIpLogs`. - **Cancel:** `cancelScrubIp`. 

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)


# Invoke an endpoint
api.get_scrub_ip_details(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_scrub_ip_details", response)
		assert(response.data is getScrubIpDetails_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_scrub_ip_filter_types**   { #get_scrub_ip_filter_types }
<a name="get_scrub_ip_filter_types"></a>

> `get_scrub_ip_filter_types( on_success: Callable, on_failure: Callable)`

List enabled traffic filter profiles available for createFilter

Returns the catalog of scrub filter profiles (e.g. dns, http, synproxy) currently enabled on the scrubbing platform, keyed by filter_name with a humanized display `name` and `desc`. Call this to populate a dropdown before invoking createFilter — the `filter_type` field on that endpoint must be one of the keys returned here. Not service-scoped: no path/query/body parameters and the same set applies to every Scrub IP. Returns {success: true, filters: {<filter_name>: {name, desc}, ...}}. Errors: 401 unauthenticated. Caveat: only filters with enabled=1 are returned; profile semantics are platform-defined (synproxy uses different request shape internally). Siblings: createFilter, deleteFilter, getScrubIpDetails.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)


# Invoke an endpoint
api.get_scrub_ip_filter_types(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_scrub_ip_filter_types", response)
		assert(response.data is ScrubIpFilterTypes)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_scrub_ip_invoices**   { #get_scrub_ip_invoices }
<a name="get_scrub_ip_invoices"></a>

> `get_scrub_ip_invoices(id: int, on_success: Callable, on_failure: Callable)`

List recurring and one-time invoices billed for this Scrub IP service

Returns the recurring and one-time invoices generated for the Scrub IP service so the caller can verify billing status, present a payment history, or initiate payment on an unpaid invoice. Use after placeScrubOrder (to find the new invoice id) or before cancelScrubIp (to surface outstanding balance). Path param: `id` (integer, required) — service ID from getScrubIpsList. No body/query parameters. Returns ChargeInvoiceRows (array of invoice objects with id, amount, status, due dates). Errors: 401 unauthenticated; empty result if id is not owned by the session account. Caveat: paid invoices remain in history; filter on status client-side. Siblings: getScrubIpDetails, placeScrubOrder, cancelScrubIp.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)


# Invoke an endpoint
api.get_scrub_ip_invoices(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_scrub_ip_invoices", response)
		assert(response.data is ChargeInvoiceRows)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_scrub_ip_logs**   { #get_scrub_ip_logs }
<a name="get_scrub_ip_logs"></a>

> `get_scrub_ip_logs(id: String, on_success: Callable, on_failure: Callable)`

Get last 50000 packet/event log entries for the protected IP

Pulls scrubbing telemetry directly from the SCRUBLOGS clickhouse-style backend: timestamp, source IP, target IP, target port, protocol (ICMP/IGMP/TCP/UDP/etc.), byte_count, action (Allow/Drop/Challenge), and the matching filter label. Use for incident analysis, validating new firewall rules, or proving a DDoS attack hit the scrubber. Path param: `id` (string, required) — service ID. No body/query parameters. Timestamps are converted to the customer's timezone. Returns array of log rows (ScrubIpsLogRowSchema), most recent first, capped at 50000. Errors: 401 unauthenticated; returns false if id is not owned or upstream returns no data — not a 404. Caveat: large response; logs are not real-time and source IPs are reverse-byte-ordered. Siblings: getScrubIpDetails, enableScrub, createRule.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)


# Invoke an endpoint
api.get_scrub_ip_logs(
	# id: String = ""   Eg: 413232  
	# Scrub Order ID
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_scrub_ip_logs", response)
		assert(response.data is ScrubIpsLogRowSchema)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_scrub_ips_list**   { #get_scrub_ips_list }
<a name="get_scrub_ips_list"></a>

> `get_scrub_ips_list( on_success: Callable, on_failure: Callable)`

List all Scrub IP DDoS protection services on the authenticated account

Returns every Scrub IP service belonging to the authenticated customer with status, protected IP, plan name, and recurring cost. Use this for dashboards, picking a service ID for downstream calls (getScrubIpDetails, enableScrub, createRule, getScrubIpLogs), or auditing which IPs are routed through DDoS scrubbing. No path/query/body parameters; service ownership is enforced via session account_id. Returns an array of {id, repeat_invoices_cost, ip, status, services_name}; empty array if no scrub services. Errors: 401 unauthenticated. Caveat: only customer-owned services are visible. Siblings: getScrubIpDetails, getOrderDetail, placeScrubOrder, cancelScrubIp.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)


# Invoke an endpoint
api.get_scrub_ips_list(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_scrub_ips_list", response)
		assert(response.data is ScrubIpsRowSchema)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **place_scrub_order**   { #place_scrub_order }
<a name="place_scrub_order"></a>

> `place_scrub_order(scrubIpPlaceOrder: ScrubIpPlaceOrder, on_success: Callable, on_failure: Callable)`

Place a new Scrub IP DDoS protection order and generate an invoice

Commits the order: re-runs validate_buy_scrub_ip then place_buy_scrub_ip which creates the service row, repeat_invoice, and a one-time invoice for the prorated charge. Use putScrubIps first to surface errors without billing. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id), `ip` (eligible IP from getOrderDetail). Returns 201 {success: true, text: 'ScrubIp order is placed.', order_details: {total_cost, service_id, invoice_id, invoice_description, cj_params}}. Errors: 400 {success: false, text: 'Unable to place order.', errors: []} on validation; 401 unauthenticated; 422 on invalid serviceType/ip; 409 if the IP is already protected. Caveat: invoice is unpaid at creation — pay via Pay endpoints to activate. Siblings: putScrubIps, getOrderDetail, enableScrub, getScrubIpInvoices.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)

var scrubIpPlaceOrder = ScrubIpPlaceOrder.new()
# … fill model scrubIpPlaceOrder with data

# Invoke an endpoint
api.place_scrub_order(
	# scrubIpPlaceOrder: ScrubIpPlaceOrder
	scrubIpPlaceOrder,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "place_scrub_order", response)
		assert(response.data is placeScrubOrder_201_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **put_scrub_ips**   { #put_scrub_ips }
<a name="put_scrub_ips"></a>

> `put_scrub_ips(scrubIpPlaceOrder: ScrubIpPlaceOrder, on_success: Callable, on_failure: Callable)`

Validate a Scrub IP order and return effective pricing without billing

Dry-runs a Scrub IP purchase via validate_buy_scrub_ip and returns whether the order would succeed plus the resolved pricing — without creating an invoice. Use to render a real-time price/error panel as the user picks options. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id from getOrderDetail.serviceTypes), `ip` (one of getOrderDetail.ips), optional `coupon`. Returns {continue: bool, errors: [], serviceType, serviceCost, originalCost, repeatServiceCost}. Errors: 401 unauthenticated; validation failures appear in `errors`, not as HTTP 4xx. Caveat: idempotent — call as often as needed; 422 on invalid coupon surfaces in the errors array. Siblings: getOrderDetail, placeScrubOrder, getScrubIpsList.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)

var scrubIpPlaceOrder = ScrubIpPlaceOrder.new()
# … fill model scrubIpPlaceOrder with data

# Invoke an endpoint
api.put_scrub_ips(
	# scrubIpPlaceOrder: ScrubIpPlaceOrder
	scrubIpPlaceOrder,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "put_scrub_ips", response)
		assert(response.data is putScrubIps_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **scrub_ips_delete_geo_rule**   { #scrub_ips_delete_geo_rule }
<a name="scrub_ips_delete_geo_rule"></a>

> `scrub_ips_delete_geo_rule(id: int,deleteGeoFirewallRule: DeleteGeoFirewallRule, on_success: Callable, on_failure: Callable)`

Delete a geo firewall rule by rule_id from getScrubIpDetails

Removes a previously created geographic firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.geo_rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'Rule Id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::geoFirewallDelete fails. Caveat: removing a country/ASN block re-admits that traffic. Siblings: createGeoRule, scrubIpsDeleteRule, deleteFilter, getScrubIpDetails.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)

var deleteGeoFirewallRule = DeleteGeoFirewallRule.new()
# … fill model deleteGeoFirewallRule with data

# Invoke an endpoint
api.scrub_ips_delete_geo_rule(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# deleteGeoFirewallRule: DeleteGeoFirewallRule
	deleteGeoFirewallRule,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "scrub_ips_delete_geo_rule", response)
		assert(response.data is scrubIpsDeleteRule_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **scrub_ips_delete_rule**   { #scrub_ips_delete_rule }
<a name="scrub_ips_delete_rule"></a>

> `scrub_ips_delete_rule(id: int,deleteFirewallRule: DeleteFirewallRule, on_success: Callable, on_failure: Callable)`

Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails

Removes a previously created L3/L4 firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'rule_id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::firewallDelete fails. Caveat: if the rule was the only protection against a specific source, deleting it re-exposes the IP. Siblings: createRule, scrubIpsDeleteGeoRule, deleteFilter, getScrubIpDetails.

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
var api = ScrubIpsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ScrubIpsApi.new(config, client)

var deleteFirewallRule = DeleteFirewallRule.new()
# … fill model deleteFirewallRule with data

# Invoke an endpoint
api.scrub_ips_delete_rule(
	# id: int   Eg: 56
	# ScrubIp ID number
	id,
	# deleteFirewallRule: DeleteFirewallRule
	deleteFirewallRule,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "scrub_ips_delete_rule", response)
		assert(response.data is scrubIpsDeleteRule_200_response)
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


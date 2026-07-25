<a name="__pageTop"></a>
# ServersApi   { #ServersApi }


All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_server**](#add_server) | **POST** `/servers/order` | Place a custom dedicated server order, creating a real billable invoice
[**buy_it_now_server_order**](#buy_it_now_server_order) | **GET** `/servers/order/buy_now_server` | Get configurable options for a Rapid Deploy / coupon dedicated server
[**get_mp_servers**](#get_mp_servers) | **GET** `/buy_now_servers_list` | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
[**get_new_server**](#get_new_server) | **GET** `/servers/order` | Get custom dedicated server ordering options, regions, and pricing
[**get_server_info**](#get_server_info) | **GET** `/servers/{id}` | Get full hardware, network, and lifecycle details for a dedicated server
[**get_server_invoices**](#get_server_invoices) | **GET** `/servers/{id}/invoices` | List billing invoices (charges + payments) tied to one dedicated server
[**get_server_list**](#get_server_list) | **GET** `/servers` | List all dedicated servers owned by the authenticated customer
[**get_server_reverse_dns**](#get_server_reverse_dns) | **GET** `/servers/{id}/reverse_dns` | List current reverse-DNS (PTR) records for a dedicated server&#x27;s IPs
[**get_servers_welcome_email**](#get_servers_welcome_email) | **GET** `/servers/{id}/welcome_email` | Resend the dedicated server welcome email with setup credentials
[**place_buy_now_server**](#place_buy_now_server) | **POST** `/servers/order/buy_now_server` | Place a Rapid Deploy / coupon dedicated server order; creates real invoice
[**post_server_reverse_dns**](#post_server_reverse_dns) | **POST** `/servers/{id}/reverse_dns` | Update reverse-DNS (PTR) hostnames on a dedicated server&#x27;s IPs
[**server_bulk_ipmi_power_get**](#server_bulk_ipmi_power_get) | **GET** `/servers/bulk/ipmi_power` | Read IPMI chassis power status for many dedicated servers in one call
[**server_ipmi_live_get**](#server_ipmi_live_get) | **GET** `/servers/{id}/ipmi_live` | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
[**server_ipmi_live_post**](#server_ipmi_live_post) | **POST** `/servers/{id}/ipmi_live` | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
[**server_ipmi_power_get**](#server_ipmi_power_get) | **GET** `/servers/{id}/ipmi_power` | Read IPMI chassis power status for a dedicated server (single)
[**server_ipmi_power_post**](#server_ipmi_power_post) | **POST** `/servers/{id}/ipmi_power` | DESTRUCTIVE — change chassis power state on a bare-metal server
[**servers_cancel**](#servers_cancel) | **DELETE** `/servers/{id}` | Cancel a dedicated server service at the end of the current billing cycle
[**update_server_info**](#update_server_info) | **POST** `/servers/{id}` | Update settings on a dedicated server order (shares handler with view)

# **add_server**   { #add_server }
<a name="add_server"></a>

> `add_server(serverOrderPostRequest: ServerOrderPostRequest, on_success: Callable, on_failure: Callable)`

Place a custom dedicated server order, creating a real billable invoice

Submits a fully custom dedicated server order. Creates a `pending` `servers` row, a `Repeat_Invoice`, and the first invoice, then emails customer + admin. Caveat: real billable order — confirm with the user first. Body (form fields): `cpu` (id from `cpu_li`), `hd[]` (array of drive ids), `memory`, `bandwidth`, `ips`, `os`, `cp`, `raid` (ids from `getNewServer`), `region` (region_id), `servername` (valid hostname), `rootpass`, `tos` (must be true), optional `comment`. `account.server_order_discount` (if set) applies. Returns: `{ text:'Order Completed', invoice, order }`. Errors: 422 'Missing/Invalid <field>'; 401 unauth. Sibling ops: `getNewServer` (options), `placeBuyNowServer` (pre-built path), `getServerInfo` (view new order), `getServerInvoices`.

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)

var serverOrderPostRequest = ServerOrderPostRequest.new()
# … fill model serverOrderPostRequest with data

# Invoke an endpoint
api.add_server(
	# serverOrderPostRequest: ServerOrderPostRequest
	serverOrderPostRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "add_server", response)
		assert(response.data is addServer_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **buy_it_now_server_order**   { #buy_it_now_server_order }
<a name="buy_it_now_server_order"></a>

> `buy_it_now_server_order( on_success: Callable, on_failure: Callable)`

Get configurable options for a Rapid Deploy / coupon dedicated server

Step 1 of the Rapid Deploy / coupon dedicated server order flow. Returns options + pricing for either a marketplace asset (`a=<asset_id>`) or a coupon (`c=<coupon_name>`) so the order form can be rendered before `placeBuyNowServer`. Read-only; no charge. Sibling ops: `placeBuyNowServer` (commit), `getMPServers` (browse marketplace), `addServer` (custom build flow).  **Query (one required):** - `a` (integer) — asset_id from `getMPServers`. - `c` (string) — `server_coupons.name`.  **Returns:** `{ bandwidth[], ips[], os[], cp[], raid[], regions[], a?: {asset + items}, c?: {coupon + region} }`. Each option row is `{ id, short_desc, long_desc, monthly_price }` — feed those ids into `placeBuyNowServer`.  **Auth:** Session/API key.  **Errors:** - `400` — `'No Server Coupon or Market-Place Asset Specified'` when neither `a` nor `c` is passed. - `400` — `'Invalid Asset ID'` / `'No Server Coupon with that name'`. - `409` — `'Server already sold!'` (asset already in-cart) or `'Server Out of stock'` (coupon). - `401` — unauthenticated.  **Related calls:** - **Next:** `placeBuyNowServer` (commit the order). - **Browse:** `getMPServers`. - **Custom build alternative:** `addServer`. 

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.buy_it_now_server_order(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "buy_it_now_server_order", response)
		assert(response.data is buyItNowServerOrder_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_mp_servers**   { #get_mp_servers }
<a name="get_mp_servers"></a>

> `get_mp_servers( on_success: Callable, on_failure: Callable)`

List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing

Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`. Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired. Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.get_mp_servers(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_mp_servers", response)
		assert(response.data is BuyItNowList)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_new_server**   { #get_new_server }
<a name="get_new_server"></a>

> `get_new_server( on_success: Callable, on_failure: Callable)`

Get custom dedicated server ordering options, regions, and pricing

Use before placing a fully custom (non-Rapid-Deploy) dedicated server order to discover available CPUs, drives, memory tiers, OS images, control panels, RAID levels, bandwidth packages, IP blocks, and regions with monthly prices. No params, no body. Returns: object with `config_li` keyed by category (`cpu_li`, `hd_li`, `memory_li`, `bandwidth_li`, `ips_li`, `os_li`, `cp_li`, `raid_li`) plus `regions`. Use returned IDs as POST values for `addServer`. Note `hd_li` and `memory_li` are nested by `cpu` id — the chosen CPU constrains valid drive/memory options. Errors: 401 if not authenticated. Sibling ops: `addServer` (commits the order), `buyItNowServerOrder` (pre-built marketplace alternative), `getMPServers` (browse marketplace).

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.get_new_server(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_new_server", response)
		assert(response.data is ServerOrder)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_server_info**   { #get_server_info }
<a name="get_server_info"></a>

> `get_server_info(id: int, on_success: Callable, on_failure: Callable)`

Get full hardware, network, and lifecycle details for a dedicated server

Use to fetch complete configuration for one dedicated server — hardware, network/VLAN/IP layout, asset assignments, location, status, billing references, and client action links. Path param: `id` (integer server_id, from `getServerList`). No body. Returns: `ViewServer::getDetails()` shape: `serviceInfo`, `networkInfo` (vlans + assets, with `ipmi_admin_username`/`ipmi_admin_password` and admin lease creds REDACTED for client safety), normalized `client_links`, `serviceType`. `admin_links`/raw `settings`/`csrf` stripped. Errors: 404 not owned; 401 unauth. Sibling ops: `getServerInvoices`, `serverIpmiLiveGet`, `serverIpmiPowerGet` (single — prefer `serverBulkIpmiPowerGet` for many), `getServerReverseDns`, `getServersWelcomeEmail`, `serversCancel`.

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.get_server_info(
	# id: int   Eg: 56
	# Server ID number.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_server_info", response)
		assert(response.data is Server)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_server_invoices**   { #get_server_invoices }
<a name="get_server_invoices"></a>

> `get_server_invoices(id: int, on_success: Callable, on_failure: Callable)`

List billing invoices (charges + payments) tied to one dedicated server

Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: `id` (integer server_id from `getServerList`). No body. Inherits from `MyAdmin\\Api\\Billing\\InvoicesList` with module=servers. Returns: `ChargeInvoiceRows` array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if `id` not owned by the caller; 401 unauth. Sibling ops: `getServerInfo` (current service state), `serversCancel` (cancel), `getBillingInvoice` (single invoice by invoice id), `getVpsInvoices`/`getDomainInvoices` for other modules, `getServersWelcomeEmail` to resend setup info.

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.get_server_invoices(
	# id: int   Eg: 56
	# Server ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_server_invoices", response)
		assert(response.data is ChargeInvoiceRows)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_server_list**   { #get_server_list }
<a name="get_server_list"></a>

> `get_server_list( on_success: Callable, on_failure: Callable)`

List all dedicated servers owned by the authenticated customer

Use to enumerate physical bare-metal dedicated servers on the calling account. No params, no body. Filters `servers` by session `account_id`. Returns: array of `{ server_id, account_lid, server_hostname, server_status }`. Use `server_id` with `getServerInfo` for full hardware/network/IPMI details, `getServerInvoices` for billing, or `serverIpmiPowerGet` for chassis power state. Errors: 401 if not authenticated; empty array if account owns no servers. Sibling ops: `getServerInfo` (details), `getVpsList` (virtual instead of physical hardware), `getMPServers` (purchasable inventory, not owned). For IPMI status across many servers in one call, prefer `serverBulkIpmiPowerGet`.

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.get_server_list(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_server_list", response)
		assert(response.data is ServerRow)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_server_reverse_dns**   { #get_server_reverse_dns }
<a name="get_server_reverse_dns"></a>

> `get_server_reverse_dns(id: int, on_success: Callable, on_failure: Callable)`

List current reverse-DNS (PTR) records for a dedicated server's IPs

Use to read the existing PTR/rDNS hostnames assigned to each public IP in the server's VLANs — typically before calling `postServerReverseDns` to update them. Path param: `id` (integer server_id). No body. Walks `networkInfo.vlans`, expands each network to usable host IPs (handles /31 and /32 edge cases), and resolves each via `get_hostname()`. Returns: `{ ips: { '<ipv4>': '<ptr_or_empty_string>', ... } }`. Empty string indicates no PTR set. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: `postServerReverseDns` (update PTRs), `getServerInfo` (full network), `getVpsReverseDns` for VPS, `getDomainNameservers` / DNS endpoints for forward records. Note rDNS propagation is delegated to the in-addr.arpa zone — changes are not always instant.

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.get_server_reverse_dns(
	# id: int   Eg: 56
	# Server ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_server_reverse_dns", response)
		assert(response.data is ReverseDnsEntries)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_servers_welcome_email**   { #get_servers_welcome_email }
<a name="get_servers_welcome_email"></a>

> `get_servers_welcome_email(id: int, on_success: Callable, on_failure: Callable)`

Resend the dedicated server welcome email with setup credentials

Use when the customer asks for the original setup/login info to be re-sent (root password, IPs, control-panel URL). Path param: `id` (integer server_id, must be `active`). No body. Invokes `server_welcome_email($id)` which re-sends the welcome message to the account's email. Returns: `{ text:'Welcome Email has been resent.' }`. Errors: 404 if `id` not owned by caller; 409 if service not active (cancelled/pending/suspended); 401 unauth. Caveat: re-sending is rate-sensitive; do not call repeatedly in a loop. The email may contain root credentials — confirm intent before triggering. Sibling ops: `getServerInfo` (status check), `getServerInvoices`, `getVpsWelcomeEmail` for VPS, `getDomainsWelcomeEmail` for domains.

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.get_servers_welcome_email(
	# id: int   Eg: 56
	# Server ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_servers_welcome_email", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **place_buy_now_server**   { #place_buy_now_server }
<a name="place_buy_now_server"></a>

> `place_buy_now_server(placeBuyNowServerRequest = null, on_success: Callable, on_failure: Callable)`

Place a Rapid Deploy / coupon dedicated server order; creates real invoice

Step 2 of the Rapid Deploy / coupon order flow. Commits a marketplace asset OR coupon-based dedicated server order. Inserts the `servers` row, creates a `Repeat_Invoice` plus the first `invoices` row, marks the asset `MarketPlace-Incart` (or decrements `server_coupons.in_stock`), then emails customer + admin. **Real billable order — confirm intent first.** Sibling ops: `buyItNowServerOrder` (catalog), `getServerInfo` (poll provisioning), `getServerInvoices` (billing), `addServer` (custom build alternative).  **Query (one required, same as `buyItNowServerOrder`):** - `a` (integer) — asset_id. - `c` (string) — `server_coupons.name`.  **Body fields:** - `hostname` (string, required) — valid FQDN; validated by `valid_hostname`. - `enablepassword` (boolean, optional, default `false`) — when true the client must supply `rootPassword`; otherwise a secure password is generated server-side via `generate_password()`. - `rootPassword` (string, required when `enablepassword=true`) — must be ≥8 chars with at least one uppercase, lowercase, digit, and special character (`valid_password`). - `os`, `bandwidth`, `ips`, `cp`, `raid` (integer, optional) — option ids from `buyItNowServerOrder`; defaults `30` / `10` / `9` / `1` / `0` applied when missing. - `comments` (string, optional) — appended to the order comment.  **Returns:** `201 { success: true, text: 'Server order is placed.', service_id, invoice_id }`.  **Auth:** Session/API key.  **Errors:** - `400` — `'Server Hostname is missing.'` / `'Invalid Hostname!'` / `'Server Password is missing.'` / password complexity message. - `409` — `'Server already sold!'` / `'Server Out of stock.'` - `401` — unauthenticated.  **Side effects:** inserts `servers` row, creates `repeat_invoices` + `invoices` rows, updates `assets.status` or `server_coupons.in_stock`, queues admin + customer welcome emails.  **Related calls:** - **Prerequisite:** `buyItNowServerOrder`. - **Next:** `getBillingInvoice` + `initiatePayment` to pay, then poll `getServerInfo` for provisioning state. - **Custom build alternative:** `addServer`. 

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)

var placeBuyNowServerRequest = PlaceBuyNowServerRequest.new()
# … fill model placeBuyNowServerRequest with data

# Invoke an endpoint
api.place_buy_now_server(
	# placeBuyNowServerRequest: PlaceBuyNowServerRequest
	placeBuyNowServerRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "place_buy_now_server", response)
		assert(response.data is ServersBuyNowResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_server_reverse_dns**   { #post_server_reverse_dns }
<a name="post_server_reverse_dns"></a>

> `post_server_reverse_dns(id: int,reverseDnsEntries: ReverseDnsEntries, on_success: Callable, on_failure: Callable)`

Update reverse-DNS (PTR) hostnames on a dedicated server's IPs

Use to set or remove PTR records for the server's public IPs. Path param: `id` (server_id). Body: `ips` (object mapping `'<ipv4>'` to desired hostname; empty string removes the PTR). Only IPs that already exist on the server's VLANs and whose hostname differs from current are updated; each diff calls `reverse_dns($ip, $host, 'set_reverse'|'remove_reverse')`. Returns: `{ message, success:bool }`. `success:false` with 'No valid IPs were passed or there were no changes' when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream. Sibling ops: `getServerReverseDns` (read first), `getServerInfo`, VPS counterpart `postVpsReverseDns`.

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)

var reverseDnsEntries = ReverseDnsEntries.new()
# … fill model reverseDnsEntries with data

# Invoke an endpoint
api.post_server_reverse_dns(
	# id: int   Eg: 56
	# Server ID number
	id,
	# reverseDnsEntries: ReverseDnsEntries
	reverseDnsEntries,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "post_server_reverse_dns", response)
		assert(response.data is TextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **server_bulk_ipmi_power_get**   { #server_bulk_ipmi_power_get }
<a name="server_bulk_ipmi_power_get"></a>

> `server_bulk_ipmi_power_get(ids: String, on_success: Callable, on_failure: Callable)`

Read IPMI chassis power status for many dedicated servers in one call

Use when you need power status for several owned servers at once (dashboards, mass health checks). Each server is queried independently; per-server failures (invalid id, inactive service, no asset, BMC error) are reported in the same response without aborting the batch. Read-only — does NOT change power state. Query: `ids` (required) — comma-separated string `?ids=2313,2314,2315` OR repeated `ids[]` array. Duplicates de-duped; non-positive ints become per-row errors. Returns: `{ results: [ { id, asset?, text|error } ] }`. Errors: 400 'No server IDs provided.' if `ids` empty/missing; 401 unauth. Sibling ops: `serverIpmiPowerGet` (single-server equivalent), `serverIpmiPowerPost` (DESTRUCTIVE — change power; no bulk equivalent — call per server), `getServerList` (discover ids).

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.server_bulk_ipmi_power_get(
	# ids: String = ""   Eg: 2313,2314,2315
	# Comma-separated list of Server IDs to query (e.g. `2313,2314,2315`). May also be passed as repeated `ids[]` query parameters.
	ids,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "server_bulk_ipmi_power_get", response)
		assert(response.data is ServerBulkIpmiPowerResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **server_ipmi_live_get**   { #server_ipmi_live_get }
<a name="server_ipmi_live_get"></a>

> `server_ipmi_live_get(id: int, on_success: Callable, on_failure: Callable)`

Read current IPMI Live whitelist + KVM gateway URL for a dedicated server

Reads the active IPMI Live session for a dedicated server — the temporary whitelisted public IP, the customer-side IPMI gateway URL, and the IPMI client (read-only) credentials so the customer can open the KVM/console. Looks up the asset's IPMI IP, the location's IPMI group, and any active `ipmi_ips` lease (3-hour TTL). Sibling ops: `serverIpmiLivePost` (allocate whitelist slot), `serverIpmiPowerGet` / `serverIpmiPowerPost` (chassis power).  **Path:** `id` (integer, required) — server_id from `getServerList`.  **Body / query:** None. Optionally pass `asset` (asset_id) to target a specific asset; default is first asset.  **Returns:** when an active lease exists `{ text (html), public_ip, allowed_ip, client_username, client_password }`. When no lease yet: `{ text: 'Setup not yet completed' }` — then call `serverIpmiLivePost` to allocate a slot.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'` when the asset/location is not configured for IPMI Live.  **Caveat:** returns `client_password` — never log/echo verbatim.  **Related calls:** - **Allocate:** `serverIpmiLivePost`. - **Chassis power:** `serverIpmiPowerGet`, `serverIpmiPowerPost`. 

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.server_ipmi_live_get(
	# id: int   Eg: 56
	# Server ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "server_ipmi_live_get", response)
		assert(response.data is ServerIpmiLiveInfo)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **server_ipmi_live_post**   { #server_ipmi_live_post }
<a name="server_ipmi_live_post"></a>

> `server_ipmi_live_post(id: int,some_ipnull: String,asset = null, on_success: Callable, on_failure: Callable)`

Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)

Allocates / refreshes an IPMI Live whitelist slot so the customer's specified IP can reach the BMC's KVM/console for 3 hours. Picks a free `ipmi_ips` row for the location's `ipmi_group`, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via `ipmi_live_setup()`. Sibling ops: `serverIpmiLiveGet` (read current lease), `serverIpmiPowerPost` (DESTRUCTIVE — chassis power).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `ip` (string, required) — public IPv4 to whitelist. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text (html), public_ip, allowed_ip, client_username, client_password }` for KVM login.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'An Invalid IP was passed.'`, `'No Live IPs are currently free for use with the IPMI Gateway. Please wait <duration> for the next IP to free up.'`, `'There was an error communicating with the IPMI Management server'`, `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'`.  **Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.  **Related calls:** - **Read current lease:** `serverIpmiLiveGet`. - **Power control:** `serverIpmiPowerPost`. 

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.server_ipmi_live_post(
	# id: int   Eg: 56
	# Server ID number
	id,
	# some_ipnull: String = ""   Eg: some_ipnull_example
	# Your IP Address you wish to connect to the IPMI system from.
	some_ipnull,
	# asset: int   Eg: 56
	# Asset ID
	asset,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "server_ipmi_live_post", response)
		assert(response.data is ServerIpmiLiveInfo)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **server_ipmi_power_get**   { #server_ipmi_power_get }
<a name="server_ipmi_power_get"></a>

> `server_ipmi_power_get(id: int, on_success: Callable, on_failure: Callable)`

Read IPMI chassis power status for a dedicated server (single)

Use to check whether a server's chassis is currently `on`/`off` via IPMI before issuing a power action. Path param: `id` (integer server_id). Optional body `asset` (asset_id — defaults to first asset). Issues `ipmitool power status` against the asset's `ipmi_ip` using its location IPMI group/credentials. Returns: `{ text:'Chassis Power is on' }` (or 'off'). Errors: 404 if `id` not owned by caller; 409 if service not active; 'There was an error sending the IPMI command' if BMC unreachable. Caveat: BMCs occasionally rate-limit — back off on repeated errors. Sibling ops: `serverBulkIpmiPowerGet` (preferred when polling many servers — single round-trip), `serverIpmiPowerPost` (DESTRUCTIVE — change power), `getServerInfo` (full state), `serverIpmiLiveGet` (IPMI Live KVM).

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.server_ipmi_power_get(
	# id: int   Eg: 56
	# Server ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "server_ipmi_power_get", response)
		assert(response.data is TextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **server_ipmi_power_post**   { #server_ipmi_power_post }
<a name="server_ipmi_power_post"></a>

> `server_ipmi_power_post(id: int,action: String,asset = null, on_success: Callable, on_failure: Callable)`

DESTRUCTIVE — change chassis power state on a bare-metal server

Sends an IPMI chassis power command (`on`, `off`, `cycle`, `reset`, `soft`) to a customer's physical dedicated server. **DESTRUCTIVE on running hardware:** `off` / `cycle` / `reset` are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. `soft` requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: `serverIpmiPowerGet` (read first), `serverBulkIpmiPowerGet` (status only), `serverIpmiLivePost` (KVM access).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `action` (string, required) — one of `on` / `off` / `cycle` / `reset` / `soft`. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text: 'Power command sent. Response: <ipmi output>' }`.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `422` / inline error text — `Invalid Action` when `action` is not in the allowed set. - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'There was an error sending the IPMI command.'` when BMC is unreachable or rate-limiting.  **Related calls:** - **Status (single / bulk):** `serverIpmiPowerGet`, `serverBulkIpmiPowerGet`. - **KVM console:** `serverIpmiLivePost`. 

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.server_ipmi_power_post(
	# id: int   Eg: 56
	# Server ID number
	id,
	# action: String = ""   Eg: action_example
	# The power action to send to the ipmi controller.
	action,
	# asset: int   Eg: 56
	# The Asset ID
	asset,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "server_ipmi_power_post", response)
		assert(response.data is TextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **servers_cancel**   { #servers_cancel }
<a name="servers_cancel"></a>

> `servers_cancel(id: int, on_success: Callable, on_failure: Callable)`

Cancel a dedicated server service at the end of the current billing cycle

Submits a cancellation request for a dedicated server. The server is deprovisioned and recurring billing stops at the end of the current billing cycle (not an immediate refund). Path param: `id` (integer server_id, from `getServerList`). No body. Caveat: billing-affecting action — always confirm with the user. Hardware-attached data may be wiped on deprovisioning. Returns: `{ success:bool, text:'Servers is canceled.' }`. Errors: 404 if `id` not owned by caller; 409 if already cancelled or non-active; 401 unauth. Sibling ops: `getServerInfo` (current status), `getServerInvoices` (outstanding charges), VPS counterpart `VPSCancel`. To re-order after cancel use `addServer` or `placeBuyNowServer`.

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.servers_cancel(
	# id: int   Eg: 56
	# Server ID number
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "servers_cancel", response)
		assert(response.data is serversCancel_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_server_info**   { #update_server_info }
<a name="update_server_info"></a>

> `update_server_info(id: String, on_success: Callable, on_failure: Callable)`

Update settings on a dedicated server order (shares handler with view)

Use to modify metadata on an existing dedicated server order. Path param: `id` (integer server_id). Currently this method shares the same handler as `getServerInfo` (`View::go()`) — no dedicated update fields are processed; treat it as deprecated/no-op pending field-specific endpoints. For hostname, password, or rDNS changes use the dedicated ops below. Returns: same payload shape as `getServerInfo`. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: prefer `postServerReverseDns` (rDNS), `serverIpmiPowerPost` (power), `serverIpmiLivePost` (IPMI access), `serversCancel` (cancel). For new orders use `addServer` or `placeBuyNowServer`. View-only: `getServerInfo`.

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
var api = ServersApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ServersApi.new(config, client)


# Invoke an endpoint
api.update_server_info(
	# id: String = ""   Eg: id_example
	# Server ID number.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_server_info", response)
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


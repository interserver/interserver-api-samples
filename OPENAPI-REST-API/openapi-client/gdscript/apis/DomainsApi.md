<a name="__pageTop"></a>
# DomainsApi   { #DomainsApi }


All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_domain**](#add_domain) | **POST** `/domains/order` | Place a new domain registration or transfer order, generate billing invoice
[**add_domain_dnssec**](#add_domain_dnssec) | **POST** `/domains/{id}/dnssec` | Register DNSSEC DS records on the domain at OpenSRS
[**add_domain_nameserver**](#add_domain_nameserver) | **POST** `/domains/{id}/nameservers` | Register a new nameserver host with glue IP at the registry (registered nameserver)
[**cancel_domain**](#cancel_domain) | **DELETE** `/domains/{id}` | Cancel a domain order in the billing system to stop auto-renewals
[**delete_domain_dnssec**](#delete_domain_dnssec) | **DELETE** `/domains/{id}/dnssec` | Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
[**delete_domain_nameserver**](#delete_domain_nameserver) | **DELETE** `/domains/{id}/nameservers` | Remove one registered nameserver glue record from the domain
[**get_domain_contact**](#get_domain_contact) | **GET** `/domains/{id}/contact` | Read the current registrant/admin/tech/billing contact field set for a domain
[**get_domain_dnssec**](#get_domain_dnssec) | **GET** `/domains/{id}/dnssec` | Read the DNSSEC DS record set currently registered with the registrar
[**get_domain_info**](#get_domain_info) | **GET** `/domains/{id}` | Read full billing, registrar, and service detail for one domain
[**get_domain_invoices**](#get_domain_invoices) | **GET** `/domains/{id}/invoices` | List all billing invoices scoped to one domain order
[**get_domain_lookup**](#get_domain_lookup) | **GET** `/domains/lookup/{name}` | Check availability, premium status, and pricing for a specific domain
[**get_domain_nameservers**](#get_domain_nameservers) | **GET** `/domains/{id}/nameservers` | List registered nameserver hosts and glue IP addresses for a domain
[**get_domain_renewal**](#get_domain_renewal) | **GET** `/domains/{id}/renew` | Read renewal pricing, expiry, and whether a renewal invoice already exists
[**get_domain_search**](#get_domain_search) | **GET** `/domains/search/{name}` | Get registrar-suggested domain alternatives and bulk availability for a search term
[**get_domain_transfer**](#get_domain_transfer) | **GET** `/domains/{id}/transfer` | Read OpenSRS transfer status for an in-progress domain transfer order
[**get_domain_whois_privacy**](#get_domain_whois_privacy) | **GET** `/domains/{id}/whois` | Read Whois privacy availability, current state, and add-on pricing for a domain
[**get_domains_list**](#get_domains_list) | **GET** `/domains` | List every domain registration on the account with billing and registration metadata
[**get_domains_welcome_email**](#get_domains_welcome_email) | **GET** `/domains/{id}/welcome_email` | Resend the domain welcome email with registration details and management instructions
[**get_new_domain**](#get_new_domain) | **GET** `/domains/order` | Read the buyable domain TLD service catalog and Whois privacy pricing
[**patch_domains**](#patch_domains) | **PATCH** `/domains/order` | Validate posted domain-order field values before committing — dry run
[**post_domain_renewal**](#post_domain_renewal) | **POST** `/domains/{id}/renew` | Submit a domain renewal request and generate the renewal invoice
[**post_domain_search**](#post_domain_search) | **POST** `/domains/search/{name}` | Get the full order form data for a hostname in one round-trip (search → order preview)
[**post_domain_transfer**](#post_domain_transfer) | **POST** `/domains/{id}/transfer` | Re-poll OpenSRS transfer status for a domain order via POST
[**put_domains**](#put_domains) | **PUT** `/domains/order` | Preview per-TLD field requirements for a domain order — no commit
[**update_domain_contact**](#update_domain_contact) | **POST** `/domains/{id}/contact` | Update registrant/admin contact details and push them to OpenSRS
[**update_domain_info**](#update_domain_info) | **POST** `/domains/{id}` | POST mutation hook for the domain detail page (use dedicated ops where possible)
[**update_domain_nameservers**](#update_domain_nameservers) | **PUT** `/domains/{id}/nameservers` | Replace the full authoritative-nameserver delegation list at the registrar
[**update_domain_whois_privacy**](#update_domain_whois_privacy) | **POST** `/domains/{id}/whois` | Order, enable, or cancel the Whois privacy add-on for a domain

# **add_domain**   { #add_domain }
<a name="add_domain"></a>

> `add_domain(domainOrderRequest: DomainOrderRequest, on_success: Callable, on_failure: Callable)`

Place a new domain registration or transfer order, generate billing invoice

Places a new domain registration or transfer order. Resolves the TLD to a `services_id`, runs `validate_buy_domain()` (hostname, TLD service, fields, coupon, whois-privacy add-on), then calls `place_buy_domain()` to create the `Repeat_Invoice` recurring billing row, generate the initial `invoices` row, and (when `whois_privacy=enable`) an additional add-on `Repeat_Invoice` for privacy. **Real money** — call `putDomains` then `patchDomains` first to preview and validate. Sibling ops: `getDomainLookup`, `getNewDomain`, `putDomains`, `patchDomains`, `initiatePayment`.  **Body fields (JSON or form):** - `hostname` (string, required) — FQDN to register or transfer. - `type` (string, optional, default `register`) — `register` or `transfer`. - `whois_privacy` (string, optional) — `enable` to add the privacy add-on (separate recurring invoice). - `coupon` (string, optional) — coupon code. - All per-TLD contact/registration fields from `putDomains.domainFields` (registrant contact details, TLD-specific fields like nexus codes, EPP `auth_info` for transfers, etc.).  **Returns** (schema `ServiceOrderPostResponse`): `{total_cost, iid, iids, real_iids, serviceid (new domain_id), invoice_description, cj_params, payUrl}` — pass `real_iids` to `initiatePayment` to fund the order.  **Side effects:** - Inserts `domains` service row in `pending` status. - Inserts `repeat_invoices` row for recurring renewal. - Inserts `invoices` row for the first-period charge. - When `whois_privacy=enable`: inserts a separate add-on `repeat_invoices` row + its initial invoice. - For transfers: stores `auth_info` and marks `service_extra` as `transfer`.  **Auth:** Session/API key.  **Errors:** - `400 Missing hostname parameter`. - `400 Unable to determine service type for this domain TLD.`. - `401` — unauthenticated. - `422` — validation failure (e.g. coupon invalid, required TLD field missing, hostname not registerable). Response body is the combined `errors` array from `validate_buy_domain()`.  **Related calls:** - **Prerequisites:** `getDomainLookup` → `getNewDomain` → `putDomains` → `patchDomains`. - **Pay:** `initiatePayment` with `real_iids`. - **Verify activation:** `getDomainInfo` (poll for `domain_status='active'`). - **Track in-progress transfer:** `getDomainTransfer`. - **For pending transfers needing EPP/auth_info:** `updateDomainContact` (set `auth_info`).  **Example happy path (register):** ```text GET /apiv2/domains/lookup/example.com           -> available, pricing, fields PUT /apiv2/domains/order { hostname, type }     -> domainFields PATCH /apiv2/domains/order { hostname, ...fields } -> \"success\" POST /apiv2/domains/order { hostname, type, ...fields } -> { serviceid, real_iids } GET /apiv2/billing/pay/cc/{real_iids[0]}        -> pay GET /apiv2/domains/{serviceid}                  -> poll until domain_status==\"active\" ``` 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)

var domainOrderRequest = DomainOrderRequest.new()
# … fill model domainOrderRequest with data

# Invoke an endpoint
api.add_domain(
	# domainOrderRequest: DomainOrderRequest
	domainOrderRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "add_domain", response)
		assert(response.data is ServiceOrderPostResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **add_domain_dnssec**   { #add_domain_dnssec }
<a name="add_domain_dnssec"></a>

> `add_domain_dnssec(id: int,domainDnssecRequest: DomainDnssecRequest, on_success: Callable, on_failure: Callable)`

Register DNSSEC DS records on the domain at OpenSRS

Registers one or more DNSSEC DS records at the registrar. Body uses parallel arrays indexed per record. **Propagation caveat:** DNSSEC publication is asynchronous at the registry — a 200 here does not guarantee the records have propagated; re-call `getDomainDnssec` to verify. **Sets, not adds:** this replaces the full DS record set in one transaction; to remove all DS records use `deleteDomainDnssec`. Sibling ops: `getDomainDnssec`, `deleteDomainDnssec`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, parallel arrays — `algorithm[0]` pairs with `key_tag[0]`, etc., schema `DomainDnssecRequest`):** - `algorithm[]` (integer) — DNSKEY algorithm (e.g. 8 = RSASHA256, 13 = ECDSAP256SHA256). - `key_tag[]` (integer) — must be < 65536. - `digest_type[]` (integer) — `1` (SHA-1, 40 hex chars), `2` (SHA-256, 64), `3` (GOST, 64), `4` (SHA-384, 96). - `digest[]` (string) — hex digest; length must match `digest_type[i]`.  **Returns:** `SuccessTextResponse` on registrar confirmation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"` or registrar refused. - `422` — `key_tag >= 65536` or digest length mismatch.  **Related calls:** - **Verify propagation:** `getDomainDnssec`. - **Clear all records:** `deleteDomainDnssec`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)

var domainDnssecRequest = DomainDnssecRequest.new()
# … fill model domainDnssecRequest with data

# Invoke an endpoint
api.add_domain_dnssec(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# domainDnssecRequest: DomainDnssecRequest
	domainDnssecRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "add_domain_dnssec", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **add_domain_nameserver**   { #add_domain_nameserver }
<a name="add_domain_nameserver"></a>

> `add_domain_nameserver(id: int,domainNameserverPostRequest: DomainNameserverPostRequest, on_success: Callable, on_failure: Callable)`

Register a new nameserver host with glue IP at the registry (registered nameserver)

Adds a registered nameserver (host + glue IP) for the domain at the registrar via `opensrs_create_nameserver`. Use when running your own authoritative nameservers under the domain itself (e.g. `ns1.example.com`, `ns2.example.com`). **Glue records, not delegation:** this registers the host's IP at the registry; the domain's delegation must separately point at these names via `updateDomainNameservers`. Sibling ops: `getDomainNameservers`, `updateDomainNameservers`, `deleteDomainNameserver`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (schema `DomainNameserverPostRequest`):** - `name` (string, required) — FQDN of the nameserver (e.g. `ns1.example.com`). Validated by `valid_hostname()`. - `ipAddress` (string, required) — IPv4 address. Validated by `validIp()`.  **Returns:** `SuccessTextResponse` on success.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `422` — invalid hostname or IP, or registrar refused.  **Related calls:** - **Verify glue record:** `getDomainNameservers`. - **Use this nameserver in delegation:** `updateDomainNameservers`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)

var domainNameserverPostRequest = DomainNameserverPostRequest.new()
# … fill model domainNameserverPostRequest with data

# Invoke an endpoint
api.add_domain_nameserver(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# domainNameserverPostRequest: DomainNameserverPostRequest
	domainNameserverPostRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "add_domain_nameserver", response)
		assert(response.data is TextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **cancel_domain**   { #cancel_domain }
<a name="cancel_domain"></a>

> `cancel_domain(id: int, on_success: Callable, on_failure: Callable)`

Cancel a domain order in the billing system to stop auto-renewals

Stops billing and auto-renewal for a domain in the customer account by setting the service to `canceled` via the shared `Billing\\CancelService::go($id)` flow with `module='domains'`. **Important:** this only stops billing on InterServer's side — the domain registration at the registrar (OpenSRS) typically remains active until its current expiration date. To release the domain back to the public pool, let it expire OR submit a release request via support ticket. Sibling ops: `getDomainInfo` (verify status), `getDomainsList`, `postDomainRenewal` (re-activate before expiry).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** `DomainsCancelResponse` — confirmation envelope.  **Side effects:** - Sets `domain_status='canceled'`. - Marks the `repeat_invoices` row non-renewing — no future renewal invoices generated. - Does **not** call the registrar — the registration remains active at OpenSRS until natural expiry.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — already canceled.  **Related calls:** - **Re-activate before expiry:** `postDomainRenewal`. - **Verify status:** `getDomainInfo`. - **Sibling cancels on other modules:** `VPSCancel`, `mailCancel`, `webhostingCancel`, etc. (same `CancelService` handler). 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.cancel_domain(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "cancel_domain", response)
		assert(response.data is CancelDomain_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delete_domain_dnssec**   { #delete_domain_dnssec }
<a name="delete_domain_dnssec"></a>

> `delete_domain_dnssec(id: int, on_success: Callable, on_failure: Callable)`

Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)

Disables DNSSEC at the registrar by removing the entire DS record set in one call. **Propagation caveat:** DNSSEC removal can fail at the registry even after a 200 response — propagation is asynchronous; re-check with `getDomainDnssec` to confirm. To remove records selectively, replace the set via `addDomainDnssec` instead. Sibling ops: `getDomainDnssec`, `addDomainDnssec`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** None — removes the full DS record set.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - Registrar error surfaced as 4xx.  **Related calls:** - **Verify propagation:** `getDomainDnssec`. - **Replace records selectively:** `addDomainDnssec`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.delete_domain_dnssec(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_domain_dnssec", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delete_domain_nameserver**   { #delete_domain_nameserver }
<a name="delete_domain_nameserver"></a>

> `delete_domain_nameserver(id: int,index: int, on_success: Callable, on_failure: Callable)`

Remove one registered nameserver glue record from the domain

Removes a single registered nameserver entry from the domain at the registrar. Handler first calls OpenSRS `nsGet` to resolve the entry by index, then `nsDelete`. Per-entry — to replace the full delegation set use `updateDomainNameservers` instead. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `updateDomainNameservers`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Query params:** - `index` (integer, required) — zero-based index from `getDomainNameservers` array — or alternatively pass `name` + `ip` to target by value.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `422` — `index` out of range or `name`/`ip` not provided. - Registrar errors surfaced as 4xx.  **Related calls:** - **List candidates:** `getDomainNameservers`. - **Replace delegation entirely:** `updateDomainNameservers`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.delete_domain_nameserver(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# index: int   Eg: 56
	# The index of the registered nameserver from the registered nameservers list to delete.  
	index,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_domain_nameserver", response)
		assert(response.data is TextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_contact**   { #get_domain_contact }
<a name="get_domain_contact"></a>

> `get_domain_contact(id: int, on_success: Callable, on_failure: Callable)`

Read the current registrant/admin/tech/billing contact field set for a domain

Returns the current contact field set (registrant/admin/tech/billing) with current values for the domain — schema and values mirror what was set at registration. For pending transfer services, the response also includes a `transfer` selector and the EPP `auth_info` code so the client can resubmit. Read-only. Sibling ops: `updateDomainContact` (push changes to OpenSRS), `getDomainInfo`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `DomainContactDetails`): - `firstname`, `lastname`, `email`. - `address`, `address2`, `address3`, `city`, `state`, `zip`, `country`. - `phone`, `fax` (E.164 format expected). - `company` (optional). - `auth_info` (string) — EPP/transfer code (present on transfer services). - `transfer` (string `yes`/`no`) — selector for pending transfer services.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Update:** `updateDomainContact`. - **Transfer status:** `getDomainTransfer`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_contact(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_contact", response)
		assert(response.data is DomainContactDetails)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_dnssec**   { #get_domain_dnssec }
<a name="get_domain_dnssec"></a>

> `get_domain_dnssec(id: int, on_success: Callable, on_failure: Callable)`

Read the DNSSEC DS record set currently registered with the registrar

Returns the DNSSEC DS record set currently registered for the domain at OpenSRS. Empty array means DNSSEC is not configured. Use to mirror existing settings or as a baseline before `addDomainDnssec` (which replaces the set). Sibling ops: `addDomainDnssec`, `deleteDomainDnssec`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `DomainDnssecRecords`): - `records` (array) — DS entries:   - `algorithm` (integer) — DNSKEY algorithm (e.g. 8 for RSASHA256, 13 for ECDSAP256SHA256).   - `key_tag` (integer, < 65536).   - `digest_type` (integer) — `1` (SHA-1), `2` (SHA-256), `3` (GOST), `4` (SHA-384).   - `digest` (string, hex) — length depends on `digest_type`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`.  **Related calls:** - **Replace records:** `addDomainDnssec`. - **Clear all records:** `deleteDomainDnssec`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_dnssec(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_dnssec", response)
		assert(response.data is DomainDnssecRecords)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_info**   { #get_domain_info }
<a name="get_domain_info"></a>

> `get_domain_info(id: int, on_success: Callable, on_failure: Callable)`

Read full billing, registrar, and service detail for one domain

Returns the full `ViewDomain` payload for one domain — billing summary, registration status, lock state, expiry date, contact summary, and `client_links` for related dashboard actions. Read-only. Internal `admin_links`, `settings`, `csrf` are stripped before return. Use to render a domain detail page, verify ownership before mutating, or poll `domain_status` after `addDomain`. Sibling ops: `getDomainContact`, `getDomainNameservers`, `getDomainDnssec`, `getDomainWhoisPrivacy`, `getDomainInvoices`, `updateDomainInfo`, `CancelDomain`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `Domain`): - `serviceInfo` — `domain_id`, `domain_hostname`, `domain_status`, `domain_expire_date`, lock state, registrar metadata. - `serviceType` — TLD service row. - `client_links` (array) — `{name, link, icon}` for renew/transfer/contact/DNSSEC/whois-privacy actions. URLs pre-resolved.  **Auth:** Session/API key. Ownership enforced via `domain_custid`.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Contact:** `getDomainContact` / `updateDomainContact`. - **Nameservers:** `getDomainNameservers` / `updateDomainNameservers`. - **DNSSEC:** `getDomainDnssec` / `addDomainDnssec` / `deleteDomainDnssec`. - **Whois privacy:** `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`. - **Billing:** `getDomainInvoices`, `getDomainRenewal` / `postDomainRenewal`. - **Transfer status:** `getDomainTransfer`. - **Cancel:** `CancelDomain`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_info(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_info", response)
		assert(response.data is Domain)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_invoices**   { #get_domain_invoices }
<a name="get_domain_invoices"></a>

> `get_domain_invoices(id: int, on_success: Callable, on_failure: Callable)`

List all billing invoices scoped to one domain order

Returns the billing history for one domain — initial registration/transfer invoice, recurring renewal invoices, Whois privacy add-on invoices. Extends `Billing\\InvoicesList::go()` with `module='domains'`. Use to render a per-domain billing-history view or find an unpaid renewal/privacy invoice to pass to `initiatePayment`. Sibling ops: `getDomainInfo`, `postDomainRenewal`, `updateDomainWhoisPrivacy`, `initiatePayment`, `getBillingInvoice`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** `ChargeInvoiceRows` — array of `{id, amount, paid, description, date, due_date, currency, module: \"domains\", service: <id>}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service` — `id` not owned by caller.  **Related calls:** - **Pay an unpaid invoice:** `initiatePayment`. - **Renew:** `postDomainRenewal`. - **Account-wide history:** `getBillingInvoices`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_invoices(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_invoices", response)
		assert(response.data is ChargeInvoiceRows)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_lookup**   { #get_domain_lookup }
<a name="get_domain_lookup"></a>

> `get_domain_lookup(name: String, on_success: Callable, on_failure: Callable)`

Check availability, premium status, and pricing for a specific domain

Looks up a single FQDN against OpenSRS: returns availability, premium-name flag, current new/renewal/transfer prices, per-TLD order field metadata, and multi-currency quotes. **Public** endpoint — no auth required (rate-limited via `domainlookup` cache). Repeated lookups within a short window may return cached results from the `domainlookup` table. Use as step 1 of an order: discover availability and pricing, then call `addDomain` to commit. Sibling ops: `getDomainSearch` (suggestions), `getNewDomain` (catalog), `addDomain`, `postDomainSearch`.  **Path param:** - `name` (string, required) — full FQDN (e.g. `example.com`).  **Returns** (schema `DomainLookupResponse`): - `available` (bool) — registerable now. - `premium` (bool) — premium-name pricing (often > $100). - `website` (bool) — same hostname is already a webhosting service on this account. - `domain_service` (bool) — same hostname is already a domain on this account. - `service` (object) — `services_id`, `services_name`, `services_cost`, `services_field1` (TLD), `services_module`. - `whois_privacy` (bool) — privacy add-on available for this TLD. - `new`, `renewal`, `transfer` (float) — base USD prices (with profit markup). - `fields` (object) — per-TLD order form schema (labels, options, current account values). - `currencies` (object) — `{<code>: {services_cost, new, renewal, transfer}}` converted to each enabled currency.  **Auth:** Public (no auth required).  **Errors:** - `422 Invalid Domain` — `valid_domain()` rejected input.  **Related calls:** - **Brainstorm alternatives:** `getDomainSearch`. - **Place order:** `addDomain` with the resolved `service.services_id` and `fields`. - **TLD catalog:** `getNewDomain`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_lookup(
	# name: String = ""   Eg: name_example
	# The full domain name to look up (for example `example.com`).
	name,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_lookup", response)
		assert(response.data is DomainLookupResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_nameservers**   { #get_domain_nameservers }
<a name="get_domain_nameservers"></a>

> `get_domain_nameservers(id: int, on_success: Callable, on_failure: Callable)`

List registered nameserver hosts and glue IP addresses for a domain

Returns the registered-nameserver / glue-record entries currently set for the domain at OpenSRS. **Important distinction:** these are *registered nameservers* (`host.example.com` + glue IP records the registrant has created at the registry), NOT the domain's delegation NS records. To replace the delegation set, use `updateDomainNameservers`. Empty array means no glue records are registered. Sibling ops: `addDomainNameserver`, `updateDomainNameservers`, `deleteDomainNameserver`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `DomainNameserverGetResponse`): - Array of `{name, ipaddress, sortorder}` — use the zero-based array index when calling `deleteDomainNameserver` with `index`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `5xx` — registrar communication failure.  **Related calls:** - **Add glue record:** `addDomainNameserver`. - **Replace delegation set:** `updateDomainNameservers`. - **Remove glue record:** `deleteDomainNameserver`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_nameservers(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_nameservers", response)
		assert(response.data is DomainNameserverGetResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_renewal**   { #get_domain_renewal }
<a name="get_domain_renewal"></a>

> `get_domain_renewal(id: int, on_success: Callable, on_failure: Callable)`

Read renewal pricing, expiry, and whether a renewal invoice already exists

Returns renewal pricing, current expiry, Whois privacy availability, and whether an unpaid renewal invoice already exists for the domain. Use before triggering `postDomainRenewal` to render a renewal form and prevent duplicate invoices. Costs are converted to the customer's preferred currency. Sibling ops: `postDomainRenewal`, `getDomainInvoices`, `getDomainInfo`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** - `renewCost` (float) — renewal cost in `currency`. - `whoisCost` (float) — Whois privacy renewal cost. - `whoisAvailable` (bool) — privacy supported on this TLD. - `currency` (string), `currencySymbol` (string). - `expiryDate` (string). - `alreadyInvoiced` (bool) — a renewal `Repeat_Invoice` already produced an invoice. - `invoicePaid` (bool) — whether that invoice is paid. - `tld` (string).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `4xx` — renewal not available for this TLD.  **Related calls:** - **Submit renewal:** `postDomainRenewal`. - **Pay existing renewal invoice:** `getDomainInvoices` → `initiatePayment`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_renewal(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_renewal", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_search**   { #get_domain_search }
<a name="get_domain_search"></a>

> `get_domain_search(name: String, on_success: Callable, on_failure: Callable)`

Get registrar-suggested domain alternatives and bulk availability for a search term

Returns registrar-suggested alternatives plus bulk availability data from OpenSRS for the supplied search term. Useful when a customer is brainstorming names. Pair with `getDomainLookup` to get full pricing and per-TLD order fields for any specific chosen result. Sibling ops: `postDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.  **Path param:** - `name` (string, required) — search term (e.g. `example` or `example.com`).  **Returns** (schema `DomainSearchResponse`): - `success` (bool) — registrar call succeeded. - `response_text` (string) — registrar response message. - `response_time` (float) — registrar latency (seconds). - `lookup` (array) — exact-match availability across the searched TLD set. - `suggest` (array) — registrar's recommended alternative names with availability. - `tlds` (array) — TLDs queried.  **Auth:** Public.  **Errors:** - `422 Invalid Search Response!` — registrar returned no usable results.  **Related calls:** - **Single-domain detail:** `getDomainLookup`. - **One-shot order preview from a search term:** `postDomainSearch`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_search(
	# name: String = ""   Eg: name_example
	# The base domain name to search (for example `example` or `example.com`).
	name,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_search", response)
		assert(response.data is DomainSearchResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_transfer**   { #get_domain_transfer }
<a name="get_domain_transfer"></a>

> `get_domain_transfer(id: int, on_success: Callable, on_failure: Callable)`

Read OpenSRS transfer status for an in-progress domain transfer order

Returns the OpenSRS transfer state for a domain order flagged as a transfer in `service_extra`. Use to poll an in-progress transfer; `pending_owner` means the customer must click the approval link in the email sent by OpenSRS to the registrant. Sibling ops: `postDomainTransfer` (re-poll), `getDomainContact` (set `auth_info`), `addDomain` (initiate new transfer).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** - When not a transfer: `{transfer: false, message: \"...\"}`. - When a transfer: `{transfer: true, info: {status, statusText, type, transferrable, reason}}` where `status` is one of:   - `pending` — submitted to OpenSRS, awaiting state change.   - `pending_owner` — **customer action required** (approve the OpenSRS email).   - `pending_admin` — InterServer staff review.   - `pending_registry` — registry processing.   - `declined` — transfer rejected (see `reason`).   - `completed` — transfer landed.   - `undef` — unknown.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - Registrar communication failures returned as errors.  **Related calls:** - **Re-poll:** `postDomainTransfer`. - **Update auth_info:** `updateDomainContact`. - **Initiate new transfer:** `addDomain` with `type=transfer`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_transfer(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_transfer", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domain_whois_privacy**   { #get_domain_whois_privacy }
<a name="get_domain_whois_privacy"></a>

> `get_domain_whois_privacy(id: int, on_success: Callable, on_failure: Callable)`

Read Whois privacy availability, current state, and add-on pricing for a domain

Returns Whois privacy state for the domain — whether the TLD supports privacy, whether it's currently enabled at OpenSRS, and the add-on cost. Some TLDs (e.g. `.us`, `.uk`, country-code variants) do not allow privacy regardless of pricing. Sibling op: `updateDomainWhoisPrivacy` (order/enable/disable).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** - `available` (bool) — privacy supported for this TLD (via `get_domain_tld_whois_privacy()`). - `cost` (float) — annual privacy cost in `currency`. - `currency` (string), `currencySymbol` (string). - `whoisPrivacy` (string enum) — `enabled` / `disabled` (live OpenSRS state). - `repeatInvoice` (object|null) — current privacy add-on `Repeat_Invoice` row, if one exists.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Order/enable/disable:** `updateDomainWhoisPrivacy`. - **Billing:** `getDomainInvoices`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domain_whois_privacy(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domain_whois_privacy", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domains_list**   { #get_domains_list }
<a name="get_domains_list"></a>

> `get_domains_list( on_success: Callable, on_failure: Callable)`

List every domain registration on the account with billing and registration metadata

Enumerates every domain registration owned by the authenticated customer — hostname, expiry, recurring cost, status. The canonical entry point for finding a `domain_id` to pass into other Domains endpoints. Empty array means the account has no domains (not an error). Sibling ops: `getDomainInfo`, `getNewDomain`, `getDomainLookup`, `addDomain`, `CancelDomain`.  **Path/Query/Body:** None.  **Returns:** Array of `DomainRow`: - `domain_id` (string) — canonical id; pass to every `/domains/{id}/*` endpoint. - `domain_hostname` (string) — registered FQDN. - `domain_expire_date` (string ISO 8601 or empty) — registry expiry; empty when not yet activated or unknown. - `cost` (decimal string) — recurring renewal cost in the domain's billing currency. - `domain_status` (string enum) — `pending` / `active` / `expired` / `canceled` / `pending-transfer`.  **Auth:** Session/API key. Filtered by `domain_custid`.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-domain detail:** `getDomainInfo`. - **Manage:** `getDomainContact` / `updateDomainContact`, `getDomainNameservers` / `updateDomainNameservers`, `getDomainDnssec` / `addDomainDnssec`, `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`. - **Renew / transfer:** `getDomainRenewal` / `postDomainRenewal`, `getDomainTransfer`. - **Order a new domain:** `getDomainLookup` → `getNewDomain` → `addDomain`. - **Cancel:** `CancelDomain`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domains_list(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domains_list", response)
		assert(response.data is DomainRow)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_domains_welcome_email**   { #get_domains_welcome_email }
<a name="get_domains_welcome_email"></a>

> `get_domains_welcome_email(id: int, on_success: Callable, on_failure: Callable)`

Resend the domain welcome email with registration details and management instructions

Resends the domain welcome email (registration details, management instructions, EPP code where applicable) to the customer's address on file. Idempotent — safe to call multiple times. Sibling welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getMailWelcomeEmail`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** None.  **Returns:** `{text: \"Welcome Email has been resent.\"}`.  **Side effects:** - Sends an email to the account's billing email address.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service Passed` — `id` not owned by caller. - `409 Service is not active` — `domain_status != \"active\"`.  **Related calls:** - **Domain detail:** `getDomainInfo`. - **Contact info:** `getDomainContact`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_domains_welcome_email(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_domains_welcome_email", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_new_domain**   { #get_new_domain }
<a name="get_new_domain"></a>

> `get_new_domain( on_success: Callable, on_failure: Callable)`

Read the buyable domain TLD service catalog and Whois privacy pricing

Returns the catalog of buyable TLD services and the base Whois-privacy add-on pricing. Use to resolve a hostname's TLD to a `service_id` for ordering, or to render a TLD picker. Pair with `getDomainLookup` for per-domain pricing and `addDomain` to commit. Sibling ops: `getDomainLookup`, `putDomains`, `patchDomains`, `addDomain`.  **Path/Query/Body:** None.  **Returns** (schema `DomainOrder`): - `whoisPrivacyCost` (float) — base per-year privacy cost (`OPENSRS_PRIVACY_COST` constant). - `whoisPrivacyCostTotal` (object) — privacy cost per TLD multiplied by that TLD's term length: `{<tld>: <total-cost>}`. - `services` (object) — `{<services_id>: {services_name, services_cost, services_field1 (tld), ...}}`. `services_ourcost` is stripped. - `tldServices` (object) — TLD → `services_id` lookup map (e.g. `{\"com\": 100, \"net\": 101, \"io\": 234}`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-domain pricing:** `getDomainLookup`. - **Preview order fields:** `putDomains`. - **Validate fields:** `patchDomains`. - **Place order:** `addDomain`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.get_new_domain(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_new_domain", response)
		assert(response.data is DomainOrder)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **patch_domains**   { #patch_domains }
<a name="patch_domains"></a>

> `patch_domains(domainOrderRequest: DomainOrderRequest, on_success: Callable, on_failure: Callable)`

Validate posted domain-order field values before committing — dry run

Validates posted contact/registration field values via `validate_domain_fields()`. Enforces per-TLD requirements (nexus codes, postal formats, registrant org rules, EPP `auth_info` syntax for transfers, etc.). Use as the last step before `addDomain` to surface form errors cheaply. No commit — no invoice, no service record. Sibling ops: `putDomains`, `addDomain`, `getDomainLookup`, `getNewDomain`.  **Body fields:** - `hostname` (string, required). - `type` (string, optional, default `register`) — `register` or `transfer`. - All per-TLD fields from `putDomains.domainFields`.  **Returns:** `\"success\"` (string) when all fields validate; otherwise an `errors` object describing the failing fields and per-field validation messages.  **Auth:** Session/API key.  **Errors:** - `400 Missing hostname parameter`. - `400 Unable to determine service type for this domain TLD.`. - `401` — unauthenticated. - Validation error object — fields-level failures.  **Related calls:** - **Schema:** `putDomains` (returns the field set to validate). - **Commit:** `addDomain`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)

var domainOrderRequest = DomainOrderRequest.new()
# … fill model domainOrderRequest with data

# Invoke an endpoint
api.patch_domains(
	# domainOrderRequest: DomainOrderRequest
	domainOrderRequest,
	# On Success
	func(response):
		prints("Success!", "patch_domains", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_domain_renewal**   { #post_domain_renewal }
<a name="post_domain_renewal"></a>

> `post_domain_renewal(id: int, on_success: Callable, on_failure: Callable)`

Submit a domain renewal request and generate the renewal invoice

Generates a renewal invoice for the domain (and optionally the Whois privacy add-on). Updates the domain's `Repeat_Invoice` cost/frequency/currency to the current price, then calls `Repeat_Invoice::invoice()` to produce a fresh invoice. **Real money.** If a prior unpaid renewal invoice already exists, returns an error directing the user to pay that one instead — prevents double-billing. Renewal is not supported for some TLDs. Sibling ops: `getDomainRenewal`, `getDomainInvoices`, `initiatePayment`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields:** - `whois_privacy` (string, optional) — `enable` to add or keep the privacy add-on; otherwise the existing privacy `Repeat_Invoice` is marked `deleted=1` on renewal.  **Returns:** `{text, invoices, invoiceIds, payUrl}` — pass `invoiceIds` to `initiatePayment` to settle.  **Side effects:** - Updates `repeat_invoices` cost/frequency/currency. - Inserts a new `invoices` row for the renewal period. - When `whois_privacy=enable`: extends the privacy add-on `repeat_invoices` and creates its renewal invoice. - When `whois_privacy` not enabled: marks the existing privacy `repeat_invoices` row `deleted=1`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`, or unpaid renewal invoice already exists, or already-paid renewal exists. - Registrar errors surfaced as 4xx.  **Related calls:** - **Preview:** `getDomainRenewal`. - **Pay:** `initiatePayment` with the returned `invoiceIds`. - **Cancel auto-renew:** `CancelDomain`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.post_domain_renewal(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "post_domain_renewal", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_domain_search**   { #post_domain_search }
<a name="post_domain_search"></a>

> `post_domain_search(name: String, on_success: Callable, on_failure: Callable)`

Get the full order form data for a hostname in one round-trip (search → order preview)

Returns the complete order-form payload — pricing, service catalog entry, per-TLD order fields — for the hostname in a single POST. Equivalent to calling `getDomainLookup` + `getNewDomain` + `putDomains` and merging the results, but with one round-trip. The path `name` is moved server-side into `$_POST['hostname']` and passed to `getOrderDomainData(true)`. Sibling ops: `getDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.  **Path param:** - `name` (string, required) — hostname (e.g. `example.com`).  **Body:** None.  **Returns:** Combined order-data response — pricing, service catalog entry, form fields ready to populate for `addDomain`.  **Auth:** Session/API key (path is `client_api`, but called publicly).  **Errors:** - `4xx` — hostname cannot be resolved to a TLD service.  **Related calls:** - **Place order:** `addDomain` with the returned fields. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.post_domain_search(
	# name: String = ""   Eg: name_example
	# The base domain name to search (for example `example` or `example.com`).
	name,
	# On Success
	func(response):
		prints("Success!", "post_domain_search", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_domain_transfer**   { #post_domain_transfer }
<a name="post_domain_transfer"></a>

> `post_domain_transfer(id: int, on_success: Callable, on_failure: Callable)`

Re-poll OpenSRS transfer status for a domain order via POST

Re-polls OpenSRS transfer state. Behaves identically to `getDomainTransfer` (same `go()` handler) — provided so dashboards can refresh via a form-action pattern. **This endpoint does not initiate transfers** — to start a transfer, use `addDomain` with `type=transfer`. Sibling ops: `getDomainTransfer`, `addDomain` (initiate), `getDomainContact` (set `auth_info`).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** None.  **Returns:** Same payload as `getDomainTransfer`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`.  **Related calls:** - **Read:** `getDomainTransfer`. - **Initiate new transfer:** `addDomain` with `type=transfer`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.post_domain_transfer(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "post_domain_transfer", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **put_domains**   { #put_domains }
<a name="put_domains"></a>

> `put_domains(domainOrderRequest: DomainOrderRequest, on_success: Callable, on_failure: Callable)`

Preview per-TLD field requirements for a domain order — no commit

Pre-flight that returns the per-TLD field schema required to register or transfer the supplied hostname. The schema varies significantly by TLD: `.us` requires nexus codes, `.ca` requires CIRA legal type, `.eu` has residency rules, `.fr` requires VAT for orgs, etc. Values pre-populate from the account profile when possible. No commit — use `patchDomains` to validate filled values, then `addDomain` to place the order. Sibling ops: `getNewDomain`, `getDomainLookup`, `patchDomains`, `addDomain`.  **Body fields:** - `hostname` (string, required) — FQDN. - `type` (string, optional, default `register`) — `register` or `transfer`. - `coupon` (string, optional) — coupon code.  **Returns:** `{domainFields: {<field_name>: {label, type, options, value, required, ...}}}` — schema for the dynamic order form.  **Auth:** Session/API key.  **Errors:** - `400 Missing hostname parameter`. - `400 Unable to determine service type for this domain TLD.` — unknown TLD. - `401` — unauthenticated.  **Related calls:** - **Catalog first:** `getNewDomain`. - **Validate filled values:** `patchDomains`. - **Place order:** `addDomain`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)

var domainOrderRequest = DomainOrderRequest.new()
# … fill model domainOrderRequest with data

# Invoke an endpoint
api.put_domains(
	# domainOrderRequest: DomainOrderRequest
	domainOrderRequest,
	# On Success
	func(response):
		prints("Success!", "put_domains", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_domain_contact**   { #update_domain_contact }
<a name="update_domain_contact"></a>

> `update_domain_contact(id: int,domainContactDetails: DomainContactDetails, on_success: Callable, on_failure: Callable)`

Update registrant/admin contact details and push them to OpenSRS

Pushes updated contact data to the registrar via OpenSRS `provModify`, applied to admin/tech/billing/owner contact roles via `also_apply_to`. Active services apply changes immediately at the registrar; pending services may trigger `queue_process_payment` when the order is paid. **Domain must not be locked** — locked domains return an error directing the user to unlock first. **Note:** registrant-name changes on some TLDs (e.g. `.com`, `.net`) require a 60-day transfer lock per ICANN rules. Sibling ops: `getDomainContact`, `getDomainInfo`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, schema `DomainContactDetails`):** Same fields returned by `getDomainContact`: `firstname`, `lastname`, `email`, `address`/`2`/`3`, `city`, `state`, `zip`, `country`, `phone`, `fax`, `company`, optional `auth_info`, optional `transfer`.  **Returns:** `SuccessTextResponse`.  **Side effects:** - Calls OpenSRS `provModify` with `also_apply_to=admin,tech,billing,owner`. - May trigger ICANN 60-day transfer lock for registrant-name changes on legacy TLDs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — domain is locked (unlock first). - Registrar error (e.g. OpenSRS error code 465 / 466) surfaced as 4xx.  **Related calls:** - **Read first:** `getDomainContact`. - **Transfer status:** `getDomainTransfer`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)

var domainContactDetails = DomainContactDetails.new()
# … fill model domainContactDetails with data

# Invoke an endpoint
api.update_domain_contact(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# domainContactDetails: DomainContactDetails
	domainContactDetails,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_domain_contact", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_domain_info**   { #update_domain_info }
<a name="update_domain_info"></a>

> `update_domain_info(id: int, on_success: Callable, on_failure: Callable)`

POST mutation hook for the domain detail page (use dedicated ops where possible)

Account-level write-back hook for the domain service record. Runs the same `View::go()` handler as `getDomainInfo` — it does NOT push registrar-side changes by itself. **For specific changes use the dedicated endpoints** — they push to OpenSRS where appropriate. Sibling ops: `getDomainInfo`, `updateDomainContact`, `updateDomainNameservers`, `addDomainDnssec`, `updateDomainWhoisPrivacy`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** Form fields matching the domain service record.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Prefer these dedicated endpoints:** - **Registrant/admin contact:** `updateDomainContact` (pushes to OpenSRS). - **Nameservers:** `updateDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`. - **DNSSEC:** `addDomainDnssec`, `deleteDomainDnssec`. - **Whois privacy:** `updateDomainWhoisPrivacy`. - **Renew:** `postDomainRenewal`. - **Cancel:** `CancelDomain`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)


# Invoke an endpoint
api.update_domain_info(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_domain_info", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_domain_nameservers**   { #update_domain_nameservers }
<a name="update_domain_nameservers"></a>

> `update_domain_nameservers(id: int,domainNameserverPutRequest: DomainNameserverPutRequest, on_success: Callable, on_failure: Callable)`

Replace the full authoritative-nameserver delegation list at the registrar

Atomically replaces the domain's authoritative-nameserver delegation list via OpenSRS `nsAdvancedUpdt` with `op_type=assign`. **Domain must be unlocked.** Use this to switch DNS providers (e.g. point at InterServer `cdns1`/`cdns2`, Cloudflare, AWS Route53, etc.). **Replaces the full set in one call** — partial updates are not supported through this endpoint. To register a new glue record (host + IP) at the registry, use `addDomainNameserver`. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`, `addDnsDomain` (host a zone at InterServer).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, schema `DomainNameserverPutRequest`):** - `nameserver[]` (array of strings, required) — FQDN strings (e.g. `[\"ns1.example.com\", \"ns2.example.com\"]`). Trimmed; empty entries dropped server-side.  **Returns:** `SuccessTextResponse` on registrar `is_success=1`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"` or domain locked. - Registrar errors surfaced as 4xx.  **Related calls:** - **Read current set:** `getDomainNameservers`. - **Register a glue record:** `addDomainNameserver`. - **Host the DNS zone at InterServer:** `addDnsDomain` (DNS tag). 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)

var domainNameserverPutRequest = DomainNameserverPutRequest.new()
# … fill model domainNameserverPutRequest with data

# Invoke an endpoint
api.update_domain_nameservers(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# domainNameserverPutRequest: DomainNameserverPutRequest
	domainNameserverPutRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_domain_nameservers", response)
		assert(response.data is TextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_domain_whois_privacy**   { #update_domain_whois_privacy }
<a name="update_domain_whois_privacy"></a>

> `update_domain_whois_privacy(id: int,domainWhoisPrivacyRequest: DomainWhoisPrivacyRequest, on_success: Callable, on_failure: Callable)`

Order, enable, or cancel the Whois privacy add-on for a domain

Manages the Whois privacy add-on. Behavior branches on `action`: - **`order`**: creates an add-on `Repeat_Invoice` and emits the first invoice; pass the returned `payUrl` to the customer or use `initiatePayment` with `invoiceId`. **Real money.** - **`enable`**: activates Whois privacy at OpenSRS — call after the invoice is paid (calls `post_payment_processing_new`). - **`disableCancel`**: disables Whois privacy at OpenSRS and marks the add-on `Repeat_Invoice` `deleted=1`. - **(no action)**: returns current state — same shape as `getDomainWhoisPrivacy`.  Sibling ops: `getDomainWhoisPrivacy`, `getDomainInvoices`, `initiatePayment`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, schema `DomainWhoisPrivacyRequest`):** - `action` (string, optional) — one of `order` / `enable` / `disableCancel`. Omit for status.  **Returns:** (varies by action) - `order`: `{text, invoiceId, repeatInvoiceId, payUrl}`. - `enable` / `disableCancel`: `{text}`. - No action: `{whoisPrivacy, cost, currency, currencySymbol}`.  **Side effects:** - `order`: inserts add-on `repeat_invoices` + `invoices` rows. - `enable`: OpenSRS `provModify` with privacy=on; calls `post_payment_processing_new`. - `disableCancel`: OpenSRS `provModify` with privacy=off; marks add-on `repeat_invoices.deleted=1`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"` or TLD doesn't support privacy. - `4xx` — no add-on found for `enable` / `disableCancel`.  **Related calls:** - **Read state:** `getDomainWhoisPrivacy`. - **Pay the order invoice:** `initiatePayment` (`method=cc|paypal|...`). - **Renew with privacy:** `postDomainRenewal` with `whois_privacy=enable`. 

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
var api = DomainsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DomainsApi.new(config, client)

var domainWhoisPrivacyRequest = DomainWhoisPrivacyRequest.new()
# … fill model domainWhoisPrivacyRequest with data

# Invoke an endpoint
api.update_domain_whois_privacy(
	# id: int   Eg: 56
	# The domain service ID. Use `domain_id` from `GET /domains`.
	id,
	# domainWhoisPrivacyRequest: DomainWhoisPrivacyRequest
	domainWhoisPrivacyRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_domain_whois_privacy", response)
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


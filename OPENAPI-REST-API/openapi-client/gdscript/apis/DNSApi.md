<a name="__pageTop"></a>
# DNSApi   { #DNSApi }


All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_dns_domain**](#add_dns_domain) | **POST** `/dns` | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
[**add_dns_record**](#add_dns_record) | **POST** `/dns/{id}` | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
[**delete_dns_domain**](#delete_dns_domain) | **DELETE** `/dns/{id}` | Permanently delete a DNS zone and every record it contains
[**delete_dns_record**](#delete_dns_record) | **DELETE** `/dns/{domainId}/{recordId}` | Permanently delete one DNS record from a zone — zone itself is preserved
[**get_dns_domain**](#get_dns_domain) | **GET** `/dns/{id}` | List every DNS record in one zone with the IDs needed to edit or delete them
[**get_dns_list**](#get_dns_list) | **GET** `/dns` | List DNS zones hosted on the account with each zone&#x27;s apex A-record IP
[**update_dns_record**](#update_dns_record) | **POST** `/dns/{domainId}/{recordId}` | Replace values on an existing DNS record (name, type, content, ttl, priority)

# **add_dns_domain**   { #add_dns_domain }
<a name="add_dns_domain"></a>

> `add_dns_domain(domain: String,some_ipnull: String, on_success: Callable, on_failure: Callable)`

Create a new authoritative DNS zone seeded with apex A + NS + SOA records

Creates a new authoritative zone in PowerDNS for this account and seeds it with a default record set: apex `A` record pointing at `ip`, `NS` records for InterServer's `cdns1.interserver.net` / `cdns2.interserver.net` anycast resolvers, and an `SOA`. Served immediately by InterServer's nameservers via supermaster propagation. **Important:** this only creates the hosted zone — the customer must still point their registrar's nameservers at `cdns1.interserver.net` / `cdns2.interserver.net` for queries to resolve through this zone (use `updateDomainNameservers` if the domain is registered through InterServer). Sibling ops: `getDnsList`, `getDnsDomain`, `addDnsRecord`, `updateDomainNameservers`.  **Body fields (form or JSON, schema `DnsNewDomain`):** - `domain` (string, required) — FQDN of the zone (e.g. `example.com`). - `ip` (string, required) — IPv4 address for the apex A record.  **Returns:** `SuccessTextResponse` — status text confirming the zone was created.  **Side effects:** - Inserts `domains` row scoped to session `account_id`. - Inserts default `records` rows: apex `A`, two `NS`, one `SOA`.  **Auth:** Session/API key.  **Errors:** - `400` — missing `domain` or `ip`. - `401` — unauthenticated. - `409` — zone already exists.  **Related calls:** - **Find new zone id:** `getDnsList`. - **Add more records:** `addDnsRecord`. - **Update registrar nameservers:** `updateDomainNameservers` (Domains tag).  **Example request:** ```json { \"domain\": \"mydomain.com\", \"ip\": \"203.0.113.42\" } ``` 

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
var api = DNSApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DNSApi.new(config, client)


# Invoke an endpoint
api.add_dns_domain(
	# domain: String = ""   Eg: domain_example
	# The domain name.
	domain,
	# some_ipnull: String = ""   Eg: some_ipnull_example
	# IP Address to point the domain to.
	some_ipnull,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "add_dns_domain", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **add_dns_record**   { #add_dns_record }
<a name="add_dns_record"></a>

> `add_dns_record(id: String,name: String,type: DnsRecordType,content: String,ttl = 86400,prio = 0, on_success: Callable, on_failure: Callable)`

Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone

Adds a single record to the zone identified by path `id`. Type is validated against the global `$rtypes` allowlist (A, AAAA, CNAME, MX, TXT, NS, SRV, CAA, PTR, SPF, TLSA, etc.); content is validated against the record type by `validate_input()`. The record goes live on PowerDNS immediately; resolvers honor the existing TTL on any cached answer. Sibling ops: `getDnsDomain` (find record id afterward), `updateDnsRecord`, `deleteDnsRecord`.  **Path param:** - `id` (integer, required) — zone ID from `getDnsList.id`.  **Body fields (form or JSON, schema `DnsNewRecord`):** - `name` (string, required) — FQDN of the record (must be at or below the zone apex). - `type` (string, required) — `A` / `AAAA` / `CNAME` / `MX` / `TXT` / `NS` / `SRV` / `CAA` / `PTR` / `SPF` / `TLSA` (must be in `$rtypes`). - `content` (string, required) — value matching `type` syntax (IPv4 for A, IPv6 for AAAA, hostname for CNAME/NS/MX, free text for TXT). - `ttl` (integer, optional, default 86400) — seconds. - `prio` (integer, optional, default 0) — priority (MX/SRV only).  **Returns:** `{success: true, text: \"Record added\"}`.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - `401` — unauthenticated. - `Type must be one of: ...` — `type` not in allowlist. - `invalid or missing domain or record id` — zone not found / not owned. - Content-format validation failure (`text` describes the issue).  **Related calls:** - **Find new record id:** `getDnsDomain`. - **Edit later:** `updateDnsRecord`. - **Delete:** `deleteDnsRecord`. 

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
var api = DNSApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DNSApi.new(config, client)


# Invoke an endpoint
api.add_dns_record(
	# id: String = ""   Eg: 472
	# The DNS Domain ID.
	id,
	# name: String = ""   Eg: name_example
	# Name part of record
	name,
	# type: DnsRecordType
	type,
	# content: String = ""   Eg: content_example
	# Content of record
	content,
	# ttl: int = 86400   Eg: 56
	# Time-to-live
	ttl,
	# prio: int = 0   Eg: 56
	# Priority
	prio,
	# On Success
	func(response):
		prints("Success!", "add_dns_record", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delete_dns_domain**   { #delete_dns_domain }
<a name="delete_dns_domain"></a>

> `delete_dns_domain(id: String, on_success: Callable, on_failure: Callable)`

Permanently delete a DNS zone and every record it contains

Removes the zone identified by path `id` AND every record it contains from PowerDNS in a single transaction. **Permanent — no soft-delete, no undo.** Any service relying on these records (web, mail, SPF/DKIM, third-party domain verifications, ACME challenges) will start failing as resolver caches expire (per-record TTL, default 86400s). **Note:** this only deletes the hosted zone on InterServer's nameservers — it does not affect registrar delegation. If `cdns1`/`cdns2` are still delegated at the registrar, queries will return NXDOMAIN/SERVFAIL until delegation is changed or the zone is recreated. Sibling ops: `deleteDnsRecord` (delete one record only), `addDnsDomain` (recreate), `updateDomainNameservers` (change registrar delegation).  **Path param:** - `id` (string, required) — zone ID from `getDnsList`.  **Returns:** `{success: true, text: \"Domain deleted\"}`.  **Side effects:** - Deletes every `records` row with `domain_id={id}`. - Deletes the `domains` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone not found / not owned.  **Related calls:** - **Delete one record only:** `deleteDnsRecord`. - **Recreate the zone:** `addDnsDomain`. - **Update registrar delegation:** `updateDomainNameservers` (Domains tag). 

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
var api = DNSApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DNSApi.new(config, client)


# Invoke an endpoint
api.delete_dns_domain(
	# id: String = ""   Eg: id_example
	# The DNS domain ID to delete. Use the `id` from `GET /dns` to identify the domain.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_dns_domain", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delete_dns_record**   { #delete_dns_record }
<a name="delete_dns_record"></a>

> `delete_dns_record(domainId: int,recordId: int, on_success: Callable, on_failure: Callable)`

Permanently delete one DNS record from a zone — zone itself is preserved

Removes the record identified by `recordId` from zone `domainId`. The zone itself remains intact — only the one record is dropped. **Permanent** — applied to PowerDNS immediately, but resolvers continue to answer with cached values until the previous TTL expires. Use to surgically remove an A/AAAA/MX/TXT etc. record; to drop the entire zone and all its records, use `deleteDnsDomain`. Sibling ops: `getDnsDomain` (verify after deletion), `deleteDnsDomain`, `updateDnsRecord`.  **Path params:** - `domainId` (integer, required) — zone ID from `getDnsList.id`. - `recordId` (integer, required) — record ID from `getDnsDomain.id`.  **Returns:** `{success: true, text: \"domain record deleted\"}`.  **Auth:** Session/API key. Zone ownership enforced via `get_dns_domain($domainId)`.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone/record not found or not owned. - `error removing domain record` — underlying DB delete failed.  **Related calls:** - **Verify after delete:** `getDnsDomain`. - **Recreate:** `addDnsRecord`. - **Delete entire zone instead:** `deleteDnsDomain`. 

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
var api = DNSApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DNSApi.new(config, client)


# Invoke an endpoint
api.delete_dns_record(
	# domainId: int   Eg: 56
	# The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
	domainId,
	# recordId: int   Eg: 56
	# The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
	recordId,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_dns_record", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_dns_domain**   { #get_dns_domain }
<a name="get_dns_domain"></a>

> `get_dns_domain(id: int, on_success: Callable, on_failure: Callable)`

List every DNS record in one zone with the IDs needed to edit or delete them

Returns the full record set for the specified PowerDNS zone (NS, A, AAAA, CNAME, MX, TXT, SRV, CAA, SOA, etc.) in a single response. Ownership is enforced via `get_dns_domain($id)` against the session account — cross-account access returns an error rather than 200. Use a returned record `id` together with the zone `id` to call `updateDnsRecord` or `deleteDnsRecord`. Sibling ops: `getDnsList`, `addDnsRecord`, `updateDnsRecord`, `deleteDnsRecord`, `deleteDnsDomain`.  **Path param:** - `id` (integer, required) — zone ID from `getDnsList.id`.  **Returns:** Array of `DnsRecord`: - `id` (string) — record ID; pass to `updateDnsRecord` / `deleteDnsRecord`. - `domain_id` (string) — parent zone ID. - `name` (string) — FQDN of the record (apex or subdomain). - `type` (string) — `A` / `AAAA` / `CNAME` / `MX` / `TXT` / `NS` / `SRV` / `CAA` / `SOA` / `PTR` / `SPF` / `TLSA`. - `content` (string) — record value (IP for A/AAAA, hostname for CNAME/NS/MX, free text for TXT, etc.). - `ttl` (string) — seconds; default 86400. - `prio` (string) — priority for MX/SRV (`0` for non-priority records). - `disabled` (string `0`/`1`), `ordername` (string), `auth` (string `0`/`1`).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone not found or owned by another account.  **Related calls:** - **Add a record:** `addDnsRecord` (POST same path). - **Update a record:** `updateDnsRecord` (`POST /dns/{domainId}/{recordId}`). - **Delete a record:** `deleteDnsRecord`. - **Delete the whole zone:** `deleteDnsDomain` (DELETE same path). 

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
var api = DNSApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DNSApi.new(config, client)


# Invoke an endpoint
api.get_dns_domain(
	# id: int   Eg: 56
	# The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_dns_domain", response)
		assert(response.data is DnsRecord)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_dns_list**   { #get_dns_list }
<a name="get_dns_list"></a>

> `get_dns_list( on_success: Callable, on_failure: Callable)`

List DNS zones hosted on the account with each zone's apex A-record IP

Returns every PowerDNS-hosted authoritative zone owned by the authenticated account, one row per zone, with the IP from the apex `A` record. Canonical entry point for discovering zone IDs before reading or editing records. The list is filtered server-side by session `account_id` — cross-account zones are never returned. Empty array means the account holds no zones (not an error). **Note:** this is the hosted DNS zone list, not registrar delegation — use the Domains tag's `updateDomainNameservers` to point a registered domain at `cdns1.interserver.net`/`cdns2.interserver.net`. Sibling ops: `getDnsDomain`, `addDnsDomain`, `addDnsRecord`, `deleteDnsDomain`.  **Path/Query/Body:** None.  **Returns:** Array of `DnsListItem`: - `id` (integer) — zone ID; pass to `getDnsDomain` / `addDnsRecord` / `deleteDnsDomain`. - `name` (string) — zone FQDN (e.g. `example.com`). - `content` (string) — IP from the apex `A` record matching the zone name (empty when no apex A exists yet).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-zone record list:** `getDnsDomain`. - **Add a zone:** `addDnsDomain`. - **Add a record to an existing zone:** `addDnsRecord`. - **Registrar delegation:** `getDomainNameservers` / `updateDomainNameservers` (Domains tag). 

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
var api = DNSApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DNSApi.new(config, client)


# Invoke an endpoint
api.get_dns_list(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_dns_list", response)
		assert(response.data is DnsListItem)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_dns_record**   { #update_dns_record }
<a name="update_dns_record"></a>

> `update_dns_record(domainId: int,recordId: int,name = "",type = null,content = "",ttl = "",prio = "",disabled = "",ordername = "",auth = "", on_success: Callable, on_failure: Callable)`

Replace values on an existing DNS record (name, type, content, ttl, priority)

Replaces the record identified by `recordId` within zone `domainId` with new values. **TTL caveat:** the change is written to PowerDNS immediately, but already-cached resolver answers persist until the previous record's TTL expires — plan TTL down ahead of a clean cutover. Type is validated against the global `$rtypes` allowlist; content is validated against the record type. Sibling ops: `getDnsDomain` (read), `addDnsRecord` (create), `deleteDnsRecord`.  **Path params:** - `domainId` (integer, required) — zone ID from `getDnsList.id`. - `recordId` (integer, required) — record ID from `getDnsDomain.id`.  **Body fields (form or JSON, schema `DnsUpdateRecord`):** - `name` (string, required) — FQDN at/below zone apex. - `type` (string, required) — one of the allowed PowerDNS types. - `content` (string, required) — value matching `type`. - `ttl` (integer, required) — seconds. - `prio` (integer, required) — MX/SRV priority (`0` otherwise).  **Returns:** `{success: true, text: \"domain record updated\"}`.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - `401` — unauthenticated. - `Type must be one of: ...` — `type` not in `$rtypes`. - `invalid or missing domain or record id` — zone/record not found / not owned. - Content-format validation text — `validate_input()` failure.  **Related calls:** - **Read first:** `getDnsDomain`. - **Delete:** `deleteDnsRecord`. - **Create new:** `addDnsRecord`. 

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
var api = DNSApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DNSApi.new(config, client)


# Invoke an endpoint
api.update_dns_record(
	# domainId: int   Eg: 56
	# The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
	domainId,
	# recordId: int   Eg: 56
	# The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
	recordId,
	# name: String = ""   Eg: name_example
	name,
	# type: DnsRecordType
	type,
	# content: String = ""   Eg: content_example
	content,
	# ttl: String = ""   Eg: ttl_example
	ttl,
	# prio: String = ""   Eg: prio_example
	prio,
	# disabled: String = ""   Eg: disabled_example
	disabled,
	# ordername: String = ""   Eg: ordername_example
	ordername,
	# auth: String = ""   Eg: auth_example
	auth,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_dns_record", response)
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


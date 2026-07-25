# DNSApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddDnsDomain**](DNSApi.md#AddDnsDomain) | **POST** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
[**AddDnsRecord**](DNSApi.md#AddDnsRecord) | **POST** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
[**DeleteDnsDomain**](DNSApi.md#DeleteDnsDomain) | **DELETE** /dns/{id} | Permanently delete a DNS zone and every record it contains
[**DeleteDnsRecord**](DNSApi.md#DeleteDnsRecord) | **DELETE** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved
[**GetDnsDomain**](DNSApi.md#GetDnsDomain) | **GET** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them
[**GetDnsList**](DNSApi.md#GetDnsList) | **GET** /dns | List DNS zones hosted on the account with each zone&#39;s apex A-record IP
[**UpdateDnsRecord**](DNSApi.md#UpdateDnsRecord) | **POST** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority)


# **AddDnsDomain**
> SuccessTextResponse AddDnsDomain(domain, ip)

Create a new authoritative DNS zone seeded with apex A + NS + SOA records

Creates a new authoritative zone in PowerDNS for this account and seeds it with a default record set: apex `A` record pointing at `ip`, `NS` records for InterServer's `cdns1.interserver.net` / `cdns2.interserver.net` anycast resolvers, and an `SOA`. Served immediately by InterServer's nameservers via supermaster propagation. **Important:** this only creates the hosted zone — the customer must still point their registrar's nameservers at `cdns1.interserver.net` / `cdns2.interserver.net` for queries to resolve through this zone (use `updateDomainNameservers` if the domain is registered through InterServer). Sibling ops: `getDnsList`, `getDnsDomain`, `addDnsRecord`, `updateDomainNameservers`.  **Body fields (form or JSON, schema `DnsNewDomain`):** - `domain` (string, required) — FQDN of the zone (e.g. `example.com`). - `ip` (string, required) — IPv4 address for the apex A record.  **Returns:** `SuccessTextResponse` — status text confirming the zone was created.  **Side effects:** - Inserts `domains` row scoped to session `account_id`. - Inserts default `records` rows: apex `A`, two `NS`, one `SOA`.  **Auth:** Session/API key.  **Errors:** - `400` — missing `domain` or `ip`. - `401` — unauthenticated. - `409` — zone already exists.  **Related calls:** - **Find new zone id:** `getDnsList`. - **Add more records:** `addDnsRecord`. - **Update registrar nameservers:** `updateDomainNameservers` (Domains tag).  **Example request:** ```json { \"domain\": \"mydomain.com\", \"ip\": \"203.0.113.42\" } ``` 

### Example
```R
library(interserverapi)

# Create a new authoritative DNS zone seeded with apex A + NS + SOA records
#
# prepare function argument(s)
var_domain <- "domain_example" # character | The domain name.
var_ip <- "ip_example" # character | IP Address to point the domain to.

api_instance <- DNSApi$new()
# Configure API key authorization: sessionIdCookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: apiKeyAuth
# api_instance$api_client$api_keys["X-API-KEY"] <- Sys.getenv("API_KEY")
# Configure API key authorization: sessionIdHeaderAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddDnsDomain(var_domain, var_ipdata_file = "result.txt")
result <- api_instance$AddDnsDomain(var_domain, var_ip)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **character**| The domain name. | 
 **ip** | **character**| IP Address to point the domain to. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A response indicating the operation completed successfully with a text message. |  -  |
| **401** | Unauthorized |  -  |

# **AddDnsRecord**
> AddDnsRecord(id, name, type, content, ttl = 86400, prio = 0)

Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone

Adds a single record to the zone identified by path `id`. Type is validated against the global `$rtypes` allowlist (A, AAAA, CNAME, MX, TXT, NS, SRV, CAA, PTR, SPF, TLSA, etc.); content is validated against the record type by `validate_input()`. The record goes live on PowerDNS immediately; resolvers honor the existing TTL on any cached answer. Sibling ops: `getDnsDomain` (find record id afterward), `updateDnsRecord`, `deleteDnsRecord`.  **Path param:** - `id` (integer, required) — zone ID from `getDnsList.id`.  **Body fields (form or JSON, schema `DnsNewRecord`):** - `name` (string, required) — FQDN of the record (must be at or below the zone apex). - `type` (string, required) — `A` / `AAAA` / `CNAME` / `MX` / `TXT` / `NS` / `SRV` / `CAA` / `PTR` / `SPF` / `TLSA` (must be in `$rtypes`). - `content` (string, required) — value matching `type` syntax (IPv4 for A, IPv6 for AAAA, hostname for CNAME/NS/MX, free text for TXT). - `ttl` (integer, optional, default 86400) — seconds. - `prio` (integer, optional, default 0) — priority (MX/SRV only).  **Returns:** `{success: true, text: \"Record added\"}`.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - `401` — unauthenticated. - `Type must be one of: ...` — `type` not in allowlist. - `invalid or missing domain or record id` — zone not found / not owned. - Content-format validation failure (`text` describes the issue).  **Related calls:** - **Find new record id:** `getDnsDomain`. - **Edit later:** `updateDnsRecord`. - **Delete:** `deleteDnsRecord`. 

### Example
```R
library(interserverapi)

# Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
#
# prepare function argument(s)
var_id <- "472" # character | The DNS Domain ID.
var_name <- "name_example" # character | Name part of record
var_type <- DnsRecordType$new() # DnsRecordType | 
var_content <- "content_example" # character | Content of record
var_ttl <- 86400 # integer | Time-to-live (Optional)
var_prio <- 0 # integer | Priority (Optional)

api_instance <- DNSApi$new()
# Configure API key authorization: sessionIdCookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: apiKeyAuth
# api_instance$api_client$api_keys["X-API-KEY"] <- Sys.getenv("API_KEY")
# Configure API key authorization: sessionIdHeaderAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
api_instance$AddDnsRecord(var_id, var_name, var_type, var_content, ttl = var_ttl, prio = var_prio)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The DNS Domain ID. | 
 **name** | **character**| Name part of record | 
 **type** | [**DnsRecordType**](DnsRecordType.md)|  | 
 **content** | **character**| Content of record | 
 **ttl** | **integer**| Time-to-live | [optional] [default to 86400]
 **prio** | **integer**| Priority | [optional] [default to 0]

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Add DNS Domain Response |  -  |
| **401** | Unauthorized |  -  |

# **DeleteDnsDomain**
> SuccessTextResponse DeleteDnsDomain(id)

Permanently delete a DNS zone and every record it contains

Removes the zone identified by path `id` AND every record it contains from PowerDNS in a single transaction. **Permanent — no soft-delete, no undo.** Any service relying on these records (web, mail, SPF/DKIM, third-party domain verifications, ACME challenges) will start failing as resolver caches expire (per-record TTL, default 86400s). **Note:** this only deletes the hosted zone on InterServer's nameservers — it does not affect registrar delegation. If `cdns1`/`cdns2` are still delegated at the registrar, queries will return NXDOMAIN/SERVFAIL until delegation is changed or the zone is recreated. Sibling ops: `deleteDnsRecord` (delete one record only), `addDnsDomain` (recreate), `updateDomainNameservers` (change registrar delegation).  **Path param:** - `id` (string, required) — zone ID from `getDnsList`.  **Returns:** `{success: true, text: \"Domain deleted\"}`.  **Side effects:** - Deletes every `records` row with `domain_id={id}`. - Deletes the `domains` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone not found / not owned.  **Related calls:** - **Delete one record only:** `deleteDnsRecord`. - **Recreate the zone:** `addDnsDomain`. - **Update registrar delegation:** `updateDomainNameservers` (Domains tag). 

### Example
```R
library(interserverapi)

# Permanently delete a DNS zone and every record it contains
#
# prepare function argument(s)
var_id <- "id_example" # character | The DNS domain ID to delete. Use the `id` from `GET /dns` to identify the domain.

api_instance <- DNSApi$new()
# Configure API key authorization: sessionIdCookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: apiKeyAuth
# api_instance$api_client$api_keys["X-API-KEY"] <- Sys.getenv("API_KEY")
# Configure API key authorization: sessionIdHeaderAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeleteDnsDomain(var_iddata_file = "result.txt")
result <- api_instance$DeleteDnsDomain(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The DNS domain ID to delete. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A response indicating the operation completed successfully with a text message. |  -  |
| **401** | Unauthorized |  -  |

# **DeleteDnsRecord**
> SuccessTextResponse DeleteDnsRecord(domain_id, record_id)

Permanently delete one DNS record from a zone — zone itself is preserved

Removes the record identified by `recordId` from zone `domainId`. The zone itself remains intact — only the one record is dropped. **Permanent** — applied to PowerDNS immediately, but resolvers continue to answer with cached values until the previous TTL expires. Use to surgically remove an A/AAAA/MX/TXT etc. record; to drop the entire zone and all its records, use `deleteDnsDomain`. Sibling ops: `getDnsDomain` (verify after deletion), `deleteDnsDomain`, `updateDnsRecord`.  **Path params:** - `domainId` (integer, required) — zone ID from `getDnsList.id`. - `recordId` (integer, required) — record ID from `getDnsDomain.id`.  **Returns:** `{success: true, text: \"domain record deleted\"}`.  **Auth:** Session/API key. Zone ownership enforced via `get_dns_domain($domainId)`.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone/record not found or not owned. - `error removing domain record` — underlying DB delete failed.  **Related calls:** - **Verify after delete:** `getDnsDomain`. - **Recreate:** `addDnsRecord`. - **Delete entire zone instead:** `deleteDnsDomain`. 

### Example
```R
library(interserverapi)

# Permanently delete one DNS record from a zone — zone itself is preserved
#
# prepare function argument(s)
var_domain_id <- 56 # integer | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
var_record_id <- 56 # integer | The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.

api_instance <- DNSApi$new()
# Configure API key authorization: sessionIdCookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: apiKeyAuth
# api_instance$api_client$api_keys["X-API-KEY"] <- Sys.getenv("API_KEY")
# Configure API key authorization: sessionIdHeaderAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeleteDnsRecord(var_domain_id, var_record_iddata_file = "result.txt")
result <- api_instance$DeleteDnsRecord(var_domain_id, var_record_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_id** | **integer**| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 
 **record_id** | **integer**| The DNS record ID within the domain. Use the record &#x60;id&#x60; from &#x60;GET /dns/{id}&#x60; to identify the record. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A response indicating the operation completed successfully with a text message. |  -  |
| **401** | Unauthorized |  -  |

# **GetDnsDomain**
> array[DnsRecord] GetDnsDomain(id)

List every DNS record in one zone with the IDs needed to edit or delete them

Returns the full record set for the specified PowerDNS zone (NS, A, AAAA, CNAME, MX, TXT, SRV, CAA, SOA, etc.) in a single response. Ownership is enforced via `get_dns_domain($id)` against the session account — cross-account access returns an error rather than 200. Use a returned record `id` together with the zone `id` to call `updateDnsRecord` or `deleteDnsRecord`. Sibling ops: `getDnsList`, `addDnsRecord`, `updateDnsRecord`, `deleteDnsRecord`, `deleteDnsDomain`.  **Path param:** - `id` (integer, required) — zone ID from `getDnsList.id`.  **Returns:** Array of `DnsRecord`: - `id` (string) — record ID; pass to `updateDnsRecord` / `deleteDnsRecord`. - `domain_id` (string) — parent zone ID. - `name` (string) — FQDN of the record (apex or subdomain). - `type` (string) — `A` / `AAAA` / `CNAME` / `MX` / `TXT` / `NS` / `SRV` / `CAA` / `SOA` / `PTR` / `SPF` / `TLSA`. - `content` (string) — record value (IP for A/AAAA, hostname for CNAME/NS/MX, free text for TXT, etc.). - `ttl` (string) — seconds; default 86400. - `prio` (string) — priority for MX/SRV (`0` for non-priority records). - `disabled` (string `0`/`1`), `ordername` (string), `auth` (string `0`/`1`).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone not found or owned by another account.  **Related calls:** - **Add a record:** `addDnsRecord` (POST same path). - **Update a record:** `updateDnsRecord` (`POST /dns/{domainId}/{recordId}`). - **Delete a record:** `deleteDnsRecord`. - **Delete the whole zone:** `deleteDnsDomain` (DELETE same path). 

### Example
```R
library(interserverapi)

# List every DNS record in one zone with the IDs needed to edit or delete them
#
# prepare function argument(s)
var_id <- 56 # integer | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.

api_instance <- DNSApi$new()
# Configure API key authorization: sessionIdCookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: apiKeyAuth
# api_instance$api_client$api_keys["X-API-KEY"] <- Sys.getenv("API_KEY")
# Configure API key authorization: sessionIdHeaderAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDnsDomain(var_iddata_file = "result.txt")
result <- api_instance$GetDnsDomain(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 

### Return type

[**array[DnsRecord]**](DnsRecord.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The DNS records for the specified domain. |  -  |
| **401** | Unauthorized |  -  |

# **GetDnsList**
> array[DnsListItem] GetDnsList()

List DNS zones hosted on the account with each zone's apex A-record IP

Returns every PowerDNS-hosted authoritative zone owned by the authenticated account, one row per zone, with the IP from the apex `A` record. Canonical entry point for discovering zone IDs before reading or editing records. The list is filtered server-side by session `account_id` — cross-account zones are never returned. Empty array means the account holds no zones (not an error). **Note:** this is the hosted DNS zone list, not registrar delegation — use the Domains tag's `updateDomainNameservers` to point a registered domain at `cdns1.interserver.net`/`cdns2.interserver.net`. Sibling ops: `getDnsDomain`, `addDnsDomain`, `addDnsRecord`, `deleteDnsDomain`.  **Path/Query/Body:** None.  **Returns:** Array of `DnsListItem`: - `id` (integer) — zone ID; pass to `getDnsDomain` / `addDnsRecord` / `deleteDnsDomain`. - `name` (string) — zone FQDN (e.g. `example.com`). - `content` (string) — IP from the apex `A` record matching the zone name (empty when no apex A exists yet).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-zone record list:** `getDnsDomain`. - **Add a zone:** `addDnsDomain`. - **Add a record to an existing zone:** `addDnsRecord`. - **Registrar delegation:** `getDomainNameservers` / `updateDomainNameservers` (Domains tag). 

### Example
```R
library(interserverapi)

# List DNS zones hosted on the account with each zone's apex A-record IP
#

api_instance <- DNSApi$new()
# Configure API key authorization: sessionIdCookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: apiKeyAuth
# api_instance$api_client$api_keys["X-API-KEY"] <- Sys.getenv("API_KEY")
# Configure API key authorization: sessionIdHeaderAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDnsList(data_file = "result.txt")
result <- api_instance$GetDnsList()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DnsListItem]**](DnsListItem.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Listing of DNS domains on the account with their primary A record. |  -  |
| **401** | Unauthorized |  -  |

# **UpdateDnsRecord**
> SuccessTextResponse UpdateDnsRecord(domain_id, record_id, name = var.name, type = var.type, content = var.content, ttl = var.ttl, prio = var.prio, disabled = var.disabled, ordername = var.ordername, auth = var.auth)

Replace values on an existing DNS record (name, type, content, ttl, priority)

Replaces the record identified by `recordId` within zone `domainId` with new values. **TTL caveat:** the change is written to PowerDNS immediately, but already-cached resolver answers persist until the previous record's TTL expires — plan TTL down ahead of a clean cutover. Type is validated against the global `$rtypes` allowlist; content is validated against the record type. Sibling ops: `getDnsDomain` (read), `addDnsRecord` (create), `deleteDnsRecord`.  **Path params:** - `domainId` (integer, required) — zone ID from `getDnsList.id`. - `recordId` (integer, required) — record ID from `getDnsDomain.id`.  **Body fields (form or JSON, schema `DnsUpdateRecord`):** - `name` (string, required) — FQDN at/below zone apex. - `type` (string, required) — one of the allowed PowerDNS types. - `content` (string, required) — value matching `type`. - `ttl` (integer, required) — seconds. - `prio` (integer, required) — MX/SRV priority (`0` otherwise).  **Returns:** `{success: true, text: \"domain record updated\"}`.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - `401` — unauthenticated. - `Type must be one of: ...` — `type` not in `$rtypes`. - `invalid or missing domain or record id` — zone/record not found / not owned. - Content-format validation text — `validate_input()` failure.  **Related calls:** - **Read first:** `getDnsDomain`. - **Delete:** `deleteDnsRecord`. - **Create new:** `addDnsRecord`. 

### Example
```R
library(interserverapi)

# Replace values on an existing DNS record (name, type, content, ttl, priority)
#
# prepare function argument(s)
var_domain_id <- 56 # integer | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
var_record_id <- 56 # integer | The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
var_name <- "name_example" # character |  (Optional)
var_type <- DnsRecordType$new() # DnsRecordType |  (Optional)
var_content <- "content_example" # character |  (Optional)
var_ttl <- "ttl_example" # character |  (Optional)
var_prio <- "prio_example" # character |  (Optional)
var_disabled <- "disabled_example" # character |  (Optional)
var_ordername <- "ordername_example" # character |  (Optional)
var_auth <- "auth_example" # character |  (Optional)

api_instance <- DNSApi$new()
# Configure API key authorization: sessionIdCookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: apiKeyAuth
# api_instance$api_client$api_keys["X-API-KEY"] <- Sys.getenv("API_KEY")
# Configure API key authorization: sessionIdHeaderAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateDnsRecord(var_domain_id, var_record_id, name = var_name, type = var_type, content = var_content, ttl = var_ttl, prio = var_prio, disabled = var_disabled, ordername = var_ordername, auth = var_authdata_file = "result.txt")
result <- api_instance$UpdateDnsRecord(var_domain_id, var_record_id, name = var_name, type = var_type, content = var_content, ttl = var_ttl, prio = var_prio, disabled = var_disabled, ordername = var_ordername, auth = var_auth)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_id** | **integer**| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 
 **record_id** | **integer**| The DNS record ID within the domain. Use the record &#x60;id&#x60; from &#x60;GET /dns/{id}&#x60; to identify the record. | 
 **name** | **character**|  | [optional] 
 **type** | [**DnsRecordType**](DnsRecordType.md)|  | [optional] 
 **content** | **character**|  | [optional] 
 **ttl** | **character**|  | [optional] 
 **prio** | **character**|  | [optional] 
 **disabled** | **character**|  | [optional] 
 **ordername** | **character**|  | [optional] 
 **auth** | **character**|  | [optional] 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A response indicating the operation completed successfully with a text message. |  -  |
| **401** | Unauthorized |  -  |


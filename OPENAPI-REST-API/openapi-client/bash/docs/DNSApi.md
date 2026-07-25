# DNSApi

All URIs are relative to */apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDnsDomain**](DNSApi.md#addDnsDomain) | **POST** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
[**addDnsRecord**](DNSApi.md#addDnsRecord) | **POST** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
[**deleteDnsDomain**](DNSApi.md#deleteDnsDomain) | **DELETE** /dns/{id} | Permanently delete a DNS zone and every record it contains
[**deleteDnsRecord**](DNSApi.md#deleteDnsRecord) | **DELETE** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved
[**getDnsDomain**](DNSApi.md#getDnsDomain) | **GET** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them
[**getDnsList**](DNSApi.md#getDnsList) | **GET** /dns | List DNS zones hosted on the account with each zone&#39;s apex A-record IP
[**updateDnsRecord**](DNSApi.md#updateDnsRecord) | **POST** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority)



## addDnsDomain

Create a new authoritative DNS zone seeded with apex A + NS + SOA records

Creates a new authoritative zone in PowerDNS for this account and seeds it with a default record set: apex 'A' record pointing at 'ip', 'NS' records for InterServer's 'cdns1.interserver.net' / 'cdns2.interserver.net' anycast resolvers, and an 'SOA'. Served immediately by InterServer's nameservers via supermaster propagation. **Important:** this only creates the hosted zone — the customer must still point their registrar's nameservers at 'cdns1.interserver.net' / 'cdns2.interserver.net' for queries to resolve through this zone (use 'updateDomainNameservers' if the domain is registered through InterServer). Sibling ops: 'getDnsList', 'getDnsDomain', 'addDnsRecord', 'updateDomainNameservers'.

**Body fields (form or JSON, schema 'DnsNewDomain'):**
- 'domain' (string, required) — FQDN of the zone (e.g. 'example.com').
- 'ip' (string, required) — IPv4 address for the apex A record.

**Returns:** 'SuccessTextResponse' — status text confirming the zone was created.

**Side effects:**
- Inserts 'domains' row scoped to session 'account_id'.
- Inserts default 'records' rows: apex 'A', two 'NS', one 'SOA'.

**Auth:** Session/API key.

**Errors:**
- '400' — missing 'domain' or 'ip'.
- '401' — unauthenticated.
- '409' — zone already exists.

**Related calls:**
- **Find new zone id:** 'getDnsList'.
- **Add more records:** 'addDnsRecord'.
- **Update registrar nameservers:** 'updateDomainNameservers' (Domains tag).

**Example request:**
---
{ \"domain\": \"mydomain.com\", \"ip\": \"203.0.113.42\" }
---

### Example

```bash
interserver-api addDnsDomain
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string** | The domain name. | [default to null]
 **ip** | **string** | IP Address to point the domain to. | [default to null]

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## addDnsRecord

Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone

Adds a single record to the zone identified by path 'id'. Type is validated against the global '$rtypes' allowlist (A, AAAA, CNAME, MX, TXT, NS, SRV, CAA, PTR, SPF, TLSA, etc.); content is validated against the record type by 'validate_input()'. The record goes live on PowerDNS immediately; resolvers honor the existing TTL on any cached answer. Sibling ops: 'getDnsDomain' (find record id afterward), 'updateDnsRecord', 'deleteDnsRecord'.

**Path param:**
- 'id' (integer, required) — zone ID from 'getDnsList.id'.

**Body fields (form or JSON, schema 'DnsNewRecord'):**
- 'name' (string, required) — FQDN of the record (must be at or below the zone apex).
- 'type' (string, required) — 'A' / 'AAAA' / 'CNAME' / 'MX' / 'TXT' / 'NS' / 'SRV' / 'CAA' / 'PTR' / 'SPF' / 'TLSA' (must be in '$rtypes').
- 'content' (string, required) — value matching 'type' syntax (IPv4 for A, IPv6 for AAAA, hostname for CNAME/NS/MX, free text for TXT).
- 'ttl' (integer, optional, default 86400) — seconds.
- 'prio' (integer, optional, default 0) — priority (MX/SRV only).

**Returns:** '{success: true, text: \"Record added\"}'.

**Auth:** Session/API key. Zone ownership enforced.

**Errors:**
- '401' — unauthenticated.
- 'Type must be one of: ...' — 'type' not in allowlist.
- 'invalid or missing domain or record id' — zone not found / not owned.
- Content-format validation failure ('text' describes the issue).

**Related calls:**
- **Find new record id:** 'getDnsDomain'.
- **Edit later:** 'updateDnsRecord'.
- **Delete:** 'deleteDnsRecord'.

### Example

```bash
interserver-api addDnsRecord id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | Name part of record | [default to null]
 **type** | [**DnsRecordType**](DnsRecordType.md) |  | [default to null]
 **content** | **string** | Content of record | [default to null]
 **id** | **string** | The DNS Domain ID. | [default to null]
 **ttl** | **integer** | Time-to-live | [optional] [default to 86400]
 **prio** | **integer** | Priority | [optional] [default to 0]

### Return type

(empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDnsDomain

Permanently delete a DNS zone and every record it contains

Removes the zone identified by path 'id' AND every record it contains from PowerDNS in a single transaction. **Permanent — no soft-delete, no undo.** Any service relying on these records (web, mail, SPF/DKIM, third-party domain verifications, ACME challenges) will start failing as resolver caches expire (per-record TTL, default 86400s). **Note:** this only deletes the hosted zone on InterServer's nameservers — it does not affect registrar delegation. If 'cdns1'/'cdns2' are still delegated at the registrar, queries will return NXDOMAIN/SERVFAIL until delegation is changed or the zone is recreated. Sibling ops: 'deleteDnsRecord' (delete one record only), 'addDnsDomain' (recreate), 'updateDomainNameservers' (change registrar delegation).

**Path param:**
- 'id' (string, required) — zone ID from 'getDnsList'.

**Returns:** '{success: true, text: \"Domain deleted\"}'.

**Side effects:**
- Deletes every 'records' row with 'domain_id={id}'.
- Deletes the 'domains' row.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- '401' — unauthenticated.
- 'invalid or missing domain or record id' — zone not found / not owned.

**Related calls:**
- **Delete one record only:** 'deleteDnsRecord'.
- **Recreate the zone:** 'addDnsDomain'.
- **Update registrar delegation:** 'updateDomainNameservers' (Domains tag).

### Example

```bash
interserver-api deleteDnsDomain id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The DNS domain ID to delete. Use the 'id' from 'GET /dns' to identify the domain. | [default to null]

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDnsRecord

Permanently delete one DNS record from a zone — zone itself is preserved

Removes the record identified by 'recordId' from zone 'domainId'. The zone itself remains intact — only the one record is dropped.$(tput bold) Permanent $(tput sgr0)— applied to PowerDNS immediately, but resolvers continue to answer with cached values until the previous TTL expires. Use to surgically remove an A/AAAA/MX/TXT etc. record; to drop the entire zone and all its records, use 'deleteDnsDomain'. Sibling ops: 'getDnsDomain' (verify after deletion), 'deleteDnsDomain', 'updateDnsRecord'.

**Path params:**
- 'domainId' (integer, required) — zone ID from 'getDnsList.id'.
- 'recordId' (integer, required) — record ID from 'getDnsDomain.id'.

**Returns:** '{success: true, text: \"domain record deleted\"}'.

**Auth:** Session/API key. Zone ownership enforced via 'get_dns_domain($domainId)'.

**Errors:**
- '401' — unauthenticated.
- 'invalid or missing domain or record id' — zone/record not found or not owned.
- 'error removing domain record' — underlying DB delete failed.

**Related calls:**
- **Verify after delete:** 'getDnsDomain'.
- **Recreate:** 'addDnsRecord'.
- **Delete entire zone instead:** 'deleteDnsDomain'.

### Example

```bash
interserver-api deleteDnsRecord domainId=value recordId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **integer** | The DNS domain ID. Use the 'id' from 'GET /dns' to identify the domain. | [default to null]
 **recordId** | **integer** | The DNS record ID within the domain. Use the record 'id' from 'GET /dns/{id}' to identify the record. | [default to null]

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDnsDomain

List every DNS record in one zone with the IDs needed to edit or delete them

Returns the full record set for the specified PowerDNS zone (NS, A, AAAA, CNAME, MX, TXT, SRV, CAA, SOA, etc.) in a single response. Ownership is enforced via 'get_dns_domain($id)' against the session account — cross-account access returns an error rather than 200. Use a returned record 'id' together with the zone 'id' to call 'updateDnsRecord' or 'deleteDnsRecord'. Sibling ops: 'getDnsList', 'addDnsRecord', 'updateDnsRecord', 'deleteDnsRecord', 'deleteDnsDomain'.

**Path param:**
- 'id' (integer, required) — zone ID from 'getDnsList.id'.

**Returns:** Array of 'DnsRecord':
- 'id' (string) — record ID; pass to 'updateDnsRecord' / 'deleteDnsRecord'.
- 'domain_id' (string) — parent zone ID.
- 'name' (string) — FQDN of the record (apex or subdomain).
- 'type' (string) — 'A' / 'AAAA' / 'CNAME' / 'MX' / 'TXT' / 'NS' / 'SRV' / 'CAA' / 'SOA' / 'PTR' / 'SPF' / 'TLSA'.
- 'content' (string) — record value (IP for A/AAAA, hostname for CNAME/NS/MX, free text for TXT, etc.).
- 'ttl' (string) — seconds; default 86400.
- 'prio' (string) — priority for MX/SRV ('0' for non-priority records).
- 'disabled' (string '0'/'1'), 'ordername' (string), 'auth' (string '0'/'1').

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- '401' — unauthenticated.
- 'invalid or missing domain or record id' — zone not found or owned by another account.

**Related calls:**
- **Add a record:** 'addDnsRecord' (POST same path).
- **Update a record:** 'updateDnsRecord' ('POST /dns/{domainId}/{recordId}').
- **Delete a record:** 'deleteDnsRecord'.
- **Delete the whole zone:** 'deleteDnsDomain' (DELETE same path).

### Example

```bash
interserver-api getDnsDomain id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer** | The DNS domain ID. Use the 'id' from 'GET /dns' to identify the domain. | [default to null]

### Return type

[**array[DnsRecord]**](DnsRecord.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDnsList

List DNS zones hosted on the account with each zone's apex A-record IP

Returns every PowerDNS-hosted authoritative zone owned by the authenticated account, one row per zone, with the IP from the apex 'A' record. Canonical entry point for discovering zone IDs before reading or editing records. The list is filtered server-side by session 'account_id' — cross-account zones are never returned. Empty array means the account holds no zones (not an error). **Note:** this is the hosted DNS zone list, not registrar delegation — use the Domains tag's 'updateDomainNameservers' to point a registered domain at 'cdns1.interserver.net'/'cdns2.interserver.net'. Sibling ops: 'getDnsDomain', 'addDnsDomain', 'addDnsRecord', 'deleteDnsDomain'.

**Path/Query/Body:** None.

**Returns:** Array of 'DnsListItem':
- 'id' (integer) — zone ID; pass to 'getDnsDomain' / 'addDnsRecord' / 'deleteDnsDomain'.
- 'name' (string) — zone FQDN (e.g. 'example.com').
- 'content' (string) — IP from the apex 'A' record matching the zone name (empty when no apex A exists yet).

**Auth:** Session/API key.

**Errors:**
- '401' — unauthenticated.

**Related calls:**
- **Per-zone record list:** 'getDnsDomain'.
- **Add a zone:** 'addDnsDomain'.
- **Add a record to an existing zone:** 'addDnsRecord'.
- **Registrar delegation:** 'getDomainNameservers' / 'updateDomainNameservers' (Domains tag).

### Example

```bash
interserver-api getDnsList
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DnsListItem]**](DnsListItem.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDnsRecord

Replace values on an existing DNS record (name, type, content, ttl, priority)

Replaces the record identified by 'recordId' within zone 'domainId' with new values. **TTL caveat:** the change is written to PowerDNS immediately, but already-cached resolver answers persist until the previous record's TTL expires — plan TTL down ahead of a clean cutover. Type is validated against the global '$rtypes' allowlist; content is validated against the record type. Sibling ops: 'getDnsDomain' (read), 'addDnsRecord' (create), 'deleteDnsRecord'.

**Path params:**
- 'domainId' (integer, required) — zone ID from 'getDnsList.id'.
- 'recordId' (integer, required) — record ID from 'getDnsDomain.id'.

**Body fields (form or JSON, schema 'DnsUpdateRecord'):**
- 'name' (string, required) — FQDN at/below zone apex.
- 'type' (string, required) — one of the allowed PowerDNS types.
- 'content' (string, required) — value matching 'type'.
- 'ttl' (integer, required) — seconds.
- 'prio' (integer, required) — MX/SRV priority ('0' otherwise).

**Returns:** '{success: true, text: \"domain record updated\"}'.

**Auth:** Session/API key. Zone ownership enforced.

**Errors:**
- '401' — unauthenticated.
- 'Type must be one of: ...' — 'type' not in '$rtypes'.
- 'invalid or missing domain or record id' — zone/record not found / not owned.
- Content-format validation text — 'validate_input()' failure.

**Related calls:**
- **Read first:** 'getDnsDomain'.
- **Delete:** 'deleteDnsRecord'.
- **Create new:** 'addDnsRecord'.

### Example

```bash
interserver-api updateDnsRecord domainId=value recordId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **integer** | The DNS domain ID. Use the 'id' from 'GET /dns' to identify the domain. | [default to null]
 **recordId** | **integer** | The DNS record ID within the domain. Use the record 'id' from 'GET /dns/{id}' to identify the record. | [default to null]
 **name** | **string** |  | [optional] [default to null]
 **type** | [**DnsRecordType**](DnsRecordType.md) |  | [optional] [default to null]
 **content** | **string** |  | [optional] [default to null]
 **ttl** | **string** |  | [optional] [default to null]
 **prio** | **string** |  | [optional] [default to null]
 **disabled** | **string** |  | [optional] [default to null]
 **ordername** | **string** |  | [optional] [default to null]
 **auth** | **string** |  | [optional] [default to null]

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


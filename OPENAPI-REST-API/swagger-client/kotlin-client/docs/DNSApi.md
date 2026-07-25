# DNSApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDnsDomain**](DNSApi.md#addDnsDomain) | **POST** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
[**addDnsRecord**](DNSApi.md#addDnsRecord) | **POST** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
[**deleteDnsDomain**](DNSApi.md#deleteDnsDomain) | **DELETE** /dns/{id} | Permanently delete a DNS zone and every record it contains
[**deleteDnsRecord**](DNSApi.md#deleteDnsRecord) | **DELETE** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved
[**getDnsDomain**](DNSApi.md#getDnsDomain) | **GET** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them
[**getDnsList**](DNSApi.md#getDnsList) | **GET** /dns | List DNS zones hosted on the account with each zone&#x27;s apex A-record IP
[**updateDnsRecord**](DNSApi.md#updateDnsRecord) | **POST** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority)

<a name="addDnsDomain"></a>
# **addDnsDomain**
> SuccessTextResponse addDnsDomain(domain, ip)

Create a new authoritative DNS zone seeded with apex A + NS + SOA records

Creates a new authoritative zone in PowerDNS for this account and seeds it with a default record set: apex &#x60;A&#x60; record pointing at &#x60;ip&#x60;, &#x60;NS&#x60; records for InterServer&#x27;s &#x60;cdns1.interserver.net&#x60; / &#x60;cdns2.interserver.net&#x60; anycast resolvers, and an &#x60;SOA&#x60;. Served immediately by InterServer&#x27;s nameservers via supermaster propagation. **Important:** this only creates the hosted zone — the customer must still point their registrar&#x27;s nameservers at &#x60;cdns1.interserver.net&#x60; / &#x60;cdns2.interserver.net&#x60; for queries to resolve through this zone (use &#x60;updateDomainNameservers&#x60; if the domain is registered through InterServer). Sibling ops: &#x60;getDnsList&#x60;, &#x60;getDnsDomain&#x60;, &#x60;addDnsRecord&#x60;, &#x60;updateDomainNameservers&#x60;.  **Body fields (form or JSON, schema &#x60;DnsNewDomain&#x60;):** - &#x60;domain&#x60; (string, required) — FQDN of the zone (e.g. &#x60;example.com&#x60;). - &#x60;ip&#x60; (string, required) — IPv4 address for the apex A record.  **Returns:** &#x60;SuccessTextResponse&#x60; — status text confirming the zone was created.  **Side effects:** - Inserts &#x60;domains&#x60; row scoped to session &#x60;account_id&#x60;. - Inserts default &#x60;records&#x60; rows: apex &#x60;A&#x60;, two &#x60;NS&#x60;, one &#x60;SOA&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;400&#x60; — missing &#x60;domain&#x60; or &#x60;ip&#x60;. - &#x60;401&#x60; — unauthenticated. - &#x60;409&#x60; — zone already exists.  **Related calls:** - **Find new zone id:** &#x60;getDnsList&#x60;. - **Add more records:** &#x60;addDnsRecord&#x60;. - **Update registrar nameservers:** &#x60;updateDomainNameservers&#x60; (Domains tag).  **Example request:** &#x60;&#x60;&#x60;json { \&quot;domain\&quot;: \&quot;mydomain.com\&quot;, \&quot;ip\&quot;: \&quot;203.0.113.42\&quot; } &#x60;&#x60;&#x60; 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
val domain : kotlin.String = domain_example // kotlin.String | 
val ip : kotlin.String = ip_example // kotlin.String | 
try {
    val result : SuccessTextResponse = apiInstance.addDnsDomain(domain, ip)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#addDnsDomain")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#addDnsDomain")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **kotlin.String**|  |
 **ip** | **kotlin.String**|  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

<a name="addDnsDomain"></a>
# **addDnsDomain**
> SuccessTextResponse addDnsDomain(body)

Create a new authoritative DNS zone seeded with apex A + NS + SOA records

Creates a new authoritative zone in PowerDNS for this account and seeds it with a default record set: apex &#x60;A&#x60; record pointing at &#x60;ip&#x60;, &#x60;NS&#x60; records for InterServer&#x27;s &#x60;cdns1.interserver.net&#x60; / &#x60;cdns2.interserver.net&#x60; anycast resolvers, and an &#x60;SOA&#x60;. Served immediately by InterServer&#x27;s nameservers via supermaster propagation. **Important:** this only creates the hosted zone — the customer must still point their registrar&#x27;s nameservers at &#x60;cdns1.interserver.net&#x60; / &#x60;cdns2.interserver.net&#x60; for queries to resolve through this zone (use &#x60;updateDomainNameservers&#x60; if the domain is registered through InterServer). Sibling ops: &#x60;getDnsList&#x60;, &#x60;getDnsDomain&#x60;, &#x60;addDnsRecord&#x60;, &#x60;updateDomainNameservers&#x60;.  **Body fields (form or JSON, schema &#x60;DnsNewDomain&#x60;):** - &#x60;domain&#x60; (string, required) — FQDN of the zone (e.g. &#x60;example.com&#x60;). - &#x60;ip&#x60; (string, required) — IPv4 address for the apex A record.  **Returns:** &#x60;SuccessTextResponse&#x60; — status text confirming the zone was created.  **Side effects:** - Inserts &#x60;domains&#x60; row scoped to session &#x60;account_id&#x60;. - Inserts default &#x60;records&#x60; rows: apex &#x60;A&#x60;, two &#x60;NS&#x60;, one &#x60;SOA&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;400&#x60; — missing &#x60;domain&#x60; or &#x60;ip&#x60;. - &#x60;401&#x60; — unauthenticated. - &#x60;409&#x60; — zone already exists.  **Related calls:** - **Find new zone id:** &#x60;getDnsList&#x60;. - **Add more records:** &#x60;addDnsRecord&#x60;. - **Update registrar nameservers:** &#x60;updateDomainNameservers&#x60; (Domains tag).  **Example request:** &#x60;&#x60;&#x60;json { \&quot;domain\&quot;: \&quot;mydomain.com\&quot;, \&quot;ip\&quot;: \&quot;203.0.113.42\&quot; } &#x60;&#x60;&#x60; 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
val body : DnsNewDomain = {
  "value" : {
    "domain" : "mydomain.com",
    "ip" : "1.2.3.4"
  }
} // DnsNewDomain | 
try {
    val result : SuccessTextResponse = apiInstance.addDnsDomain(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#addDnsDomain")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#addDnsDomain")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DnsNewDomain**](DnsNewDomain.md)|  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

<a name="addDnsRecord"></a>
# **addDnsRecord**
> addDnsRecord(name, type, content, ttl, prio, id)

Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone

Adds a single record to the zone identified by path &#x60;id&#x60;. Type is validated against the global &#x60;$rtypes&#x60; allowlist (A, AAAA, CNAME, MX, TXT, NS, SRV, CAA, PTR, SPF, TLSA, etc.); content is validated against the record type by &#x60;validate_input()&#x60;. The record goes live on PowerDNS immediately; resolvers honor the existing TTL on any cached answer. Sibling ops: &#x60;getDnsDomain&#x60; (find record id afterward), &#x60;updateDnsRecord&#x60;, &#x60;deleteDnsRecord&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;.  **Body fields (form or JSON, schema &#x60;DnsNewRecord&#x60;):** - &#x60;name&#x60; (string, required) — FQDN of the record (must be at or below the zone apex). - &#x60;type&#x60; (string, required) — &#x60;A&#x60; / &#x60;AAAA&#x60; / &#x60;CNAME&#x60; / &#x60;MX&#x60; / &#x60;TXT&#x60; / &#x60;NS&#x60; / &#x60;SRV&#x60; / &#x60;CAA&#x60; / &#x60;PTR&#x60; / &#x60;SPF&#x60; / &#x60;TLSA&#x60; (must be in &#x60;$rtypes&#x60;). - &#x60;content&#x60; (string, required) — value matching &#x60;type&#x60; syntax (IPv4 for A, IPv6 for AAAA, hostname for CNAME/NS/MX, free text for TXT). - &#x60;ttl&#x60; (integer, optional, default 86400) — seconds. - &#x60;prio&#x60; (integer, optional, default 0) — priority (MX/SRV only).  **Returns:** &#x60;{success: true, text: \&quot;Record added\&quot;}&#x60;.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Type must be one of: ...&#x60; — &#x60;type&#x60; not in allowlist. - &#x60;invalid or missing domain or record id&#x60; — zone not found / not owned. - Content-format validation failure (&#x60;text&#x60; describes the issue).  **Related calls:** - **Find new record id:** &#x60;getDnsDomain&#x60;. - **Edit later:** &#x60;updateDnsRecord&#x60;. - **Delete:** &#x60;deleteDnsRecord&#x60;. 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
val name : kotlin.String = name_example // kotlin.String | 
val type : DnsRecordType =  // DnsRecordType | 
val content : kotlin.String = content_example // kotlin.String | 
val ttl : kotlin.Int = 56 // kotlin.Int | 
val prio : kotlin.Int = 56 // kotlin.Int | 
val id : kotlin.String = id_example // kotlin.String | The DNS Domain ID.
try {
    apiInstance.addDnsRecord(name, type, content, ttl, prio, id)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#addDnsRecord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#addDnsRecord")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**|  |
 **type** | [**DnsRecordType**](.md)|  |
 **content** | **kotlin.String**|  |
 **ttl** | **kotlin.Int**|  |
 **prio** | **kotlin.Int**|  |
 **id** | **kotlin.String**| The DNS Domain ID. |

### Return type

null (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

<a name="addDnsRecord"></a>
# **addDnsRecord**
> addDnsRecord(body, id)

Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone

Adds a single record to the zone identified by path &#x60;id&#x60;. Type is validated against the global &#x60;$rtypes&#x60; allowlist (A, AAAA, CNAME, MX, TXT, NS, SRV, CAA, PTR, SPF, TLSA, etc.); content is validated against the record type by &#x60;validate_input()&#x60;. The record goes live on PowerDNS immediately; resolvers honor the existing TTL on any cached answer. Sibling ops: &#x60;getDnsDomain&#x60; (find record id afterward), &#x60;updateDnsRecord&#x60;, &#x60;deleteDnsRecord&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;.  **Body fields (form or JSON, schema &#x60;DnsNewRecord&#x60;):** - &#x60;name&#x60; (string, required) — FQDN of the record (must be at or below the zone apex). - &#x60;type&#x60; (string, required) — &#x60;A&#x60; / &#x60;AAAA&#x60; / &#x60;CNAME&#x60; / &#x60;MX&#x60; / &#x60;TXT&#x60; / &#x60;NS&#x60; / &#x60;SRV&#x60; / &#x60;CAA&#x60; / &#x60;PTR&#x60; / &#x60;SPF&#x60; / &#x60;TLSA&#x60; (must be in &#x60;$rtypes&#x60;). - &#x60;content&#x60; (string, required) — value matching &#x60;type&#x60; syntax (IPv4 for A, IPv6 for AAAA, hostname for CNAME/NS/MX, free text for TXT). - &#x60;ttl&#x60; (integer, optional, default 86400) — seconds. - &#x60;prio&#x60; (integer, optional, default 0) — priority (MX/SRV only).  **Returns:** &#x60;{success: true, text: \&quot;Record added\&quot;}&#x60;.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Type must be one of: ...&#x60; — &#x60;type&#x60; not in allowlist. - &#x60;invalid or missing domain or record id&#x60; — zone not found / not owned. - Content-format validation failure (&#x60;text&#x60; describes the issue).  **Related calls:** - **Find new record id:** &#x60;getDnsDomain&#x60;. - **Edit later:** &#x60;updateDnsRecord&#x60;. - **Delete:** &#x60;deleteDnsRecord&#x60;. 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
val body : DnsNewRecord =  // DnsNewRecord | 
val id : kotlin.String = id_example // kotlin.String | The DNS Domain ID.
try {
    apiInstance.addDnsRecord(body, id)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#addDnsRecord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#addDnsRecord")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DnsNewRecord**](DnsNewRecord.md)|  |
 **id** | **kotlin.String**| The DNS Domain ID. |

### Return type

null (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

<a name="deleteDnsDomain"></a>
# **deleteDnsDomain**
> SuccessTextResponse deleteDnsDomain(id)

Permanently delete a DNS zone and every record it contains

Removes the zone identified by path &#x60;id&#x60; AND every record it contains from PowerDNS in a single transaction. **Permanent — no soft-delete, no undo.** Any service relying on these records (web, mail, SPF/DKIM, third-party domain verifications, ACME challenges) will start failing as resolver caches expire (per-record TTL, default 86400s). **Note:** this only deletes the hosted zone on InterServer&#x27;s nameservers — it does not affect registrar delegation. If &#x60;cdns1&#x60;/&#x60;cdns2&#x60; are still delegated at the registrar, queries will return NXDOMAIN/SERVFAIL until delegation is changed or the zone is recreated. Sibling ops: &#x60;deleteDnsRecord&#x60; (delete one record only), &#x60;addDnsDomain&#x60; (recreate), &#x60;updateDomainNameservers&#x60; (change registrar delegation).  **Path param:** - &#x60;id&#x60; (string, required) — zone ID from &#x60;getDnsList&#x60;.  **Returns:** &#x60;{success: true, text: \&quot;Domain deleted\&quot;}&#x60;.  **Side effects:** - Deletes every &#x60;records&#x60; row with &#x60;domain_id&#x3D;{id}&#x60;. - Deletes the &#x60;domains&#x60; row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;invalid or missing domain or record id&#x60; — zone not found / not owned.  **Related calls:** - **Delete one record only:** &#x60;deleteDnsRecord&#x60;. - **Recreate the zone:** &#x60;addDnsDomain&#x60;. - **Update registrar delegation:** &#x60;updateDomainNameservers&#x60; (Domains tag). 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
val id : kotlin.String = id_example // kotlin.String | The DNS domain ID to delete. Use the `id` from `GET /dns` to identify the domain.
try {
    val result : SuccessTextResponse = apiInstance.deleteDnsDomain(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#deleteDnsDomain")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#deleteDnsDomain")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.String**| The DNS domain ID to delete. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deleteDnsRecord"></a>
# **deleteDnsRecord**
> SuccessTextResponse deleteDnsRecord(domainId, recordId)

Permanently delete one DNS record from a zone — zone itself is preserved

Removes the record identified by &#x60;recordId&#x60; from zone &#x60;domainId&#x60;. The zone itself remains intact — only the one record is dropped. **Permanent** — applied to PowerDNS immediately, but resolvers continue to answer with cached values until the previous TTL expires. Use to surgically remove an A/AAAA/MX/TXT etc. record; to drop the entire zone and all its records, use &#x60;deleteDnsDomain&#x60;. Sibling ops: &#x60;getDnsDomain&#x60; (verify after deletion), &#x60;deleteDnsDomain&#x60;, &#x60;updateDnsRecord&#x60;.  **Path params:** - &#x60;domainId&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;. - &#x60;recordId&#x60; (integer, required) — record ID from &#x60;getDnsDomain.id&#x60;.  **Returns:** &#x60;{success: true, text: \&quot;domain record deleted\&quot;}&#x60;.  **Auth:** Session/API key. Zone ownership enforced via &#x60;get_dns_domain($domainId)&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;invalid or missing domain or record id&#x60; — zone/record not found or not owned. - &#x60;error removing domain record&#x60; — underlying DB delete failed.  **Related calls:** - **Verify after delete:** &#x60;getDnsDomain&#x60;. - **Recreate:** &#x60;addDnsRecord&#x60;. - **Delete entire zone instead:** &#x60;deleteDnsDomain&#x60;. 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
val domainId : kotlin.Int = 56 // kotlin.Int | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
val recordId : kotlin.Int = 56 // kotlin.Int | The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
try {
    val result : SuccessTextResponse = apiInstance.deleteDnsRecord(domainId, recordId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#deleteDnsRecord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#deleteDnsRecord")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **kotlin.Int**| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. |
 **recordId** | **kotlin.Int**| The DNS record ID within the domain. Use the record &#x60;id&#x60; from &#x60;GET /dns/{id}&#x60; to identify the record. |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getDnsDomain"></a>
# **getDnsDomain**
> kotlin.Array&lt;DnsRecord&gt; getDnsDomain(id)

List every DNS record in one zone with the IDs needed to edit or delete them

Returns the full record set for the specified PowerDNS zone (NS, A, AAAA, CNAME, MX, TXT, SRV, CAA, SOA, etc.) in a single response. Ownership is enforced via &#x60;get_dns_domain($id)&#x60; against the session account — cross-account access returns an error rather than 200. Use a returned record &#x60;id&#x60; together with the zone &#x60;id&#x60; to call &#x60;updateDnsRecord&#x60; or &#x60;deleteDnsRecord&#x60;. Sibling ops: &#x60;getDnsList&#x60;, &#x60;addDnsRecord&#x60;, &#x60;updateDnsRecord&#x60;, &#x60;deleteDnsRecord&#x60;, &#x60;deleteDnsDomain&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;.  **Returns:** Array of &#x60;DnsRecord&#x60;: - &#x60;id&#x60; (string) — record ID; pass to &#x60;updateDnsRecord&#x60; / &#x60;deleteDnsRecord&#x60;. - &#x60;domain_id&#x60; (string) — parent zone ID. - &#x60;name&#x60; (string) — FQDN of the record (apex or subdomain). - &#x60;type&#x60; (string) — &#x60;A&#x60; / &#x60;AAAA&#x60; / &#x60;CNAME&#x60; / &#x60;MX&#x60; / &#x60;TXT&#x60; / &#x60;NS&#x60; / &#x60;SRV&#x60; / &#x60;CAA&#x60; / &#x60;SOA&#x60; / &#x60;PTR&#x60; / &#x60;SPF&#x60; / &#x60;TLSA&#x60;. - &#x60;content&#x60; (string) — record value (IP for A/AAAA, hostname for CNAME/NS/MX, free text for TXT, etc.). - &#x60;ttl&#x60; (string) — seconds; default 86400. - &#x60;prio&#x60; (string) — priority for MX/SRV (&#x60;0&#x60; for non-priority records). - &#x60;disabled&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;), &#x60;ordername&#x60; (string), &#x60;auth&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;invalid or missing domain or record id&#x60; — zone not found or owned by another account.  **Related calls:** - **Add a record:** &#x60;addDnsRecord&#x60; (POST same path). - **Update a record:** &#x60;updateDnsRecord&#x60; (&#x60;POST /dns/{domainId}/{recordId}&#x60;). - **Delete a record:** &#x60;deleteDnsRecord&#x60;. - **Delete the whole zone:** &#x60;deleteDnsDomain&#x60; (DELETE same path). 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
val id : kotlin.Int = 56 // kotlin.Int | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
try {
    val result : kotlin.Array<DnsRecord> = apiInstance.getDnsDomain(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#getDnsDomain")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#getDnsDomain")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. |

### Return type

[**kotlin.Array&lt;DnsRecord&gt;**](DnsRecord.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getDnsList"></a>
# **getDnsList**
> kotlin.Array&lt;DnsListItem&gt; getDnsList()

List DNS zones hosted on the account with each zone&#x27;s apex A-record IP

Returns every PowerDNS-hosted authoritative zone owned by the authenticated account, one row per zone, with the IP from the apex &#x60;A&#x60; record. Canonical entry point for discovering zone IDs before reading or editing records. The list is filtered server-side by session &#x60;account_id&#x60; — cross-account zones are never returned. Empty array means the account holds no zones (not an error). **Note:** this is the hosted DNS zone list, not registrar delegation — use the Domains tag&#x27;s &#x60;updateDomainNameservers&#x60; to point a registered domain at &#x60;cdns1.interserver.net&#x60;/&#x60;cdns2.interserver.net&#x60;. Sibling ops: &#x60;getDnsDomain&#x60;, &#x60;addDnsDomain&#x60;, &#x60;addDnsRecord&#x60;, &#x60;deleteDnsDomain&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;DnsListItem&#x60;: - &#x60;id&#x60; (integer) — zone ID; pass to &#x60;getDnsDomain&#x60; / &#x60;addDnsRecord&#x60; / &#x60;deleteDnsDomain&#x60;. - &#x60;name&#x60; (string) — zone FQDN (e.g. &#x60;example.com&#x60;). - &#x60;content&#x60; (string) — IP from the apex &#x60;A&#x60; record matching the zone name (empty when no apex A exists yet).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-zone record list:** &#x60;getDnsDomain&#x60;. - **Add a zone:** &#x60;addDnsDomain&#x60;. - **Add a record to an existing zone:** &#x60;addDnsRecord&#x60;. - **Registrar delegation:** &#x60;getDomainNameservers&#x60; / &#x60;updateDomainNameservers&#x60; (Domains tag). 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
try {
    val result : kotlin.Array<DnsListItem> = apiInstance.getDnsList()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#getDnsList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#getDnsList")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.Array&lt;DnsListItem&gt;**](DnsListItem.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateDnsRecord"></a>
# **updateDnsRecord**
> SuccessTextResponse updateDnsRecord(name, type, content, ttl, prio, disabled, ordername, auth, domainId, recordId)

Replace values on an existing DNS record (name, type, content, ttl, priority)

Replaces the record identified by &#x60;recordId&#x60; within zone &#x60;domainId&#x60; with new values. **TTL caveat:** the change is written to PowerDNS immediately, but already-cached resolver answers persist until the previous record&#x27;s TTL expires — plan TTL down ahead of a clean cutover. Type is validated against the global &#x60;$rtypes&#x60; allowlist; content is validated against the record type. Sibling ops: &#x60;getDnsDomain&#x60; (read), &#x60;addDnsRecord&#x60; (create), &#x60;deleteDnsRecord&#x60;.  **Path params:** - &#x60;domainId&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;. - &#x60;recordId&#x60; (integer, required) — record ID from &#x60;getDnsDomain.id&#x60;.  **Body fields (form or JSON, schema &#x60;DnsUpdateRecord&#x60;):** - &#x60;name&#x60; (string, required) — FQDN at/below zone apex. - &#x60;type&#x60; (string, required) — one of the allowed PowerDNS types. - &#x60;content&#x60; (string, required) — value matching &#x60;type&#x60;. - &#x60;ttl&#x60; (integer, required) — seconds. - &#x60;prio&#x60; (integer, required) — MX/SRV priority (&#x60;0&#x60; otherwise).  **Returns:** &#x60;{success: true, text: \&quot;domain record updated\&quot;}&#x60;.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Type must be one of: ...&#x60; — &#x60;type&#x60; not in &#x60;$rtypes&#x60;. - &#x60;invalid or missing domain or record id&#x60; — zone/record not found / not owned. - Content-format validation text — &#x60;validate_input()&#x60; failure.  **Related calls:** - **Read first:** &#x60;getDnsDomain&#x60;. - **Delete:** &#x60;deleteDnsRecord&#x60;. - **Create new:** &#x60;addDnsRecord&#x60;. 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
val name : kotlin.String = name_example // kotlin.String | 
val type : DnsRecordType =  // DnsRecordType | 
val content : kotlin.String = content_example // kotlin.String | 
val ttl : kotlin.String = ttl_example // kotlin.String | 
val prio : kotlin.String = prio_example // kotlin.String | 
val disabled : kotlin.String = disabled_example // kotlin.String | 
val ordername : kotlin.String = ordername_example // kotlin.String | 
val auth : kotlin.String = auth_example // kotlin.String | 
val domainId : kotlin.Int = 56 // kotlin.Int | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
val recordId : kotlin.Int = 56 // kotlin.Int | The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
try {
    val result : SuccessTextResponse = apiInstance.updateDnsRecord(name, type, content, ttl, prio, disabled, ordername, auth, domainId, recordId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#updateDnsRecord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#updateDnsRecord")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**|  |
 **type** | [**DnsRecordType**](.md)|  |
 **content** | **kotlin.String**|  |
 **ttl** | **kotlin.String**|  |
 **prio** | **kotlin.String**|  |
 **disabled** | **kotlin.String**|  |
 **ordername** | **kotlin.String**|  |
 **auth** | **kotlin.String**|  |
 **domainId** | **kotlin.Int**| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. |
 **recordId** | **kotlin.Int**| The DNS record ID within the domain. Use the record &#x60;id&#x60; from &#x60;GET /dns/{id}&#x60; to identify the record. |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

<a name="updateDnsRecord"></a>
# **updateDnsRecord**
> SuccessTextResponse updateDnsRecord(body, domainId, recordId)

Replace values on an existing DNS record (name, type, content, ttl, priority)

Replaces the record identified by &#x60;recordId&#x60; within zone &#x60;domainId&#x60; with new values. **TTL caveat:** the change is written to PowerDNS immediately, but already-cached resolver answers persist until the previous record&#x27;s TTL expires — plan TTL down ahead of a clean cutover. Type is validated against the global &#x60;$rtypes&#x60; allowlist; content is validated against the record type. Sibling ops: &#x60;getDnsDomain&#x60; (read), &#x60;addDnsRecord&#x60; (create), &#x60;deleteDnsRecord&#x60;.  **Path params:** - &#x60;domainId&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;. - &#x60;recordId&#x60; (integer, required) — record ID from &#x60;getDnsDomain.id&#x60;.  **Body fields (form or JSON, schema &#x60;DnsUpdateRecord&#x60;):** - &#x60;name&#x60; (string, required) — FQDN at/below zone apex. - &#x60;type&#x60; (string, required) — one of the allowed PowerDNS types. - &#x60;content&#x60; (string, required) — value matching &#x60;type&#x60;. - &#x60;ttl&#x60; (integer, required) — seconds. - &#x60;prio&#x60; (integer, required) — MX/SRV priority (&#x60;0&#x60; otherwise).  **Returns:** &#x60;{success: true, text: \&quot;domain record updated\&quot;}&#x60;.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Type must be one of: ...&#x60; — &#x60;type&#x60; not in &#x60;$rtypes&#x60;. - &#x60;invalid or missing domain or record id&#x60; — zone/record not found / not owned. - Content-format validation text — &#x60;validate_input()&#x60; failure.  **Related calls:** - **Read first:** &#x60;getDnsDomain&#x60;. - **Delete:** &#x60;deleteDnsRecord&#x60;. - **Create new:** &#x60;addDnsRecord&#x60;. 

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DNSApi()
val body : DnsUpdateRecord =  // DnsUpdateRecord | The request data to update a dns record.
val domainId : kotlin.Int = 56 // kotlin.Int | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
val recordId : kotlin.Int = 56 // kotlin.Int | The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
try {
    val result : SuccessTextResponse = apiInstance.updateDnsRecord(body, domainId, recordId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DNSApi#updateDnsRecord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DNSApi#updateDnsRecord")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DnsUpdateRecord**](DnsUpdateRecord.md)| The request data to update a dns record. |
 **domainId** | **kotlin.Int**| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. |
 **recordId** | **kotlin.Int**| The DNS record ID within the domain. Use the record &#x60;id&#x60; from &#x60;GET /dns/{id}&#x60; to identify the record. |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json


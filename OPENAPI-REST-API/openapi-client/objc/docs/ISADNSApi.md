# ISADNSApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDnsDomain**](ISADNSApi.md#adddnsdomain) | **POST** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
[**addDnsRecord**](ISADNSApi.md#adddnsrecord) | **POST** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
[**deleteDnsDomain**](ISADNSApi.md#deletednsdomain) | **DELETE** /dns/{id} | Permanently delete a DNS zone and every record it contains
[**deleteDnsRecord**](ISADNSApi.md#deletednsrecord) | **DELETE** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved
[**getDnsDomain**](ISADNSApi.md#getdnsdomain) | **GET** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them
[**getDnsList**](ISADNSApi.md#getdnslist) | **GET** /dns | List DNS zones hosted on the account with each zone&#39;s apex A-record IP
[**updateDnsRecord**](ISADNSApi.md#updatednsrecord) | **POST** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority)


# **addDnsDomain**
```objc
-(NSURLSessionTask*) addDnsDomainWithDomain: (NSString*) domain
    ip: (NSString*) ip
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Create a new authoritative DNS zone seeded with apex A + NS + SOA records

Creates a new authoritative zone in PowerDNS for this account and seeds it with a default record set: apex `A` record pointing at `ip`, `NS` records for InterServer's `cdns1.interserver.net` / `cdns2.interserver.net` anycast resolvers, and an `SOA`. Served immediately by InterServer's nameservers via supermaster propagation. **Important:** this only creates the hosted zone — the customer must still point their registrar's nameservers at `cdns1.interserver.net` / `cdns2.interserver.net` for queries to resolve through this zone (use `updateDomainNameservers` if the domain is registered through InterServer). Sibling ops: `getDnsList`, `getDnsDomain`, `addDnsRecord`, `updateDomainNameservers`.  **Body fields (form or JSON, schema `DnsNewDomain`):** - `domain` (string, required) — FQDN of the zone (e.g. `example.com`). - `ip` (string, required) — IPv4 address for the apex A record.  **Returns:** `SuccessTextResponse` — status text confirming the zone was created.  **Side effects:** - Inserts `domains` row scoped to session `account_id`. - Inserts default `records` rows: apex `A`, two `NS`, one `SOA`.  **Auth:** Session/API key.  **Errors:** - `400` — missing `domain` or `ip`. - `401` — unauthenticated. - `409` — zone already exists.  **Related calls:** - **Find new zone id:** `getDnsList`. - **Add more records:** `addDnsRecord`. - **Update registrar nameservers:** `updateDomainNameservers` (Domains tag).  **Example request:** ```json { \"domain\": \"mydomain.com\", \"ip\": \"203.0.113.42\" } ``` 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSString* domain = @"domain_example"; // The domain name.
NSString* ip = @"ip_example"; // IP Address to point the domain to.

ISADNSApi*apiInstance = [[ISADNSApi alloc] init];

// Create a new authoritative DNS zone seeded with apex A + NS + SOA records
[apiInstance addDnsDomainWithDomain:domain
              ip:ip
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISADNSApi->addDnsDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **NSString***| The domain name. | 
 **ip** | **NSString***| IP Address to point the domain to. | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addDnsRecord**
```objc
-(NSURLSessionTask*) addDnsRecordWithId: (NSString*) _id
    name: (NSString*) name
    type: (ISADnsRecordType*) type
    content: (NSString*) content
    ttl: (NSNumber*) ttl
    prio: (NSNumber*) prio
        completionHandler: (void (^)(NSError* error)) handler;
```

Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone

Adds a single record to the zone identified by path `id`. Type is validated against the global `$rtypes` allowlist (A, AAAA, CNAME, MX, TXT, NS, SRV, CAA, PTR, SPF, TLSA, etc.); content is validated against the record type by `validate_input()`. The record goes live on PowerDNS immediately; resolvers honor the existing TTL on any cached answer. Sibling ops: `getDnsDomain` (find record id afterward), `updateDnsRecord`, `deleteDnsRecord`.  **Path param:** - `id` (integer, required) — zone ID from `getDnsList.id`.  **Body fields (form or JSON, schema `DnsNewRecord`):** - `name` (string, required) — FQDN of the record (must be at or below the zone apex). - `type` (string, required) — `A` / `AAAA` / `CNAME` / `MX` / `TXT` / `NS` / `SRV` / `CAA` / `PTR` / `SPF` / `TLSA` (must be in `$rtypes`). - `content` (string, required) — value matching `type` syntax (IPv4 for A, IPv6 for AAAA, hostname for CNAME/NS/MX, free text for TXT). - `ttl` (integer, optional, default 86400) — seconds. - `prio` (integer, optional, default 0) — priority (MX/SRV only).  **Returns:** `{success: true, text: \"Record added\"}`.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - `401` — unauthenticated. - `Type must be one of: ...` — `type` not in allowlist. - `invalid or missing domain or record id` — zone not found / not owned. - Content-format validation failure (`text` describes the issue).  **Related calls:** - **Find new record id:** `getDnsDomain`. - **Edit later:** `updateDnsRecord`. - **Delete:** `deleteDnsRecord`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSString* _id = 472; // The DNS Domain ID.
NSString* name = @"name_example"; // Name part of record
ISADnsRecordType* type = [[ISADnsRecordType alloc] init]; // 
NSString* content = @"content_example"; // Content of record
NSNumber* ttl = @86400; // Time-to-live (optional) (default to @86400)
NSNumber* prio = @0; // Priority (optional) (default to @0)

ISADNSApi*apiInstance = [[ISADNSApi alloc] init];

// Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
[apiInstance addDnsRecordWithId:_id
              name:name
              type:type
              content:content
              ttl:ttl
              prio:prio
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISADNSApi->addDnsRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The DNS Domain ID. | 
 **name** | **NSString***| Name part of record | 
 **type** | [**ISADnsRecordType***](ISADnsRecordType.md)|  | 
 **content** | **NSString***| Content of record | 
 **ttl** | **NSNumber***| Time-to-live | [optional] [default to @86400]
 **prio** | **NSNumber***| Priority | [optional] [default to @0]

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDnsDomain**
```objc
-(NSURLSessionTask*) deleteDnsDomainWithId: (NSString*) _id
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Permanently delete a DNS zone and every record it contains

Removes the zone identified by path `id` AND every record it contains from PowerDNS in a single transaction. **Permanent — no soft-delete, no undo.** Any service relying on these records (web, mail, SPF/DKIM, third-party domain verifications, ACME challenges) will start failing as resolver caches expire (per-record TTL, default 86400s). **Note:** this only deletes the hosted zone on InterServer's nameservers — it does not affect registrar delegation. If `cdns1`/`cdns2` are still delegated at the registrar, queries will return NXDOMAIN/SERVFAIL until delegation is changed or the zone is recreated. Sibling ops: `deleteDnsRecord` (delete one record only), `addDnsDomain` (recreate), `updateDomainNameservers` (change registrar delegation).  **Path param:** - `id` (string, required) — zone ID from `getDnsList`.  **Returns:** `{success: true, text: \"Domain deleted\"}`.  **Side effects:** - Deletes every `records` row with `domain_id={id}`. - Deletes the `domains` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone not found / not owned.  **Related calls:** - **Delete one record only:** `deleteDnsRecord`. - **Recreate the zone:** `addDnsDomain`. - **Update registrar delegation:** `updateDomainNameservers` (Domains tag). 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSString* _id = @"_id_example"; // The DNS domain ID to delete. Use the `id` from `GET /dns` to identify the domain.

ISADNSApi*apiInstance = [[ISADNSApi alloc] init];

// Permanently delete a DNS zone and every record it contains
[apiInstance deleteDnsDomainWithId:_id
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISADNSApi->deleteDnsDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The DNS domain ID to delete. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDnsRecord**
```objc
-(NSURLSessionTask*) deleteDnsRecordWithDomainId: (NSNumber*) domainId
    recordId: (NSNumber*) recordId
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Permanently delete one DNS record from a zone — zone itself is preserved

Removes the record identified by `recordId` from zone `domainId`. The zone itself remains intact — only the one record is dropped. **Permanent** — applied to PowerDNS immediately, but resolvers continue to answer with cached values until the previous TTL expires. Use to surgically remove an A/AAAA/MX/TXT etc. record; to drop the entire zone and all its records, use `deleteDnsDomain`. Sibling ops: `getDnsDomain` (verify after deletion), `deleteDnsDomain`, `updateDnsRecord`.  **Path params:** - `domainId` (integer, required) — zone ID from `getDnsList.id`. - `recordId` (integer, required) — record ID from `getDnsDomain.id`.  **Returns:** `{success: true, text: \"domain record deleted\"}`.  **Auth:** Session/API key. Zone ownership enforced via `get_dns_domain($domainId)`.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone/record not found or not owned. - `error removing domain record` — underlying DB delete failed.  **Related calls:** - **Verify after delete:** `getDnsDomain`. - **Recreate:** `addDnsRecord`. - **Delete entire zone instead:** `deleteDnsDomain`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* domainId = @56; // The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
NSNumber* recordId = @56; // The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.

ISADNSApi*apiInstance = [[ISADNSApi alloc] init];

// Permanently delete one DNS record from a zone — zone itself is preserved
[apiInstance deleteDnsRecordWithDomainId:domainId
              recordId:recordId
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISADNSApi->deleteDnsRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **NSNumber***| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 
 **recordId** | **NSNumber***| The DNS record ID within the domain. Use the record &#x60;id&#x60; from &#x60;GET /dns/{id}&#x60; to identify the record. | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDnsDomain**
```objc
-(NSURLSessionTask*) getDnsDomainWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSArray<ISADnsRecord>* output, NSError* error)) handler;
```

List every DNS record in one zone with the IDs needed to edit or delete them

Returns the full record set for the specified PowerDNS zone (NS, A, AAAA, CNAME, MX, TXT, SRV, CAA, SOA, etc.) in a single response. Ownership is enforced via `get_dns_domain($id)` against the session account — cross-account access returns an error rather than 200. Use a returned record `id` together with the zone `id` to call `updateDnsRecord` or `deleteDnsRecord`. Sibling ops: `getDnsList`, `addDnsRecord`, `updateDnsRecord`, `deleteDnsRecord`, `deleteDnsDomain`.  **Path param:** - `id` (integer, required) — zone ID from `getDnsList.id`.  **Returns:** Array of `DnsRecord`: - `id` (string) — record ID; pass to `updateDnsRecord` / `deleteDnsRecord`. - `domain_id` (string) — parent zone ID. - `name` (string) — FQDN of the record (apex or subdomain). - `type` (string) — `A` / `AAAA` / `CNAME` / `MX` / `TXT` / `NS` / `SRV` / `CAA` / `SOA` / `PTR` / `SPF` / `TLSA`. - `content` (string) — record value (IP for A/AAAA, hostname for CNAME/NS/MX, free text for TXT, etc.). - `ttl` (string) — seconds; default 86400. - `prio` (string) — priority for MX/SRV (`0` for non-priority records). - `disabled` (string `0`/`1`), `ordername` (string), `auth` (string `0`/`1`).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone not found or owned by another account.  **Related calls:** - **Add a record:** `addDnsRecord` (POST same path). - **Update a record:** `updateDnsRecord` (`POST /dns/{domainId}/{recordId}`). - **Delete a record:** `deleteDnsRecord`. - **Delete the whole zone:** `deleteDnsDomain` (DELETE same path). 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.

ISADNSApi*apiInstance = [[ISADNSApi alloc] init];

// List every DNS record in one zone with the IDs needed to edit or delete them
[apiInstance getDnsDomainWithId:_id
          completionHandler: ^(NSArray<ISADnsRecord>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISADNSApi->getDnsDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 

### Return type

[**NSArray<ISADnsRecord>***](ISADnsRecord.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDnsList**
```objc
-(NSURLSessionTask*) getDnsListWithCompletionHandler: 
        (void (^)(NSArray<ISADnsListItem>* output, NSError* error)) handler;
```

List DNS zones hosted on the account with each zone's apex A-record IP

Returns every PowerDNS-hosted authoritative zone owned by the authenticated account, one row per zone, with the IP from the apex `A` record. Canonical entry point for discovering zone IDs before reading or editing records. The list is filtered server-side by session `account_id` — cross-account zones are never returned. Empty array means the account holds no zones (not an error). **Note:** this is the hosted DNS zone list, not registrar delegation — use the Domains tag's `updateDomainNameservers` to point a registered domain at `cdns1.interserver.net`/`cdns2.interserver.net`. Sibling ops: `getDnsDomain`, `addDnsDomain`, `addDnsRecord`, `deleteDnsDomain`.  **Path/Query/Body:** None.  **Returns:** Array of `DnsListItem`: - `id` (integer) — zone ID; pass to `getDnsDomain` / `addDnsRecord` / `deleteDnsDomain`. - `name` (string) — zone FQDN (e.g. `example.com`). - `content` (string) — IP from the apex `A` record matching the zone name (empty when no apex A exists yet).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-zone record list:** `getDnsDomain`. - **Add a zone:** `addDnsDomain`. - **Add a record to an existing zone:** `addDnsRecord`. - **Registrar delegation:** `getDomainNameservers` / `updateDomainNameservers` (Domains tag). 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];



ISADNSApi*apiInstance = [[ISADNSApi alloc] init];

// List DNS zones hosted on the account with each zone's apex A-record IP
[apiInstance getDnsListWithCompletionHandler: 
          ^(NSArray<ISADnsListItem>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISADNSApi->getDnsList: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<ISADnsListItem>***](ISADnsListItem.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDnsRecord**
```objc
-(NSURLSessionTask*) updateDnsRecordWithDomainId: (NSNumber*) domainId
    recordId: (NSNumber*) recordId
    name: (NSString*) name
    type: (ISADnsRecordType*) type
    content: (NSString*) content
    ttl: (NSString*) ttl
    prio: (NSString*) prio
    disabled: (NSString*) disabled
    ordername: (NSString*) ordername
    auth: (NSString*) auth
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Replace values on an existing DNS record (name, type, content, ttl, priority)

Replaces the record identified by `recordId` within zone `domainId` with new values. **TTL caveat:** the change is written to PowerDNS immediately, but already-cached resolver answers persist until the previous record's TTL expires — plan TTL down ahead of a clean cutover. Type is validated against the global `$rtypes` allowlist; content is validated against the record type. Sibling ops: `getDnsDomain` (read), `addDnsRecord` (create), `deleteDnsRecord`.  **Path params:** - `domainId` (integer, required) — zone ID from `getDnsList.id`. - `recordId` (integer, required) — record ID from `getDnsDomain.id`.  **Body fields (form or JSON, schema `DnsUpdateRecord`):** - `name` (string, required) — FQDN at/below zone apex. - `type` (string, required) — one of the allowed PowerDNS types. - `content` (string, required) — value matching `type`. - `ttl` (integer, required) — seconds. - `prio` (integer, required) — MX/SRV priority (`0` otherwise).  **Returns:** `{success: true, text: \"domain record updated\"}`.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - `401` — unauthenticated. - `Type must be one of: ...` — `type` not in `$rtypes`. - `invalid or missing domain or record id` — zone/record not found / not owned. - Content-format validation text — `validate_input()` failure.  **Related calls:** - **Read first:** `getDnsDomain`. - **Delete:** `deleteDnsRecord`. - **Create new:** `addDnsRecord`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* domainId = @56; // The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
NSNumber* recordId = @56; // The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
NSString* name = @"name_example"; //  (optional)
ISADnsRecordType* type = [[ISADnsRecordType alloc] init]; //  (optional)
NSString* content = @"content_example"; //  (optional)
NSString* ttl = @"ttl_example"; //  (optional)
NSString* prio = @"prio_example"; //  (optional)
NSString* disabled = @"disabled_example"; //  (optional)
NSString* ordername = @"ordername_example"; //  (optional)
NSString* auth = @"auth_example"; //  (optional)

ISADNSApi*apiInstance = [[ISADNSApi alloc] init];

// Replace values on an existing DNS record (name, type, content, ttl, priority)
[apiInstance updateDnsRecordWithDomainId:domainId
              recordId:recordId
              name:name
              type:type
              content:content
              ttl:ttl
              prio:prio
              disabled:disabled
              ordername:ordername
              auth:auth
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISADNSApi->updateDnsRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **NSNumber***| The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 
 **recordId** | **NSNumber***| The DNS record ID within the domain. Use the record &#x60;id&#x60; from &#x60;GET /dns/{id}&#x60; to identify the record. | 
 **name** | **NSString***|  | [optional] 
 **type** | [**ISADnsRecordType***](ISADnsRecordType.md)|  | [optional] 
 **content** | **NSString***|  | [optional] 
 **ttl** | **NSString***|  | [optional] 
 **prio** | **NSString***|  | [optional] 
 **disabled** | **NSString***|  | [optional] 
 **ordername** | **NSString***|  | [optional] 
 **auth** | **NSString***|  | [optional] 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


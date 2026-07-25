#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "DNSAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum  for DNSAPI_addDnsRecord

static char* addDnsRecord__ToString(interserver_management_api_addDnsRecord_type_e ){
    char *Array[] =  { "NULL", "A", "A6", "AAAA", "AFSDB", "ALIAS", "CAA", "CDNSKEY", "CDS", "CERT", "CNAME", "DHCID", "DLV", "DNSKEY", "DNAME", "DS", "EUI48", "EUI64", "HINFO", "IPSECKEY", "KEY", "KX", "LOC", "MAILA", "MAILB", "MINFO", "MR", "MX", "NAPTR", "NS", "NSEC", "NSEC3", "NSEC3PARAM", "OPENPGPKEY", "OPT", "PTR", "RKEY", "RP", "RRSIG", "SIG", "SOA", "SPF", "SRV", "SSHFP", "TLSA", "TKEY", "TSIG", "TXT", "WKS", "URI⏎" };
    return Array[];
}

static interserver_management_api_addDnsRecord_type_e addDnsRecord__FromString(char* ){
    int stringToReturn = 0;
    char *Array[] =  { "NULL", "A", "A6", "AAAA", "AFSDB", "ALIAS", "CAA", "CDNSKEY", "CDS", "CERT", "CNAME", "DHCID", "DLV", "DNSKEY", "DNAME", "DS", "EUI48", "EUI64", "HINFO", "IPSECKEY", "KEY", "KX", "LOC", "MAILA", "MAILB", "MINFO", "MR", "MX", "NAPTR", "NS", "NSEC", "NSEC3", "NSEC3PARAM", "OPENPGPKEY", "OPT", "PTR", "RKEY", "RP", "RRSIG", "SIG", "SOA", "SPF", "SRV", "SSHFP", "TLSA", "TKEY", "TSIG", "TXT", "WKS", "URI⏎" };
    size_t sizeofArray = sizeof(Array) / sizeof(Array[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(, Array[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function addDnsRecord__convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *addDnsRecord__convertToJSON(interserver_management_api_addDnsRecord_type_e ) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function addDnsRecord__parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static interserver_management_api_addDnsRecord_type_e addDnsRecord__parseFromJSON(cJSON* JSON) {
    interserver_management_api_addDnsRecord_type_e Variable = 0;
    return Variable;
end:
    return 0;
}
*/

// Functions for enum  for DNSAPI_updateDnsRecord

static char* updateDnsRecord__ToString(interserver_management_api_updateDnsRecord_type_e ){
    char *Array[] =  { "NULL", "A", "A6", "AAAA", "AFSDB", "ALIAS", "CAA", "CDNSKEY", "CDS", "CERT", "CNAME", "DHCID", "DLV", "DNSKEY", "DNAME", "DS", "EUI48", "EUI64", "HINFO", "IPSECKEY", "KEY", "KX", "LOC", "MAILA", "MAILB", "MINFO", "MR", "MX", "NAPTR", "NS", "NSEC", "NSEC3", "NSEC3PARAM", "OPENPGPKEY", "OPT", "PTR", "RKEY", "RP", "RRSIG", "SIG", "SOA", "SPF", "SRV", "SSHFP", "TLSA", "TKEY", "TSIG", "TXT", "WKS", "URI⏎" };
    return Array[];
}

static interserver_management_api_updateDnsRecord_type_e updateDnsRecord__FromString(char* ){
    int stringToReturn = 0;
    char *Array[] =  { "NULL", "A", "A6", "AAAA", "AFSDB", "ALIAS", "CAA", "CDNSKEY", "CDS", "CERT", "CNAME", "DHCID", "DLV", "DNSKEY", "DNAME", "DS", "EUI48", "EUI64", "HINFO", "IPSECKEY", "KEY", "KX", "LOC", "MAILA", "MAILB", "MINFO", "MR", "MX", "NAPTR", "NS", "NSEC", "NSEC3", "NSEC3PARAM", "OPENPGPKEY", "OPT", "PTR", "RKEY", "RP", "RRSIG", "SIG", "SOA", "SPF", "SRV", "SSHFP", "TLSA", "TKEY", "TSIG", "TXT", "WKS", "URI⏎" };
    size_t sizeofArray = sizeof(Array) / sizeof(Array[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(, Array[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateDnsRecord__convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateDnsRecord__convertToJSON(interserver_management_api_updateDnsRecord_type_e ) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateDnsRecord__parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static interserver_management_api_updateDnsRecord_type_e updateDnsRecord__parseFromJSON(cJSON* JSON) {
    interserver_management_api_updateDnsRecord_type_e Variable = 0;
    return Variable;
end:
    return 0;
}
*/


// Create a new authoritative DNS zone seeded with apex A + NS + SOA records
//
// Creates a new authoritative zone in PowerDNS for this account and seeds it with a default record set: apex `A` record pointing at `ip`, `NS` records for InterServer's `cdns1.interserver.net` / `cdns2.interserver.net` anycast resolvers, and an `SOA`. Served immediately by InterServer's nameservers via supermaster propagation. **Important:** this only creates the hosted zone — the customer must still point their registrar's nameservers at `cdns1.interserver.net` / `cdns2.interserver.net` for queries to resolve through this zone (use `updateDomainNameservers` if the domain is registered through InterServer). Sibling ops: `getDnsList`, `getDnsDomain`, `addDnsRecord`, `updateDomainNameservers`.  **Body fields (form or JSON, schema `DnsNewDomain`):** - `domain` (string, required) — FQDN of the zone (e.g. `example.com`). - `ip` (string, required) — IPv4 address for the apex A record.  **Returns:** `SuccessTextResponse` — status text confirming the zone was created.  **Side effects:** - Inserts `domains` row scoped to session `account_id`. - Inserts default `records` rows: apex `A`, two `NS`, one `SOA`.  **Auth:** Session/API key.  **Errors:** - `400` — missing `domain` or `ip`. - `401` — unauthenticated. - `409` — zone already exists.  **Related calls:** - **Find new zone id:** `getDnsList`. - **Add more records:** `addDnsRecord`. - **Update registrar nameservers:** `updateDomainNameservers` (Domains tag).  **Example request:** ```json { \"domain\": \"mydomain.com\", \"ip\": \"203.0.113.42\" } ``` 
//
success_text_response_t*
DNSAPI_addDnsDomain(apiClient_t *apiClient, char *domain, char *ip)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_createList();
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/dns");





    // form parameters
    char *keyForm_domain = NULL;
    char * valueForm_domain = 0;
    keyValuePair_t *keyPairForm_domain = 0;
    if (domain != NULL)
    {
        keyForm_domain = strdup("domain");
        valueForm_domain = strdup((domain));
        keyPairForm_domain = keyValuePair_create(keyForm_domain,valueForm_domain);
        list_addElement(localVarFormParameters,keyPairForm_domain);
    }

    // form parameters
    char *keyForm_ip = NULL;
    char * valueForm_ip = 0;
    keyValuePair_t *keyPairForm_ip = 0;
    if (ip != NULL)
    {
        keyForm_ip = strdup("ip");
        valueForm_ip = strdup((ip));
        keyPairForm_ip = keyValuePair_create(keyForm_ip,valueForm_ip);
        list_addElement(localVarFormParameters,keyPairForm_ip);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DNSAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(DNSAPIlocalVarJSON);
        cJSON_Delete(DNSAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    list_freeList(localVarFormParameters);
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (keyForm_domain) {
        free(keyForm_domain);
        keyForm_domain = NULL;
    }
    if (valueForm_domain) {
        free(valueForm_domain);
        valueForm_domain = NULL;
    }
    free(keyPairForm_domain);
    if (keyForm_ip) {
        free(keyForm_ip);
        keyForm_ip = NULL;
    }
    if (valueForm_ip) {
        free(valueForm_ip);
        valueForm_ip = NULL;
    }
    free(keyPairForm_ip);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
//
// Adds a single record to the zone identified by path `id`. Type is validated against the global `$rtypes` allowlist (A, AAAA, CNAME, MX, TXT, NS, SRV, CAA, PTR, SPF, TLSA, etc.); content is validated against the record type by `validate_input()`. The record goes live on PowerDNS immediately; resolvers honor the existing TTL on any cached answer. Sibling ops: `getDnsDomain` (find record id afterward), `updateDnsRecord`, `deleteDnsRecord`.  **Path param:** - `id` (integer, required) — zone ID from `getDnsList.id`.  **Body fields (form or JSON, schema `DnsNewRecord`):** - `name` (string, required) — FQDN of the record (must be at or below the zone apex). - `type` (string, required) — `A` / `AAAA` / `CNAME` / `MX` / `TXT` / `NS` / `SRV` / `CAA` / `PTR` / `SPF` / `TLSA` (must be in `$rtypes`). - `content` (string, required) — value matching `type` syntax (IPv4 for A, IPv6 for AAAA, hostname for CNAME/NS/MX, free text for TXT). - `ttl` (integer, optional, default 86400) — seconds. - `prio` (integer, optional, default 0) — priority (MX/SRV only).  **Returns:** `{success: true, text: \"Record added\"}`.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - `401` — unauthenticated. - `Type must be one of: ...` — `type` not in allowlist. - `invalid or missing domain or record id` — zone not found / not owned. - Content-format validation failure (`text` describes the issue).  **Related calls:** - **Find new record id:** `getDnsDomain`. - **Edit later:** `updateDnsRecord`. - **Delete:** `deleteDnsRecord`. 
//
void
DNSAPI_addDnsRecord(apiClient_t *apiClient, char *id, char *name, dns_record_type_e type, char *content, int *ttl, int *prio)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_createList();
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/dns/{id}");

    if(!id)
        goto end;


    // Path Params
    long sizeOfPathParams_id = strlen(id)+3 + sizeof("{ id }") - 1;
    if(id == NULL) {
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    sprintf(localVarToReplace_id, "{%s}", "id");

    localVarPath = strReplace(localVarPath, localVarToReplace_id, id);



    // form parameters
    char *keyForm_name = NULL;
    char * valueForm_name = 0;
    keyValuePair_t *keyPairForm_name = 0;
    if (name != NULL)
    {
        keyForm_name = strdup("name");
        valueForm_name = strdup((name));
        keyPairForm_name = keyValuePair_create(keyForm_name,valueForm_name);
        list_addElement(localVarFormParameters,keyPairForm_name);
    }

    // form parameters
    char *keyForm_type = NULL;
    dns_record_type_e valueForm_type = 0;
    keyValuePair_t *keyPairForm_type = 0;
    if (type != 0)
    {
        keyForm_type = strdup("type");
        valueForm_type = (type);
        keyPairForm_type = keyValuePair_create(keyForm_type,&valueForm_type);
        list_addElement(localVarFormParameters,keyPairForm_type);
    }

    // form parameters
    char *keyForm_content = NULL;
    char * valueForm_content = 0;
    keyValuePair_t *keyPairForm_content = 0;
    if (content != NULL)
    {
        keyForm_content = strdup("content");
        valueForm_content = strdup((content));
        keyPairForm_content = keyValuePair_create(keyForm_content,valueForm_content);
        list_addElement(localVarFormParameters,keyPairForm_content);
    }

    // form parameters
    char *keyForm_ttl = NULL;
    int valueForm_ttl = 0;
    keyValuePair_t *keyPairForm_ttl = 0;
    if (ttl != NULL)
    {
        keyForm_ttl = strdup("ttl");
        valueForm_ttl = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueForm_ttl, MAX_NUMBER_LENGTH, "%d", *ttl);
        keyPairForm_ttl = keyValuePair_create(keyForm_ttl,&valueForm_ttl);
        list_addElement(localVarFormParameters,keyPairForm_ttl);
    }

    // form parameters
    char *keyForm_prio = NULL;
    int valueForm_prio = 0;
    keyValuePair_t *keyPairForm_prio = 0;
    if (prio != NULL)
    {
        keyForm_prio = strdup("prio");
        valueForm_prio = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueForm_prio, MAX_NUMBER_LENGTH, "%d", *prio);
        keyPairForm_prio = keyValuePair_create(keyForm_prio,&valueForm_prio);
        list_addElement(localVarFormParameters,keyPairForm_prio);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Add DNS Domain Response");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    list_freeList(localVarFormParameters);
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    free(localVarToReplace_id);
    if (keyForm_name) {
        free(keyForm_name);
        keyForm_name = NULL;
    }
    if (valueForm_name) {
        free(valueForm_name);
        valueForm_name = NULL;
    }
    keyValuePair_free(keyPairForm_name);
    if (keyForm_type) {
        free(keyForm_type);
        keyForm_type = NULL;
    }
    free(keyPairForm_type);
    if (keyForm_content) {
        free(keyForm_content);
        keyForm_content = NULL;
    }
    if (valueForm_content) {
        free(valueForm_content);
        valueForm_content = NULL;
    }
    keyValuePair_free(keyPairForm_content);
    if (keyForm_ttl) {
        free(keyForm_ttl);
        keyForm_ttl = NULL;
    }
    free(keyPairForm_ttl);
    if (keyForm_prio) {
        free(keyForm_prio);
        keyForm_prio = NULL;
    }
    free(keyPairForm_prio);

}

// Permanently delete a DNS zone and every record it contains
//
// Removes the zone identified by path `id` AND every record it contains from PowerDNS in a single transaction. **Permanent — no soft-delete, no undo.** Any service relying on these records (web, mail, SPF/DKIM, third-party domain verifications, ACME challenges) will start failing as resolver caches expire (per-record TTL, default 86400s). **Note:** this only deletes the hosted zone on InterServer's nameservers — it does not affect registrar delegation. If `cdns1`/`cdns2` are still delegated at the registrar, queries will return NXDOMAIN/SERVFAIL until delegation is changed or the zone is recreated. Sibling ops: `deleteDnsRecord` (delete one record only), `addDnsDomain` (recreate), `updateDomainNameservers` (change registrar delegation).  **Path param:** - `id` (string, required) — zone ID from `getDnsList`.  **Returns:** `{success: true, text: \"Domain deleted\"}`.  **Side effects:** - Deletes every `records` row with `domain_id={id}`. - Deletes the `domains` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone not found / not owned.  **Related calls:** - **Delete one record only:** `deleteDnsRecord`. - **Recreate the zone:** `addDnsDomain`. - **Update registrar delegation:** `updateDomainNameservers` (Domains tag). 
//
success_text_response_t*
DNSAPI_deleteDnsDomain(apiClient_t *apiClient, char *id)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/dns/{id}");

    if(!id)
        goto end;


    // Path Params
    long sizeOfPathParams_id = strlen(id)+3 + sizeof("{ id }") - 1;
    if(id == NULL) {
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    sprintf(localVarToReplace_id, "{%s}", "id");

    localVarPath = strReplace(localVarPath, localVarToReplace_id, id);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "DELETE");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DNSAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(DNSAPIlocalVarJSON);
        cJSON_Delete(DNSAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Permanently delete one DNS record from a zone — zone itself is preserved
//
// Removes the record identified by `recordId` from zone `domainId`. The zone itself remains intact — only the one record is dropped. **Permanent** — applied to PowerDNS immediately, but resolvers continue to answer with cached values until the previous TTL expires. Use to surgically remove an A/AAAA/MX/TXT etc. record; to drop the entire zone and all its records, use `deleteDnsDomain`. Sibling ops: `getDnsDomain` (verify after deletion), `deleteDnsDomain`, `updateDnsRecord`.  **Path params:** - `domainId` (integer, required) — zone ID from `getDnsList.id`. - `recordId` (integer, required) — record ID from `getDnsDomain.id`.  **Returns:** `{success: true, text: \"domain record deleted\"}`.  **Auth:** Session/API key. Zone ownership enforced via `get_dns_domain($domainId)`.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone/record not found or not owned. - `error removing domain record` — underlying DB delete failed.  **Related calls:** - **Verify after delete:** `getDnsDomain`. - **Recreate:** `addDnsRecord`. - **Delete entire zone instead:** `deleteDnsDomain`. 
//
success_text_response_t*
DNSAPI_deleteDnsRecord(apiClient_t *apiClient, int *domainId, int *recordId)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/dns/{domainId}/{recordId}");



    // Path Params
    long sizeOfPathParams_domainId =  +  + sizeof("{ domainId }") - 1;
    if(domainId == 0){
        goto end;
    }
    char* localVarToReplace_domainId = malloc(sizeOfPathParams_domainId);
    snprintf(localVarToReplace_domainId, sizeOfPathParams_domainId, "{%s}", "domainId");

    char localVarBuff_domainId[256];
    snprintf(localVarBuff_domainId, sizeof localVarBuff_domainId, "%ld", (long)*domainId);

    localVarPath = strReplace(localVarPath, localVarToReplace_domainId, localVarBuff_domainId);


    // Path Params
    long sizeOfPathParams_recordId =  +  + sizeof("{ recordId }") - 1;
    if(recordId == 0){
        goto end;
    }
    char* localVarToReplace_recordId = malloc(sizeOfPathParams_recordId);
    snprintf(localVarToReplace_recordId, sizeOfPathParams_recordId, "{%s}", "recordId");

    char localVarBuff_recordId[256];
    snprintf(localVarBuff_recordId, sizeof localVarBuff_recordId, "%ld", (long)*recordId);

    localVarPath = strReplace(localVarPath, localVarToReplace_recordId, localVarBuff_recordId);



    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "DELETE");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DNSAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(DNSAPIlocalVarJSON);
        cJSON_Delete(DNSAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_domainId);
    free(localVarToReplace_recordId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List every DNS record in one zone with the IDs needed to edit or delete them
//
// Returns the full record set for the specified PowerDNS zone (NS, A, AAAA, CNAME, MX, TXT, SRV, CAA, SOA, etc.) in a single response. Ownership is enforced via `get_dns_domain($id)` against the session account — cross-account access returns an error rather than 200. Use a returned record `id` together with the zone `id` to call `updateDnsRecord` or `deleteDnsRecord`. Sibling ops: `getDnsList`, `addDnsRecord`, `updateDnsRecord`, `deleteDnsRecord`, `deleteDnsDomain`.  **Path param:** - `id` (integer, required) — zone ID from `getDnsList.id`.  **Returns:** Array of `DnsRecord`: - `id` (string) — record ID; pass to `updateDnsRecord` / `deleteDnsRecord`. - `domain_id` (string) — parent zone ID. - `name` (string) — FQDN of the record (apex or subdomain). - `type` (string) — `A` / `AAAA` / `CNAME` / `MX` / `TXT` / `NS` / `SRV` / `CAA` / `SOA` / `PTR` / `SPF` / `TLSA`. - `content` (string) — record value (IP for A/AAAA, hostname for CNAME/NS/MX, free text for TXT, etc.). - `ttl` (string) — seconds; default 86400. - `prio` (string) — priority for MX/SRV (`0` for non-priority records). - `disabled` (string `0`/`1`), `ordername` (string), `auth` (string `0`/`1`).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `invalid or missing domain or record id` — zone not found or owned by another account.  **Related calls:** - **Add a record:** `addDnsRecord` (POST same path). - **Update a record:** `updateDnsRecord` (`POST /dns/{domainId}/{recordId}`). - **Delete a record:** `deleteDnsRecord`. - **Delete the whole zone:** `deleteDnsDomain` (DELETE same path). 
//
list_t*
DNSAPI_getDnsDomain(apiClient_t *apiClient, int *id)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/dns/{id}");



    // Path Params
    long sizeOfPathParams_id =  + sizeof("{ id }") - 1;
    if(id == 0){
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    snprintf(localVarToReplace_id, sizeOfPathParams_id, "{%s}", "id");

    char localVarBuff_id[256];
    snprintf(localVarBuff_id, sizeof localVarBuff_id, "%ld", (long)*id);

    localVarPath = strReplace(localVarPath, localVarToReplace_id, localVarBuff_id);



    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","The DNS records for the specified domain.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DNSAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(DNSAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, DNSAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( DNSAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List DNS zones hosted on the account with each zone's apex A-record IP
//
// Returns every PowerDNS-hosted authoritative zone owned by the authenticated account, one row per zone, with the IP from the apex `A` record. Canonical entry point for discovering zone IDs before reading or editing records. The list is filtered server-side by session `account_id` — cross-account zones are never returned. Empty array means the account holds no zones (not an error). **Note:** this is the hosted DNS zone list, not registrar delegation — use the Domains tag's `updateDomainNameservers` to point a registered domain at `cdns1.interserver.net`/`cdns2.interserver.net`. Sibling ops: `getDnsDomain`, `addDnsDomain`, `addDnsRecord`, `deleteDnsDomain`.  **Path/Query/Body:** None.  **Returns:** Array of `DnsListItem`: - `id` (integer) — zone ID; pass to `getDnsDomain` / `addDnsRecord` / `deleteDnsDomain`. - `name` (string) — zone FQDN (e.g. `example.com`). - `content` (string) — IP from the apex `A` record matching the zone name (empty when no apex A exists yet).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-zone record list:** `getDnsDomain`. - **Add a zone:** `addDnsDomain`. - **Add a record to an existing zone:** `addDnsRecord`. - **Registrar delegation:** `getDomainNameservers` / `updateDomainNameservers` (Domains tag). 
//
list_t*
DNSAPI_getDnsList(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/dns");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Listing of DNS domains on the account with their primary A record.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DNSAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(DNSAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, DNSAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( DNSAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Replace values on an existing DNS record (name, type, content, ttl, priority)
//
// Replaces the record identified by `recordId` within zone `domainId` with new values. **TTL caveat:** the change is written to PowerDNS immediately, but already-cached resolver answers persist until the previous record's TTL expires — plan TTL down ahead of a clean cutover. Type is validated against the global `$rtypes` allowlist; content is validated against the record type. Sibling ops: `getDnsDomain` (read), `addDnsRecord` (create), `deleteDnsRecord`.  **Path params:** - `domainId` (integer, required) — zone ID from `getDnsList.id`. - `recordId` (integer, required) — record ID from `getDnsDomain.id`.  **Body fields (form or JSON, schema `DnsUpdateRecord`):** - `name` (string, required) — FQDN at/below zone apex. - `type` (string, required) — one of the allowed PowerDNS types. - `content` (string, required) — value matching `type`. - `ttl` (integer, required) — seconds. - `prio` (integer, required) — MX/SRV priority (`0` otherwise).  **Returns:** `{success: true, text: \"domain record updated\"}`.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - `401` — unauthenticated. - `Type must be one of: ...` — `type` not in `$rtypes`. - `invalid or missing domain or record id` — zone/record not found / not owned. - Content-format validation text — `validate_input()` failure.  **Related calls:** - **Read first:** `getDnsDomain`. - **Delete:** `deleteDnsRecord`. - **Create new:** `addDnsRecord`. 
//
success_text_response_t*
DNSAPI_updateDnsRecord(apiClient_t *apiClient, int *domainId, int *recordId, char *name, dns_record_type_e type, char *content, char *ttl, char *prio, char *disabled, char *ordername, char *auth)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_createList();
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/dns/{domainId}/{recordId}");



    // Path Params
    long sizeOfPathParams_domainId =  +  + sizeof("{ domainId }") - 1;
    if(domainId == 0){
        goto end;
    }
    char* localVarToReplace_domainId = malloc(sizeOfPathParams_domainId);
    snprintf(localVarToReplace_domainId, sizeOfPathParams_domainId, "{%s}", "domainId");

    char localVarBuff_domainId[256];
    snprintf(localVarBuff_domainId, sizeof localVarBuff_domainId, "%ld", (long)*domainId);

    localVarPath = strReplace(localVarPath, localVarToReplace_domainId, localVarBuff_domainId);


    // Path Params
    long sizeOfPathParams_recordId =  +  + sizeof("{ recordId }") - 1;
    if(recordId == 0){
        goto end;
    }
    char* localVarToReplace_recordId = malloc(sizeOfPathParams_recordId);
    snprintf(localVarToReplace_recordId, sizeOfPathParams_recordId, "{%s}", "recordId");

    char localVarBuff_recordId[256];
    snprintf(localVarBuff_recordId, sizeof localVarBuff_recordId, "%ld", (long)*recordId);

    localVarPath = strReplace(localVarPath, localVarToReplace_recordId, localVarBuff_recordId);




    // form parameters
    char *keyForm_name = NULL;
    char * valueForm_name = 0;
    keyValuePair_t *keyPairForm_name = 0;
    if (name != NULL)
    {
        keyForm_name = strdup("name");
        valueForm_name = strdup((name));
        keyPairForm_name = keyValuePair_create(keyForm_name,valueForm_name);
        list_addElement(localVarFormParameters,keyPairForm_name);
    }

    // form parameters
    char *keyForm_type = NULL;
    dns_record_type_e valueForm_type = 0;
    keyValuePair_t *keyPairForm_type = 0;
    if (type != 0)
    {
        keyForm_type = strdup("type");
        valueForm_type = (type);
        keyPairForm_type = keyValuePair_create(keyForm_type,&valueForm_type);
        list_addElement(localVarFormParameters,keyPairForm_type);
    }

    // form parameters
    char *keyForm_content = NULL;
    char * valueForm_content = 0;
    keyValuePair_t *keyPairForm_content = 0;
    if (content != NULL)
    {
        keyForm_content = strdup("content");
        valueForm_content = strdup((content));
        keyPairForm_content = keyValuePair_create(keyForm_content,valueForm_content);
        list_addElement(localVarFormParameters,keyPairForm_content);
    }

    // form parameters
    char *keyForm_ttl = NULL;
    char * valueForm_ttl = 0;
    keyValuePair_t *keyPairForm_ttl = 0;
    if (ttl != NULL)
    {
        keyForm_ttl = strdup("ttl");
        valueForm_ttl = strdup((ttl));
        keyPairForm_ttl = keyValuePair_create(keyForm_ttl,valueForm_ttl);
        list_addElement(localVarFormParameters,keyPairForm_ttl);
    }

    // form parameters
    char *keyForm_prio = NULL;
    char * valueForm_prio = 0;
    keyValuePair_t *keyPairForm_prio = 0;
    if (prio != NULL)
    {
        keyForm_prio = strdup("prio");
        valueForm_prio = strdup((prio));
        keyPairForm_prio = keyValuePair_create(keyForm_prio,valueForm_prio);
        list_addElement(localVarFormParameters,keyPairForm_prio);
    }

    // form parameters
    char *keyForm_disabled = NULL;
    char * valueForm_disabled = 0;
    keyValuePair_t *keyPairForm_disabled = 0;
    if (disabled != NULL)
    {
        keyForm_disabled = strdup("disabled");
        valueForm_disabled = strdup((disabled));
        keyPairForm_disabled = keyValuePair_create(keyForm_disabled,valueForm_disabled);
        list_addElement(localVarFormParameters,keyPairForm_disabled);
    }

    // form parameters
    char *keyForm_ordername = NULL;
    char * valueForm_ordername = 0;
    keyValuePair_t *keyPairForm_ordername = 0;
    if (ordername != NULL)
    {
        keyForm_ordername = strdup("ordername");
        valueForm_ordername = strdup((ordername));
        keyPairForm_ordername = keyValuePair_create(keyForm_ordername,valueForm_ordername);
        list_addElement(localVarFormParameters,keyPairForm_ordername);
    }

    // form parameters
    char *keyForm_auth = NULL;
    char * valueForm_auth = 0;
    keyValuePair_t *keyPairForm_auth = 0;
    if (auth != NULL)
    {
        keyForm_auth = strdup("auth");
        valueForm_auth = strdup((auth));
        keyPairForm_auth = keyValuePair_create(keyForm_auth,valueForm_auth);
        list_addElement(localVarFormParameters,keyPairForm_auth);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DNSAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(DNSAPIlocalVarJSON);
        cJSON_Delete(DNSAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    list_freeList(localVarFormParameters);
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    free(localVarToReplace_domainId);
    free(localVarToReplace_recordId);
    if (keyForm_name) {
        free(keyForm_name);
        keyForm_name = NULL;
    }
    if (valueForm_name) {
        free(valueForm_name);
        valueForm_name = NULL;
    }
    free(keyPairForm_name);
    if (keyForm_type) {
        free(keyForm_type);
        keyForm_type = NULL;
    }
    free(keyPairForm_type);
    if (keyForm_content) {
        free(keyForm_content);
        keyForm_content = NULL;
    }
    if (valueForm_content) {
        free(valueForm_content);
        valueForm_content = NULL;
    }
    free(keyPairForm_content);
    if (keyForm_ttl) {
        free(keyForm_ttl);
        keyForm_ttl = NULL;
    }
    if (valueForm_ttl) {
        free(valueForm_ttl);
        valueForm_ttl = NULL;
    }
    free(keyPairForm_ttl);
    if (keyForm_prio) {
        free(keyForm_prio);
        keyForm_prio = NULL;
    }
    if (valueForm_prio) {
        free(valueForm_prio);
        valueForm_prio = NULL;
    }
    free(keyPairForm_prio);
    if (keyForm_disabled) {
        free(keyForm_disabled);
        keyForm_disabled = NULL;
    }
    if (valueForm_disabled) {
        free(valueForm_disabled);
        valueForm_disabled = NULL;
    }
    free(keyPairForm_disabled);
    if (keyForm_ordername) {
        free(keyForm_ordername);
        keyForm_ordername = NULL;
    }
    if (valueForm_ordername) {
        free(valueForm_ordername);
        valueForm_ordername = NULL;
    }
    free(keyPairForm_ordername);
    if (keyForm_auth) {
        free(keyForm_auth);
        keyForm_auth = NULL;
    }
    if (valueForm_auth) {
        free(valueForm_auth);
        valueForm_auth = NULL;
    }
    free(keyPairForm_auth);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}


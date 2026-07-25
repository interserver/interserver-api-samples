#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "domain_order_request.h"


char* domain_order_request_type_ToString(interserver_management_api_domain_order_request_TYPE_e type) {
    char* typeArray[] =  { "NULL", "register", "transfer" };
    return typeArray[type];
}

interserver_management_api_domain_order_request_TYPE_e domain_order_request_type_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "NULL", "register", "transfer" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* domain_order_request_whois_privacy_ToString(interserver_management_api_domain_order_request_WHOISPRIVACY_e whois_privacy) {
    char* whois_privacyArray[] =  { "NULL", "enable", "disable" };
    return whois_privacyArray[whois_privacy];
}

interserver_management_api_domain_order_request_WHOISPRIVACY_e domain_order_request_whois_privacy_FromString(char* whois_privacy){
    int stringToReturn = 0;
    char *whois_privacyArray[] =  { "NULL", "enable", "disable" };
    size_t sizeofArray = sizeof(whois_privacyArray) / sizeof(whois_privacyArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(whois_privacy, whois_privacyArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static domain_order_request_t *domain_order_request_create_internal(
    char *hostname,
    interserver_management_api_domain_order_request_TYPE_e type,
    char *coupon,
    interserver_management_api_domain_order_request_WHOISPRIVACY_e whois_privacy
    ) {
    domain_order_request_t *domain_order_request_local_var = malloc(sizeof(domain_order_request_t));
    if (!domain_order_request_local_var) {
        return NULL;
    }
    memset(domain_order_request_local_var, 0, sizeof(domain_order_request_t));
    domain_order_request_local_var->_library_owned = 1;
    domain_order_request_local_var->hostname = hostname;
    domain_order_request_local_var->type = type;
    domain_order_request_local_var->coupon = coupon;
    domain_order_request_local_var->whois_privacy = whois_privacy;
    return domain_order_request_local_var;
}

__attribute__((deprecated)) domain_order_request_t *domain_order_request_create(
    char *hostname,
    interserver_management_api_domain_order_request_TYPE_e type,
    char *coupon,
    interserver_management_api_domain_order_request_WHOISPRIVACY_e whois_privacy
    ) {
    domain_order_request_t *result = domain_order_request_create_internal (
        hostname,
        type,
        coupon,
        whois_privacy
        );
    if (!result) {
    }
    return result;
}

void domain_order_request_free(domain_order_request_t *domain_order_request) {
    if(NULL == domain_order_request){
        return ;
    }
    if(domain_order_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "domain_order_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (domain_order_request->hostname) {
        free(domain_order_request->hostname);
        domain_order_request->hostname = NULL;
    }
    if (domain_order_request->coupon) {
        free(domain_order_request->coupon);
        domain_order_request->coupon = NULL;
    }
    free(domain_order_request);
}

cJSON *domain_order_request_convertToJSON(domain_order_request_t *domain_order_request) {
    cJSON *item = cJSON_CreateObject();

    // domain_order_request->hostname
    if (!domain_order_request->hostname) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "hostname", domain_order_request->hostname) == NULL) {
    goto fail; //String
    }


    // domain_order_request->type
    if(domain_order_request->type != interserver_management_api_domain_order_request_TYPE_NULL) {
    if(cJSON_AddStringToObject(item, "type", domain_order_request_type_ToString(domain_order_request->type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // domain_order_request->coupon
    if(domain_order_request->coupon) {
    if(cJSON_AddStringToObject(item, "coupon", domain_order_request->coupon) == NULL) {
    goto fail; //String
    }
    }


    // domain_order_request->whois_privacy
    if(domain_order_request->whois_privacy != interserver_management_api_domain_order_request_WHOISPRIVACY_NULL) {
    if(cJSON_AddStringToObject(item, "whois_privacy", domain_order_request_whois_privacy_ToString(domain_order_request->whois_privacy)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

domain_order_request_t *domain_order_request_parseFromJSON(cJSON *domain_order_requestJSON){

    domain_order_request_t *domain_order_request_local_var = NULL;

    char *hostname_local_str = NULL;

    char *coupon_local_str = NULL;

    // domain_order_request->hostname
    cJSON *hostname = cJSON_GetObjectItemCaseSensitive(domain_order_requestJSON, "hostname");
    if (cJSON_IsNull(hostname)) {
        hostname = NULL;
    }
    if (!hostname) {
        goto end;
    }

    
    if(!cJSON_IsString(hostname))
    {
    goto end; //String
    }

    // domain_order_request->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(domain_order_requestJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    interserver_management_api_domain_order_request_TYPE_e typeVariable;
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = domain_order_request_type_FromString(type->valuestring);
    }

    // domain_order_request->coupon
    cJSON *coupon = cJSON_GetObjectItemCaseSensitive(domain_order_requestJSON, "coupon");
    if (cJSON_IsNull(coupon)) {
        coupon = NULL;
    }
    if (coupon) { 
    if(!cJSON_IsString(coupon) && !cJSON_IsNull(coupon))
    {
    goto end; //String
    }
    }

    // domain_order_request->whois_privacy
    cJSON *whois_privacy = cJSON_GetObjectItemCaseSensitive(domain_order_requestJSON, "whois_privacy");
    if (cJSON_IsNull(whois_privacy)) {
        whois_privacy = NULL;
    }
    interserver_management_api_domain_order_request_WHOISPRIVACY_e whois_privacyVariable;
    if (whois_privacy) { 
    if(!cJSON_IsString(whois_privacy))
    {
    goto end; //Enum
    }
    whois_privacyVariable = domain_order_request_whois_privacy_FromString(whois_privacy->valuestring);
    }


    if (hostname && !cJSON_IsNull(hostname)) hostname_local_str = strdup(hostname->valuestring);
    if (coupon && !cJSON_IsNull(coupon)) coupon_local_str = strdup(coupon->valuestring);

    domain_order_request_local_var = domain_order_request_create_internal (
        hostname_local_str,
        type ? typeVariable : interserver_management_api_domain_order_request_TYPE_NULL,
        coupon_local_str,
        whois_privacy ? whois_privacyVariable : interserver_management_api_domain_order_request_WHOISPRIVACY_NULL
        );

    if (!domain_order_request_local_var) {
        goto end;
    }

    return domain_order_request_local_var;
end:
    if (hostname_local_str) {
        free(hostname_local_str);
        hostname_local_str = NULL;
    }
    if (coupon_local_str) {
        free(coupon_local_str);
        coupon_local_str = NULL;
    }
    return NULL;

}

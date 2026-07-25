/*
 * domain_order_request.h
 *
 * Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 */

#ifndef _domain_order_request_H_
#define _domain_order_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct domain_order_request_t domain_order_request_t;

#include "any_type.h"

// Enum TYPE for domain_order_request

typedef enum  { interserver_management_api_domain_order_request_TYPE_NULL = 0, interserver_management_api_domain_order_request_TYPE__register, interserver_management_api_domain_order_request_TYPE_transfer } interserver_management_api_domain_order_request_TYPE_e;

char* domain_order_request_type_ToString(interserver_management_api_domain_order_request_TYPE_e type);

interserver_management_api_domain_order_request_TYPE_e domain_order_request_type_FromString(char* type);

// Enum WHOISPRIVACY for domain_order_request

typedef enum  { interserver_management_api_domain_order_request_WHOISPRIVACY_NULL = 0, interserver_management_api_domain_order_request_WHOISPRIVACY_enable, interserver_management_api_domain_order_request_WHOISPRIVACY_disable } interserver_management_api_domain_order_request_WHOISPRIVACY_e;

char* domain_order_request_whois_privacy_ToString(interserver_management_api_domain_order_request_WHOISPRIVACY_e whois_privacy);

interserver_management_api_domain_order_request_WHOISPRIVACY_e domain_order_request_whois_privacy_FromString(char* whois_privacy);



typedef struct domain_order_request_t {
    char *hostname; // string
    interserver_management_api_domain_order_request_TYPE_e type; //enum
    char *coupon; // string
    interserver_management_api_domain_order_request_WHOISPRIVACY_e whois_privacy; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} domain_order_request_t;

__attribute__((deprecated)) domain_order_request_t *domain_order_request_create(
    char *hostname,
    interserver_management_api_domain_order_request_TYPE_e type,
    char *coupon,
    interserver_management_api_domain_order_request_WHOISPRIVACY_e whois_privacy
);

void domain_order_request_free(domain_order_request_t *domain_order_request);

domain_order_request_t *domain_order_request_parseFromJSON(cJSON *domain_order_requestJSON);

cJSON *domain_order_request_convertToJSON(domain_order_request_t *domain_order_request);

#endif /* _domain_order_request_H_ */


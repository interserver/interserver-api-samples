/*
 * domain_nameserver_get_response_inner.h
 *
 * 
 */

#ifndef _domain_nameserver_get_response_inner_H_
#define _domain_nameserver_get_response_inner_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct domain_nameserver_get_response_inner_t domain_nameserver_get_response_inner_t;


// Enum CANDELETE for domain_nameserver_get_response_inner

typedef enum  { interserver_management_api_domain_nameserver_get_response_inner_CANDELETE_NULL = 0, interserver_management_api_domain_nameserver_get_response_inner_CANDELETE__0, interserver_management_api_domain_nameserver_get_response_inner_CANDELETE__1, interserver_management_api_domain_nameserver_get_response_inner_CANDELETE__11184809 } interserver_management_api_domain_nameserver_get_response_inner_CANDELETE_e;

char* domain_nameserver_get_response_inner_can_delete_ToString(interserver_management_api_domain_nameserver_get_response_inner_CANDELETE_e can_delete);

interserver_management_api_domain_nameserver_get_response_inner_CANDELETE_e domain_nameserver_get_response_inner_can_delete_FromString(char* can_delete);



typedef struct domain_nameserver_get_response_inner_t {
    char *name; // string
    char *ipaddress; // string
    interserver_management_api_domain_nameserver_get_response_inner_CANDELETE_e can_delete; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} domain_nameserver_get_response_inner_t;

__attribute__((deprecated)) domain_nameserver_get_response_inner_t *domain_nameserver_get_response_inner_create(
    char *name,
    char *ipaddress,
    interserver_management_api_domain_nameserver_get_response_inner_CANDELETE_e can_delete
);

void domain_nameserver_get_response_inner_free(domain_nameserver_get_response_inner_t *domain_nameserver_get_response_inner);

domain_nameserver_get_response_inner_t *domain_nameserver_get_response_inner_parseFromJSON(cJSON *domain_nameserver_get_response_innerJSON);

cJSON *domain_nameserver_get_response_inner_convertToJSON(domain_nameserver_get_response_inner_t *domain_nameserver_get_response_inner);

#endif /* _domain_nameserver_get_response_inner_H_ */


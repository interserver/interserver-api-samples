/*
 * deny_rule_new.h
 *
 * The data for a email deny rule record.
 */

#ifndef _deny_rule_new_H_
#define _deny_rule_new_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct deny_rule_new_t deny_rule_new_t;


// Enum TYPE for deny_rule_new

typedef enum  { interserver_management_api_deny_rule_new_TYPE_NULL = 0, interserver_management_api_deny_rule_new_TYPE_domain, interserver_management_api_deny_rule_new_TYPE_email, interserver_management_api_deny_rule_new_TYPE_startswith, interserver_management_api_deny_rule_new_TYPE_destination, interserver_management_api_deny_rule_new_TYPE__11184809 } interserver_management_api_deny_rule_new_TYPE_e;

char* deny_rule_new_type_ToString(interserver_management_api_deny_rule_new_TYPE_e type);

interserver_management_api_deny_rule_new_TYPE_e deny_rule_new_type_FromString(char* type);



typedef struct deny_rule_new_t {
    interserver_management_api_deny_rule_new_TYPE_e type; //enum
    char *data; // string
    char *user; // string

    int _library_owned; // Is the library responsible for freeing this object?
} deny_rule_new_t;

__attribute__((deprecated)) deny_rule_new_t *deny_rule_new_create(
    interserver_management_api_deny_rule_new_TYPE_e type,
    char *data,
    char *user
);

void deny_rule_new_free(deny_rule_new_t *deny_rule_new);

deny_rule_new_t *deny_rule_new_parseFromJSON(cJSON *deny_rule_newJSON);

cJSON *deny_rule_new_convertToJSON(deny_rule_new_t *deny_rule_new);

#endif /* _deny_rule_new_H_ */


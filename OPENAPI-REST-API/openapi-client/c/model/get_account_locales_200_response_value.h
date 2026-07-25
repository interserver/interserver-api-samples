/*
 * get_account_locales_200_response_value.h
 *
 * 
 */

#ifndef _get_account_locales_200_response_value_H_
#define _get_account_locales_200_response_value_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct get_account_locales_200_response_value_t get_account_locales_200_response_value_t;




typedef struct get_account_locales_200_response_value_t {
    char *name; // string
    char *local_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} get_account_locales_200_response_value_t;

__attribute__((deprecated)) get_account_locales_200_response_value_t *get_account_locales_200_response_value_create(
    char *name,
    char *local_name
);

void get_account_locales_200_response_value_free(get_account_locales_200_response_value_t *get_account_locales_200_response_value);

get_account_locales_200_response_value_t *get_account_locales_200_response_value_parseFromJSON(cJSON *get_account_locales_200_response_valueJSON);

cJSON *get_account_locales_200_response_value_convertToJSON(get_account_locales_200_response_value_t *get_account_locales_200_response_value);

#endif /* _get_account_locales_200_response_value_H_ */


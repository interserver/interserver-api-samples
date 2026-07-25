#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "get_account_locales_200_response_value.h"



static get_account_locales_200_response_value_t *get_account_locales_200_response_value_create_internal(
    char *name,
    char *local_name
    ) {
    get_account_locales_200_response_value_t *get_account_locales_200_response_value_local_var = malloc(sizeof(get_account_locales_200_response_value_t));
    if (!get_account_locales_200_response_value_local_var) {
        return NULL;
    }
    memset(get_account_locales_200_response_value_local_var, 0, sizeof(get_account_locales_200_response_value_t));
    get_account_locales_200_response_value_local_var->_library_owned = 1;
    get_account_locales_200_response_value_local_var->name = name;
    get_account_locales_200_response_value_local_var->local_name = local_name;
    return get_account_locales_200_response_value_local_var;
}

__attribute__((deprecated)) get_account_locales_200_response_value_t *get_account_locales_200_response_value_create(
    char *name,
    char *local_name
    ) {
    get_account_locales_200_response_value_t *result = get_account_locales_200_response_value_create_internal (
        name,
        local_name
        );
    if (!result) {
    }
    return result;
}

void get_account_locales_200_response_value_free(get_account_locales_200_response_value_t *get_account_locales_200_response_value) {
    if(NULL == get_account_locales_200_response_value){
        return ;
    }
    if(get_account_locales_200_response_value->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "get_account_locales_200_response_value_free");
        return ;
    }
    listEntry_t *listEntry;
    if (get_account_locales_200_response_value->name) {
        free(get_account_locales_200_response_value->name);
        get_account_locales_200_response_value->name = NULL;
    }
    if (get_account_locales_200_response_value->local_name) {
        free(get_account_locales_200_response_value->local_name);
        get_account_locales_200_response_value->local_name = NULL;
    }
    free(get_account_locales_200_response_value);
}

cJSON *get_account_locales_200_response_value_convertToJSON(get_account_locales_200_response_value_t *get_account_locales_200_response_value) {
    cJSON *item = cJSON_CreateObject();

    // get_account_locales_200_response_value->name
    if(get_account_locales_200_response_value->name) {
    if(cJSON_AddStringToObject(item, "name", get_account_locales_200_response_value->name) == NULL) {
    goto fail; //String
    }
    }


    // get_account_locales_200_response_value->local_name
    if(get_account_locales_200_response_value->local_name) {
    if(cJSON_AddStringToObject(item, "local_name", get_account_locales_200_response_value->local_name) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

get_account_locales_200_response_value_t *get_account_locales_200_response_value_parseFromJSON(cJSON *get_account_locales_200_response_valueJSON){

    get_account_locales_200_response_value_t *get_account_locales_200_response_value_local_var = NULL;

    char *name_local_str = NULL;

    char *local_name_local_str = NULL;

    // get_account_locales_200_response_value->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(get_account_locales_200_response_valueJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // get_account_locales_200_response_value->local_name
    cJSON *local_name = cJSON_GetObjectItemCaseSensitive(get_account_locales_200_response_valueJSON, "local_name");
    if (cJSON_IsNull(local_name)) {
        local_name = NULL;
    }
    if (local_name) { 
    if(!cJSON_IsString(local_name) && !cJSON_IsNull(local_name))
    {
    goto end; //String
    }
    }


    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);
    if (local_name && !cJSON_IsNull(local_name)) local_name_local_str = strdup(local_name->valuestring);

    get_account_locales_200_response_value_local_var = get_account_locales_200_response_value_create_internal (
        name_local_str,
        local_name_local_str
        );

    if (!get_account_locales_200_response_value_local_var) {
        goto end;
    }

    return get_account_locales_200_response_value_local_var;
end:
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    if (local_name_local_str) {
        free(local_name_local_str);
        local_name_local_str = NULL;
    }
    return NULL;

}

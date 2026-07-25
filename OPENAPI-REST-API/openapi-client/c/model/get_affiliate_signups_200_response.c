#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "get_affiliate_signups_200_response.h"



static get_affiliate_signups_200_response_t *get_affiliate_signups_200_response_create_internal(
    object_t *data
    ) {
    get_affiliate_signups_200_response_t *get_affiliate_signups_200_response_local_var = malloc(sizeof(get_affiliate_signups_200_response_t));
    if (!get_affiliate_signups_200_response_local_var) {
        return NULL;
    }
    memset(get_affiliate_signups_200_response_local_var, 0, sizeof(get_affiliate_signups_200_response_t));
    get_affiliate_signups_200_response_local_var->_library_owned = 1;
    get_affiliate_signups_200_response_local_var->data = data;
    return get_affiliate_signups_200_response_local_var;
}

__attribute__((deprecated)) get_affiliate_signups_200_response_t *get_affiliate_signups_200_response_create(
    object_t *data
    ) {
    get_affiliate_signups_200_response_t *result = get_affiliate_signups_200_response_create_internal (
        data
        );
    if (!result) {
    }
    return result;
}

void get_affiliate_signups_200_response_free(get_affiliate_signups_200_response_t *get_affiliate_signups_200_response) {
    if(NULL == get_affiliate_signups_200_response){
        return ;
    }
    if(get_affiliate_signups_200_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "get_affiliate_signups_200_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (get_affiliate_signups_200_response->data) {
        object_free(get_affiliate_signups_200_response->data);
        get_affiliate_signups_200_response->data = NULL;
    }
    free(get_affiliate_signups_200_response);
}

cJSON *get_affiliate_signups_200_response_convertToJSON(get_affiliate_signups_200_response_t *get_affiliate_signups_200_response) {
    cJSON *item = cJSON_CreateObject();

    // get_affiliate_signups_200_response->data
    if(get_affiliate_signups_200_response->data) {
    cJSON *data_object = object_convertToJSON(get_affiliate_signups_200_response->data);
    if(data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "data", data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

get_affiliate_signups_200_response_t *get_affiliate_signups_200_response_parseFromJSON(cJSON *get_affiliate_signups_200_responseJSON){

    get_affiliate_signups_200_response_t *get_affiliate_signups_200_response_local_var = NULL;

    // get_affiliate_signups_200_response->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(get_affiliate_signups_200_responseJSON, "data");
    if (cJSON_IsNull(data)) {
        data = NULL;
    }
    object_t *data_local_object = NULL;
    if (data) { 
    data_local_object = object_parseFromJSON(data); //object
    }



    get_affiliate_signups_200_response_local_var = get_affiliate_signups_200_response_create_internal (
        data ? data_local_object : NULL
        );

    if (!get_affiliate_signups_200_response_local_var) {
        goto end;
    }

    return get_affiliate_signups_200_response_local_var;
end:
    return NULL;

}

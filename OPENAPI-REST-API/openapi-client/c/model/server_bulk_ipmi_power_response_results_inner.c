#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "server_bulk_ipmi_power_response_results_inner.h"



static server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner_create_internal(
    int *id,
    int *asset,
    char *text,
    char *error
    ) {
    server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner_local_var = malloc(sizeof(server_bulk_ipmi_power_response_results_inner_t));
    if (!server_bulk_ipmi_power_response_results_inner_local_var) {
        return NULL;
    }
    memset(server_bulk_ipmi_power_response_results_inner_local_var, 0, sizeof(server_bulk_ipmi_power_response_results_inner_t));
    server_bulk_ipmi_power_response_results_inner_local_var->_library_owned = 1;
    server_bulk_ipmi_power_response_results_inner_local_var->id = id;
    server_bulk_ipmi_power_response_results_inner_local_var->asset = asset;
    server_bulk_ipmi_power_response_results_inner_local_var->text = text;
    server_bulk_ipmi_power_response_results_inner_local_var->error = error;
    return server_bulk_ipmi_power_response_results_inner_local_var;
}

__attribute__((deprecated)) server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner_create(
    int *id,
    int *asset,
    char *text,
    char *error
    ) {
    int *id_copy = NULL;
    if (id) {
        id_copy = malloc(sizeof(int));
        if (id_copy) *id_copy = *id;
    }
    int *asset_copy = NULL;
    if (asset) {
        asset_copy = malloc(sizeof(int));
        if (asset_copy) *asset_copy = *asset;
    }
    server_bulk_ipmi_power_response_results_inner_t *result = server_bulk_ipmi_power_response_results_inner_create_internal (
        id_copy,
        asset_copy,
        text,
        error
        );
    if (!result) {
        free(id_copy);
        free(asset_copy);
    }
    return result;
}

void server_bulk_ipmi_power_response_results_inner_free(server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner) {
    if(NULL == server_bulk_ipmi_power_response_results_inner){
        return ;
    }
    if(server_bulk_ipmi_power_response_results_inner->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "server_bulk_ipmi_power_response_results_inner_free");
        return ;
    }
    listEntry_t *listEntry;
    if (server_bulk_ipmi_power_response_results_inner->id) {
        free(server_bulk_ipmi_power_response_results_inner->id);
        server_bulk_ipmi_power_response_results_inner->id = NULL;
    }
    if (server_bulk_ipmi_power_response_results_inner->asset) {
        free(server_bulk_ipmi_power_response_results_inner->asset);
        server_bulk_ipmi_power_response_results_inner->asset = NULL;
    }
    if (server_bulk_ipmi_power_response_results_inner->text) {
        free(server_bulk_ipmi_power_response_results_inner->text);
        server_bulk_ipmi_power_response_results_inner->text = NULL;
    }
    if (server_bulk_ipmi_power_response_results_inner->error) {
        free(server_bulk_ipmi_power_response_results_inner->error);
        server_bulk_ipmi_power_response_results_inner->error = NULL;
    }
    free(server_bulk_ipmi_power_response_results_inner);
}

cJSON *server_bulk_ipmi_power_response_results_inner_convertToJSON(server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner) {
    cJSON *item = cJSON_CreateObject();

    // server_bulk_ipmi_power_response_results_inner->id
    if(server_bulk_ipmi_power_response_results_inner->id) {
    if(cJSON_AddNumberToObject(item, "id", *server_bulk_ipmi_power_response_results_inner->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // server_bulk_ipmi_power_response_results_inner->asset
    if(server_bulk_ipmi_power_response_results_inner->asset) {
    if(cJSON_AddNumberToObject(item, "asset", *server_bulk_ipmi_power_response_results_inner->asset) == NULL) {
    goto fail; //Numeric
    }
    }


    // server_bulk_ipmi_power_response_results_inner->text
    if(server_bulk_ipmi_power_response_results_inner->text) {
    if(cJSON_AddStringToObject(item, "text", server_bulk_ipmi_power_response_results_inner->text) == NULL) {
    goto fail; //String
    }
    }


    // server_bulk_ipmi_power_response_results_inner->error
    if(server_bulk_ipmi_power_response_results_inner->error) {
    if(cJSON_AddStringToObject(item, "error", server_bulk_ipmi_power_response_results_inner->error) == NULL) {
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

server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner_parseFromJSON(cJSON *server_bulk_ipmi_power_response_results_innerJSON){

    server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner_local_var = NULL;

    // define the local variable for server_bulk_ipmi_power_response_results_inner->id
    int *id_local_var = NULL;

    // define the local variable for server_bulk_ipmi_power_response_results_inner->asset
    int *asset_local_var = NULL;

    char *text_local_str = NULL;

    char *error_local_str = NULL;

    // server_bulk_ipmi_power_response_results_inner->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(server_bulk_ipmi_power_response_results_innerJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    id_local_var = malloc(sizeof(int));
    if(!id_local_var)
    {
        goto end;
    }
    *id_local_var = id->valuedouble;
    }

    // server_bulk_ipmi_power_response_results_inner->asset
    cJSON *asset = cJSON_GetObjectItemCaseSensitive(server_bulk_ipmi_power_response_results_innerJSON, "asset");
    if (cJSON_IsNull(asset)) {
        asset = NULL;
    }
    if (asset) { 
    if(!cJSON_IsNumber(asset))
    {
    goto end; //Numeric
    }
    asset_local_var = malloc(sizeof(int));
    if(!asset_local_var)
    {
        goto end;
    }
    *asset_local_var = asset->valuedouble;
    }

    // server_bulk_ipmi_power_response_results_inner->text
    cJSON *text = cJSON_GetObjectItemCaseSensitive(server_bulk_ipmi_power_response_results_innerJSON, "text");
    if (cJSON_IsNull(text)) {
        text = NULL;
    }
    if (text) { 
    if(!cJSON_IsString(text) && !cJSON_IsNull(text))
    {
    goto end; //String
    }
    }

    // server_bulk_ipmi_power_response_results_inner->error
    cJSON *error = cJSON_GetObjectItemCaseSensitive(server_bulk_ipmi_power_response_results_innerJSON, "error");
    if (cJSON_IsNull(error)) {
        error = NULL;
    }
    if (error) { 
    if(!cJSON_IsString(error) && !cJSON_IsNull(error))
    {
    goto end; //String
    }
    }


    if (text && !cJSON_IsNull(text)) text_local_str = strdup(text->valuestring);
    if (error && !cJSON_IsNull(error)) error_local_str = strdup(error->valuestring);

    server_bulk_ipmi_power_response_results_inner_local_var = server_bulk_ipmi_power_response_results_inner_create_internal (
        id_local_var,
        asset_local_var,
        text_local_str,
        error_local_str
        );

    if (!server_bulk_ipmi_power_response_results_inner_local_var) {
        goto end;
    }

    return server_bulk_ipmi_power_response_results_inner_local_var;
end:
    if (id_local_var) {
        free(id_local_var);
        id_local_var = NULL;
    }
    if (asset_local_var) {
        free(asset_local_var);
        asset_local_var = NULL;
    }
    if (text_local_str) {
        free(text_local_str);
        text_local_str = NULL;
    }
    if (error_local_str) {
        free(error_local_str);
        error_local_str = NULL;
    }
    return NULL;

}

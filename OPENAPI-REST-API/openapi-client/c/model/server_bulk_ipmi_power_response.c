#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "server_bulk_ipmi_power_response.h"



static server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response_create_internal(
    list_t *results
    ) {
    server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response_local_var = malloc(sizeof(server_bulk_ipmi_power_response_t));
    if (!server_bulk_ipmi_power_response_local_var) {
        return NULL;
    }
    memset(server_bulk_ipmi_power_response_local_var, 0, sizeof(server_bulk_ipmi_power_response_t));
    server_bulk_ipmi_power_response_local_var->_library_owned = 1;
    server_bulk_ipmi_power_response_local_var->results = results;
    return server_bulk_ipmi_power_response_local_var;
}

__attribute__((deprecated)) server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response_create(
    list_t *results
    ) {
    server_bulk_ipmi_power_response_t *result = server_bulk_ipmi_power_response_create_internal (
        results
        );
    if (!result) {
    }
    return result;
}

void server_bulk_ipmi_power_response_free(server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response) {
    if(NULL == server_bulk_ipmi_power_response){
        return ;
    }
    if(server_bulk_ipmi_power_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "server_bulk_ipmi_power_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (server_bulk_ipmi_power_response->results) {
        list_ForEach(listEntry, server_bulk_ipmi_power_response->results) {
            server_bulk_ipmi_power_response_results_inner_free(listEntry->data);
        }
        list_freeList(server_bulk_ipmi_power_response->results);
        server_bulk_ipmi_power_response->results = NULL;
    }
    free(server_bulk_ipmi_power_response);
}

cJSON *server_bulk_ipmi_power_response_convertToJSON(server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response) {
    cJSON *item = cJSON_CreateObject();

    // server_bulk_ipmi_power_response->results
    if (!server_bulk_ipmi_power_response->results) {
        goto fail;
    }
    cJSON *results = cJSON_AddArrayToObject(item, "results");
    if(results == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *resultsListEntry;
    if (server_bulk_ipmi_power_response->results) {
    list_ForEach(resultsListEntry, server_bulk_ipmi_power_response->results) {
    cJSON *itemLocal = server_bulk_ipmi_power_response_results_inner_convertToJSON(resultsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(results, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response_parseFromJSON(cJSON *server_bulk_ipmi_power_responseJSON){

    server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response_local_var = NULL;

    // define the local list for server_bulk_ipmi_power_response->results
    list_t *resultsList = NULL;

    // server_bulk_ipmi_power_response->results
    cJSON *results = cJSON_GetObjectItemCaseSensitive(server_bulk_ipmi_power_responseJSON, "results");
    if (cJSON_IsNull(results)) {
        results = NULL;
    }
    if (!results) {
        goto end;
    }

    
    cJSON *results_local_nonprimitive = NULL;
    if(!cJSON_IsArray(results)){
        goto end; //nonprimitive container
    }

    resultsList = list_createList();

    cJSON_ArrayForEach(results_local_nonprimitive,results )
    {
        if(!cJSON_IsObject(results_local_nonprimitive)){
            goto end;
        }
        server_bulk_ipmi_power_response_results_inner_t *resultsItem = server_bulk_ipmi_power_response_results_inner_parseFromJSON(results_local_nonprimitive);

        list_addElement(resultsList, resultsItem);
    }



    server_bulk_ipmi_power_response_local_var = server_bulk_ipmi_power_response_create_internal (
        resultsList
        );

    if (!server_bulk_ipmi_power_response_local_var) {
        goto end;
    }

    return server_bulk_ipmi_power_response_local_var;
end:
    if (resultsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, resultsList) {
            server_bulk_ipmi_power_response_results_inner_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(resultsList);
        resultsList = NULL;
    }
    return NULL;

}

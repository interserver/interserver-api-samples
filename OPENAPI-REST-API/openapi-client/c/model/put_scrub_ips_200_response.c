#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "put_scrub_ips_200_response.h"



static put_scrub_ips_200_response_t *put_scrub_ips_200_response_create_internal(
    int *_continue,
    list_t *errors,
    int *service_type,
    double *service_cost,
    double *original_cost,
    double *repeat_service_cost
    ) {
    put_scrub_ips_200_response_t *put_scrub_ips_200_response_local_var = malloc(sizeof(put_scrub_ips_200_response_t));
    if (!put_scrub_ips_200_response_local_var) {
        return NULL;
    }
    memset(put_scrub_ips_200_response_local_var, 0, sizeof(put_scrub_ips_200_response_t));
    put_scrub_ips_200_response_local_var->_library_owned = 1;
    put_scrub_ips_200_response_local_var->_continue = _continue;
    put_scrub_ips_200_response_local_var->errors = errors;
    put_scrub_ips_200_response_local_var->service_type = service_type;
    put_scrub_ips_200_response_local_var->service_cost = service_cost;
    put_scrub_ips_200_response_local_var->original_cost = original_cost;
    put_scrub_ips_200_response_local_var->repeat_service_cost = repeat_service_cost;
    return put_scrub_ips_200_response_local_var;
}

__attribute__((deprecated)) put_scrub_ips_200_response_t *put_scrub_ips_200_response_create(
    int *_continue,
    list_t *errors,
    int *service_type,
    double *service_cost,
    double *original_cost,
    double *repeat_service_cost
    ) {
    int *_continue_copy = NULL;
    if (_continue) {
        _continue_copy = malloc(sizeof(int));
        if (_continue_copy) *_continue_copy = *_continue;
    }
    int *service_type_copy = NULL;
    if (service_type) {
        service_type_copy = malloc(sizeof(int));
        if (service_type_copy) *service_type_copy = *service_type;
    }
    double *service_cost_copy = NULL;
    if (service_cost) {
        service_cost_copy = malloc(sizeof(double));
        if (service_cost_copy) *service_cost_copy = *service_cost;
    }
    double *original_cost_copy = NULL;
    if (original_cost) {
        original_cost_copy = malloc(sizeof(double));
        if (original_cost_copy) *original_cost_copy = *original_cost;
    }
    double *repeat_service_cost_copy = NULL;
    if (repeat_service_cost) {
        repeat_service_cost_copy = malloc(sizeof(double));
        if (repeat_service_cost_copy) *repeat_service_cost_copy = *repeat_service_cost;
    }
    put_scrub_ips_200_response_t *result = put_scrub_ips_200_response_create_internal (
        _continue_copy,
        errors,
        service_type_copy,
        service_cost_copy,
        original_cost_copy,
        repeat_service_cost_copy
        );
    if (!result) {
        free(_continue_copy);
        free(service_type_copy);
        free(service_cost_copy);
        free(original_cost_copy);
        free(repeat_service_cost_copy);
    }
    return result;
}

void put_scrub_ips_200_response_free(put_scrub_ips_200_response_t *put_scrub_ips_200_response) {
    if(NULL == put_scrub_ips_200_response){
        return ;
    }
    if(put_scrub_ips_200_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "put_scrub_ips_200_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (put_scrub_ips_200_response->_continue) {
        free(put_scrub_ips_200_response->_continue);
        put_scrub_ips_200_response->_continue = NULL;
    }
    if (put_scrub_ips_200_response->errors) {
        list_ForEach(listEntry, put_scrub_ips_200_response->errors) {
            free(listEntry->data);
        }
        list_freeList(put_scrub_ips_200_response->errors);
        put_scrub_ips_200_response->errors = NULL;
    }
    if (put_scrub_ips_200_response->service_type) {
        free(put_scrub_ips_200_response->service_type);
        put_scrub_ips_200_response->service_type = NULL;
    }
    if (put_scrub_ips_200_response->service_cost) {
        free(put_scrub_ips_200_response->service_cost);
        put_scrub_ips_200_response->service_cost = NULL;
    }
    if (put_scrub_ips_200_response->original_cost) {
        free(put_scrub_ips_200_response->original_cost);
        put_scrub_ips_200_response->original_cost = NULL;
    }
    if (put_scrub_ips_200_response->repeat_service_cost) {
        free(put_scrub_ips_200_response->repeat_service_cost);
        put_scrub_ips_200_response->repeat_service_cost = NULL;
    }
    free(put_scrub_ips_200_response);
}

cJSON *put_scrub_ips_200_response_convertToJSON(put_scrub_ips_200_response_t *put_scrub_ips_200_response) {
    cJSON *item = cJSON_CreateObject();

    // put_scrub_ips_200_response->_continue
    if(put_scrub_ips_200_response->_continue) {
    if(cJSON_AddBoolToObject(item, "continue", *put_scrub_ips_200_response->_continue) == NULL) {
    goto fail; //Bool
    }
    }


    // put_scrub_ips_200_response->errors
    if(put_scrub_ips_200_response->errors) {
    cJSON *errors = cJSON_AddArrayToObject(item, "errors");
    if(errors == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *errorsListEntry;
    list_ForEach(errorsListEntry, put_scrub_ips_200_response->errors) {
    if(cJSON_AddStringToObject(errors, "", errorsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // put_scrub_ips_200_response->service_type
    if(put_scrub_ips_200_response->service_type) {
    if(cJSON_AddNumberToObject(item, "serviceType", *put_scrub_ips_200_response->service_type) == NULL) {
    goto fail; //Numeric
    }
    }


    // put_scrub_ips_200_response->service_cost
    if(put_scrub_ips_200_response->service_cost) {
    if(cJSON_AddNumberToObject(item, "serviceCost", *put_scrub_ips_200_response->service_cost) == NULL) {
    goto fail; //Numeric
    }
    }


    // put_scrub_ips_200_response->original_cost
    if(put_scrub_ips_200_response->original_cost) {
    if(cJSON_AddNumberToObject(item, "originalCost", *put_scrub_ips_200_response->original_cost) == NULL) {
    goto fail; //Numeric
    }
    }


    // put_scrub_ips_200_response->repeat_service_cost
    if(put_scrub_ips_200_response->repeat_service_cost) {
    if(cJSON_AddNumberToObject(item, "repeatServiceCost", *put_scrub_ips_200_response->repeat_service_cost) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

put_scrub_ips_200_response_t *put_scrub_ips_200_response_parseFromJSON(cJSON *put_scrub_ips_200_responseJSON){

    put_scrub_ips_200_response_t *put_scrub_ips_200_response_local_var = NULL;

    // define the local variable for put_scrub_ips_200_response->_continue
    int *_continue_local_var = NULL;

    // define the local list for put_scrub_ips_200_response->errors
    list_t *errorsList = NULL;

    // define the local variable for put_scrub_ips_200_response->service_type
    int *service_type_local_var = NULL;

    // define the local variable for put_scrub_ips_200_response->service_cost
    double *service_cost_local_var = NULL;

    // define the local variable for put_scrub_ips_200_response->original_cost
    double *original_cost_local_var = NULL;

    // define the local variable for put_scrub_ips_200_response->repeat_service_cost
    double *repeat_service_cost_local_var = NULL;

    // put_scrub_ips_200_response->_continue
    cJSON *_continue = cJSON_GetObjectItemCaseSensitive(put_scrub_ips_200_responseJSON, "continue");
    if (cJSON_IsNull(_continue)) {
        _continue = NULL;
    }
    if (_continue) { 
    if(!cJSON_IsBool(_continue))
    {
    goto end; //Bool
    }
    _continue_local_var = malloc(sizeof(int));
    if(!_continue_local_var)
    {
        goto end;
    }
    *_continue_local_var = _continue->valueint;
    }

    // put_scrub_ips_200_response->errors
    cJSON *errors = cJSON_GetObjectItemCaseSensitive(put_scrub_ips_200_responseJSON, "errors");
    if (cJSON_IsNull(errors)) {
        errors = NULL;
    }
    if (errors) { 
    cJSON *errors_local = NULL;
    if(!cJSON_IsArray(errors)) {
        goto end;//primitive container
    }
    errorsList = list_createList();

    cJSON_ArrayForEach(errors_local, errors)
    {
        if(!cJSON_IsString(errors_local))
        {
            goto end;
        }
        list_addElement(errorsList , strdup(errors_local->valuestring));
    }
    }

    // put_scrub_ips_200_response->service_type
    cJSON *service_type = cJSON_GetObjectItemCaseSensitive(put_scrub_ips_200_responseJSON, "serviceType");
    if (cJSON_IsNull(service_type)) {
        service_type = NULL;
    }
    if (service_type) { 
    if(!cJSON_IsNumber(service_type))
    {
    goto end; //Numeric
    }
    service_type_local_var = malloc(sizeof(int));
    if(!service_type_local_var)
    {
        goto end;
    }
    *service_type_local_var = service_type->valuedouble;
    }

    // put_scrub_ips_200_response->service_cost
    cJSON *service_cost = cJSON_GetObjectItemCaseSensitive(put_scrub_ips_200_responseJSON, "serviceCost");
    if (cJSON_IsNull(service_cost)) {
        service_cost = NULL;
    }
    if (service_cost) { 
    if(!cJSON_IsNumber(service_cost))
    {
    goto end; //Numeric
    }
    service_cost_local_var = malloc(sizeof(double));
    if(!service_cost_local_var)
    {
        goto end;
    }
    *service_cost_local_var = service_cost->valuedouble;
    }

    // put_scrub_ips_200_response->original_cost
    cJSON *original_cost = cJSON_GetObjectItemCaseSensitive(put_scrub_ips_200_responseJSON, "originalCost");
    if (cJSON_IsNull(original_cost)) {
        original_cost = NULL;
    }
    if (original_cost) { 
    if(!cJSON_IsNumber(original_cost))
    {
    goto end; //Numeric
    }
    original_cost_local_var = malloc(sizeof(double));
    if(!original_cost_local_var)
    {
        goto end;
    }
    *original_cost_local_var = original_cost->valuedouble;
    }

    // put_scrub_ips_200_response->repeat_service_cost
    cJSON *repeat_service_cost = cJSON_GetObjectItemCaseSensitive(put_scrub_ips_200_responseJSON, "repeatServiceCost");
    if (cJSON_IsNull(repeat_service_cost)) {
        repeat_service_cost = NULL;
    }
    if (repeat_service_cost) { 
    if(!cJSON_IsNumber(repeat_service_cost))
    {
    goto end; //Numeric
    }
    repeat_service_cost_local_var = malloc(sizeof(double));
    if(!repeat_service_cost_local_var)
    {
        goto end;
    }
    *repeat_service_cost_local_var = repeat_service_cost->valuedouble;
    }



    put_scrub_ips_200_response_local_var = put_scrub_ips_200_response_create_internal (
        _continue_local_var,
        errors ? errorsList : NULL,
        service_type_local_var,
        service_cost_local_var,
        original_cost_local_var,
        repeat_service_cost_local_var
        );

    if (!put_scrub_ips_200_response_local_var) {
        goto end;
    }

    return put_scrub_ips_200_response_local_var;
end:
    if (_continue_local_var) {
        free(_continue_local_var);
        _continue_local_var = NULL;
    }
    if (errorsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, errorsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(errorsList);
        errorsList = NULL;
    }
    if (service_type_local_var) {
        free(service_type_local_var);
        service_type_local_var = NULL;
    }
    if (service_cost_local_var) {
        free(service_cost_local_var);
        service_cost_local_var = NULL;
    }
    if (original_cost_local_var) {
        free(original_cost_local_var);
        original_cost_local_var = NULL;
    }
    if (repeat_service_cost_local_var) {
        free(repeat_service_cost_local_var);
        repeat_service_cost_local_var = NULL;
    }
    return NULL;

}

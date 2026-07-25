#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "floating_ip_order_request.h"



static floating_ip_order_request_t *floating_ip_order_request_create_internal(
    int *service_type,
    char *coupon,
    char *comment
    ) {
    floating_ip_order_request_t *floating_ip_order_request_local_var = malloc(sizeof(floating_ip_order_request_t));
    if (!floating_ip_order_request_local_var) {
        return NULL;
    }
    memset(floating_ip_order_request_local_var, 0, sizeof(floating_ip_order_request_t));
    floating_ip_order_request_local_var->_library_owned = 1;
    floating_ip_order_request_local_var->service_type = service_type;
    floating_ip_order_request_local_var->coupon = coupon;
    floating_ip_order_request_local_var->comment = comment;
    return floating_ip_order_request_local_var;
}

__attribute__((deprecated)) floating_ip_order_request_t *floating_ip_order_request_create(
    int *service_type,
    char *coupon,
    char *comment
    ) {
    int *service_type_copy = NULL;
    if (service_type) {
        service_type_copy = malloc(sizeof(int));
        if (service_type_copy) *service_type_copy = *service_type;
    }
    floating_ip_order_request_t *result = floating_ip_order_request_create_internal (
        service_type_copy,
        coupon,
        comment
        );
    if (!result) {
        free(service_type_copy);
    }
    return result;
}

void floating_ip_order_request_free(floating_ip_order_request_t *floating_ip_order_request) {
    if(NULL == floating_ip_order_request){
        return ;
    }
    if(floating_ip_order_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "floating_ip_order_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (floating_ip_order_request->service_type) {
        free(floating_ip_order_request->service_type);
        floating_ip_order_request->service_type = NULL;
    }
    if (floating_ip_order_request->coupon) {
        free(floating_ip_order_request->coupon);
        floating_ip_order_request->coupon = NULL;
    }
    if (floating_ip_order_request->comment) {
        free(floating_ip_order_request->comment);
        floating_ip_order_request->comment = NULL;
    }
    free(floating_ip_order_request);
}

cJSON *floating_ip_order_request_convertToJSON(floating_ip_order_request_t *floating_ip_order_request) {
    cJSON *item = cJSON_CreateObject();

    // floating_ip_order_request->service_type
    if (!floating_ip_order_request->service_type) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "serviceType", *floating_ip_order_request->service_type) == NULL) {
    goto fail; //Numeric
    }


    // floating_ip_order_request->coupon
    if(floating_ip_order_request->coupon) {
    if(cJSON_AddStringToObject(item, "coupon", floating_ip_order_request->coupon) == NULL) {
    goto fail; //String
    }
    }


    // floating_ip_order_request->comment
    if(floating_ip_order_request->comment) {
    if(cJSON_AddStringToObject(item, "comment", floating_ip_order_request->comment) == NULL) {
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

floating_ip_order_request_t *floating_ip_order_request_parseFromJSON(cJSON *floating_ip_order_requestJSON){

    floating_ip_order_request_t *floating_ip_order_request_local_var = NULL;

    // define the local variable for floating_ip_order_request->service_type
    int *service_type_local_var = NULL;

    char *coupon_local_str = NULL;

    char *comment_local_str = NULL;

    // floating_ip_order_request->service_type
    cJSON *service_type = cJSON_GetObjectItemCaseSensitive(floating_ip_order_requestJSON, "serviceType");
    if (cJSON_IsNull(service_type)) {
        service_type = NULL;
    }
    if (!service_type) {
        goto end;
    }

    
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

    // floating_ip_order_request->coupon
    cJSON *coupon = cJSON_GetObjectItemCaseSensitive(floating_ip_order_requestJSON, "coupon");
    if (cJSON_IsNull(coupon)) {
        coupon = NULL;
    }
    if (coupon) { 
    if(!cJSON_IsString(coupon) && !cJSON_IsNull(coupon))
    {
    goto end; //String
    }
    }

    // floating_ip_order_request->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(floating_ip_order_requestJSON, "comment");
    if (cJSON_IsNull(comment)) {
        comment = NULL;
    }
    if (comment) { 
    if(!cJSON_IsString(comment) && !cJSON_IsNull(comment))
    {
    goto end; //String
    }
    }


    if (coupon && !cJSON_IsNull(coupon)) coupon_local_str = strdup(coupon->valuestring);
    if (comment && !cJSON_IsNull(comment)) comment_local_str = strdup(comment->valuestring);

    floating_ip_order_request_local_var = floating_ip_order_request_create_internal (
        service_type_local_var,
        coupon_local_str,
        comment_local_str
        );

    if (!floating_ip_order_request_local_var) {
        goto end;
    }

    return floating_ip_order_request_local_var;
end:
    if (service_type_local_var) {
        free(service_type_local_var);
        service_type_local_var = NULL;
    }
    if (coupon_local_str) {
        free(coupon_local_str);
        coupon_local_str = NULL;
    }
    if (comment_local_str) {
        free(comment_local_str);
        comment_local_str = NULL;
    }
    return NULL;

}

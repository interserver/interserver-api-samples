#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mail_order_request.h"



static mail_order_request_t *mail_order_request_create_internal(
    int *service_type,
    char *coupon,
    char *comment
    ) {
    mail_order_request_t *mail_order_request_local_var = malloc(sizeof(mail_order_request_t));
    if (!mail_order_request_local_var) {
        return NULL;
    }
    memset(mail_order_request_local_var, 0, sizeof(mail_order_request_t));
    mail_order_request_local_var->_library_owned = 1;
    mail_order_request_local_var->service_type = service_type;
    mail_order_request_local_var->coupon = coupon;
    mail_order_request_local_var->comment = comment;
    return mail_order_request_local_var;
}

__attribute__((deprecated)) mail_order_request_t *mail_order_request_create(
    int *service_type,
    char *coupon,
    char *comment
    ) {
    int *service_type_copy = NULL;
    if (service_type) {
        service_type_copy = malloc(sizeof(int));
        if (service_type_copy) *service_type_copy = *service_type;
    }
    mail_order_request_t *result = mail_order_request_create_internal (
        service_type_copy,
        coupon,
        comment
        );
    if (!result) {
        free(service_type_copy);
    }
    return result;
}

void mail_order_request_free(mail_order_request_t *mail_order_request) {
    if(NULL == mail_order_request){
        return ;
    }
    if(mail_order_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "mail_order_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (mail_order_request->service_type) {
        free(mail_order_request->service_type);
        mail_order_request->service_type = NULL;
    }
    if (mail_order_request->coupon) {
        free(mail_order_request->coupon);
        mail_order_request->coupon = NULL;
    }
    if (mail_order_request->comment) {
        free(mail_order_request->comment);
        mail_order_request->comment = NULL;
    }
    free(mail_order_request);
}

cJSON *mail_order_request_convertToJSON(mail_order_request_t *mail_order_request) {
    cJSON *item = cJSON_CreateObject();

    // mail_order_request->service_type
    if (!mail_order_request->service_type) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "serviceType", *mail_order_request->service_type) == NULL) {
    goto fail; //Numeric
    }


    // mail_order_request->coupon
    if(mail_order_request->coupon) {
    if(cJSON_AddStringToObject(item, "coupon", mail_order_request->coupon) == NULL) {
    goto fail; //String
    }
    }


    // mail_order_request->comment
    if(mail_order_request->comment) {
    if(cJSON_AddStringToObject(item, "comment", mail_order_request->comment) == NULL) {
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

mail_order_request_t *mail_order_request_parseFromJSON(cJSON *mail_order_requestJSON){

    mail_order_request_t *mail_order_request_local_var = NULL;

    // define the local variable for mail_order_request->service_type
    int *service_type_local_var = NULL;

    char *coupon_local_str = NULL;

    char *comment_local_str = NULL;

    // mail_order_request->service_type
    cJSON *service_type = cJSON_GetObjectItemCaseSensitive(mail_order_requestJSON, "serviceType");
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

    // mail_order_request->coupon
    cJSON *coupon = cJSON_GetObjectItemCaseSensitive(mail_order_requestJSON, "coupon");
    if (cJSON_IsNull(coupon)) {
        coupon = NULL;
    }
    if (coupon) { 
    if(!cJSON_IsString(coupon) && !cJSON_IsNull(coupon))
    {
    goto end; //String
    }
    }

    // mail_order_request->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(mail_order_requestJSON, "comment");
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

    mail_order_request_local_var = mail_order_request_create_internal (
        service_type_local_var,
        coupon_local_str,
        comment_local_str
        );

    if (!mail_order_request_local_var) {
        goto end;
    }

    return mail_order_request_local_var;
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

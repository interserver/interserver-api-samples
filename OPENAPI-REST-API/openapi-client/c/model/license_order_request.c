#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "license_order_request.h"



static license_order_request_t *license_order_request_create_internal(
    int *package,
    char *ip,
    int *tos,
    int *frequency,
    char *coupon,
    char *comment
    ) {
    license_order_request_t *license_order_request_local_var = malloc(sizeof(license_order_request_t));
    if (!license_order_request_local_var) {
        return NULL;
    }
    memset(license_order_request_local_var, 0, sizeof(license_order_request_t));
    license_order_request_local_var->_library_owned = 1;
    license_order_request_local_var->package = package;
    license_order_request_local_var->ip = ip;
    license_order_request_local_var->tos = tos;
    license_order_request_local_var->frequency = frequency;
    license_order_request_local_var->coupon = coupon;
    license_order_request_local_var->comment = comment;
    return license_order_request_local_var;
}

__attribute__((deprecated)) license_order_request_t *license_order_request_create(
    int *package,
    char *ip,
    int *tos,
    int *frequency,
    char *coupon,
    char *comment
    ) {
    int *package_copy = NULL;
    if (package) {
        package_copy = malloc(sizeof(int));
        if (package_copy) *package_copy = *package;
    }
    int *tos_copy = NULL;
    if (tos) {
        tos_copy = malloc(sizeof(int));
        if (tos_copy) *tos_copy = *tos;
    }
    int *frequency_copy = NULL;
    if (frequency) {
        frequency_copy = malloc(sizeof(int));
        if (frequency_copy) *frequency_copy = *frequency;
    }
    license_order_request_t *result = license_order_request_create_internal (
        package_copy,
        ip,
        tos_copy,
        frequency_copy,
        coupon,
        comment
        );
    if (!result) {
        free(package_copy);
        free(tos_copy);
        free(frequency_copy);
    }
    return result;
}

void license_order_request_free(license_order_request_t *license_order_request) {
    if(NULL == license_order_request){
        return ;
    }
    if(license_order_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "license_order_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (license_order_request->package) {
        free(license_order_request->package);
        license_order_request->package = NULL;
    }
    if (license_order_request->ip) {
        free(license_order_request->ip);
        license_order_request->ip = NULL;
    }
    if (license_order_request->tos) {
        free(license_order_request->tos);
        license_order_request->tos = NULL;
    }
    if (license_order_request->frequency) {
        free(license_order_request->frequency);
        license_order_request->frequency = NULL;
    }
    if (license_order_request->coupon) {
        free(license_order_request->coupon);
        license_order_request->coupon = NULL;
    }
    if (license_order_request->comment) {
        free(license_order_request->comment);
        license_order_request->comment = NULL;
    }
    free(license_order_request);
}

cJSON *license_order_request_convertToJSON(license_order_request_t *license_order_request) {
    cJSON *item = cJSON_CreateObject();

    // license_order_request->package
    if (!license_order_request->package) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "package", *license_order_request->package) == NULL) {
    goto fail; //Numeric
    }


    // license_order_request->ip
    if (!license_order_request->ip) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "ip", license_order_request->ip) == NULL) {
    goto fail; //String
    }


    // license_order_request->tos
    if (!license_order_request->tos) {
        goto fail;
    }
    if(cJSON_AddBoolToObject(item, "tos", *license_order_request->tos) == NULL) {
    goto fail; //Bool
    }


    // license_order_request->frequency
    if(license_order_request->frequency) {
    if(cJSON_AddNumberToObject(item, "frequency", *license_order_request->frequency) == NULL) {
    goto fail; //Numeric
    }
    }


    // license_order_request->coupon
    if(license_order_request->coupon) {
    if(cJSON_AddStringToObject(item, "coupon", license_order_request->coupon) == NULL) {
    goto fail; //String
    }
    }


    // license_order_request->comment
    if(license_order_request->comment) {
    if(cJSON_AddStringToObject(item, "comment", license_order_request->comment) == NULL) {
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

license_order_request_t *license_order_request_parseFromJSON(cJSON *license_order_requestJSON){

    license_order_request_t *license_order_request_local_var = NULL;

    // define the local variable for license_order_request->package
    int *package_local_var = NULL;

    char *ip_local_str = NULL;

    // define the local variable for license_order_request->tos
    int *tos_local_var = NULL;

    // define the local variable for license_order_request->frequency
    int *frequency_local_var = NULL;

    char *coupon_local_str = NULL;

    char *comment_local_str = NULL;

    // license_order_request->package
    cJSON *package = cJSON_GetObjectItemCaseSensitive(license_order_requestJSON, "package");
    if (cJSON_IsNull(package)) {
        package = NULL;
    }
    if (!package) {
        goto end;
    }

    
    if(!cJSON_IsNumber(package))
    {
    goto end; //Numeric
    }
    package_local_var = malloc(sizeof(int));
    if(!package_local_var)
    {
        goto end;
    }
    *package_local_var = package->valuedouble;

    // license_order_request->ip
    cJSON *ip = cJSON_GetObjectItemCaseSensitive(license_order_requestJSON, "ip");
    if (cJSON_IsNull(ip)) {
        ip = NULL;
    }
    if (!ip) {
        goto end;
    }

    
    if(!cJSON_IsString(ip))
    {
    goto end; //String
    }

    // license_order_request->tos
    cJSON *tos = cJSON_GetObjectItemCaseSensitive(license_order_requestJSON, "tos");
    if (cJSON_IsNull(tos)) {
        tos = NULL;
    }
    if (!tos) {
        goto end;
    }

    
    if(!cJSON_IsBool(tos))
    {
    goto end; //Bool
    }
    tos_local_var = malloc(sizeof(int));
    if(!tos_local_var)
    {
        goto end;
    }
    *tos_local_var = tos->valueint;

    // license_order_request->frequency
    cJSON *frequency = cJSON_GetObjectItemCaseSensitive(license_order_requestJSON, "frequency");
    if (cJSON_IsNull(frequency)) {
        frequency = NULL;
    }
    if (frequency) { 
    if(!cJSON_IsNumber(frequency))
    {
    goto end; //Numeric
    }
    frequency_local_var = malloc(sizeof(int));
    if(!frequency_local_var)
    {
        goto end;
    }
    *frequency_local_var = frequency->valuedouble;
    }

    // license_order_request->coupon
    cJSON *coupon = cJSON_GetObjectItemCaseSensitive(license_order_requestJSON, "coupon");
    if (cJSON_IsNull(coupon)) {
        coupon = NULL;
    }
    if (coupon) { 
    if(!cJSON_IsString(coupon) && !cJSON_IsNull(coupon))
    {
    goto end; //String
    }
    }

    // license_order_request->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(license_order_requestJSON, "comment");
    if (cJSON_IsNull(comment)) {
        comment = NULL;
    }
    if (comment) { 
    if(!cJSON_IsString(comment) && !cJSON_IsNull(comment))
    {
    goto end; //String
    }
    }


    if (ip && !cJSON_IsNull(ip)) ip_local_str = strdup(ip->valuestring);
    if (coupon && !cJSON_IsNull(coupon)) coupon_local_str = strdup(coupon->valuestring);
    if (comment && !cJSON_IsNull(comment)) comment_local_str = strdup(comment->valuestring);

    license_order_request_local_var = license_order_request_create_internal (
        package_local_var,
        ip_local_str,
        tos_local_var,
        frequency_local_var,
        coupon_local_str,
        comment_local_str
        );

    if (!license_order_request_local_var) {
        goto end;
    }

    return license_order_request_local_var;
end:
    if (package_local_var) {
        free(package_local_var);
        package_local_var = NULL;
    }
    if (ip_local_str) {
        free(ip_local_str);
        ip_local_str = NULL;
    }
    if (tos_local_var) {
        free(tos_local_var);
        tos_local_var = NULL;
    }
    if (frequency_local_var) {
        free(frequency_local_var);
        frequency_local_var = NULL;
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

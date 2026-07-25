#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "website_order_post_request.h"



static website_order_post_request_t *website_order_post_request_create_internal(
    char *hostname,
    int *package_id,
    char *rootpass,
    int *period,
    char *coupon,
    int *service_offer_id,
    int *script,
    char *comment,
    int *register_domain
    ) {
    website_order_post_request_t *website_order_post_request_local_var = malloc(sizeof(website_order_post_request_t));
    if (!website_order_post_request_local_var) {
        return NULL;
    }
    memset(website_order_post_request_local_var, 0, sizeof(website_order_post_request_t));
    website_order_post_request_local_var->_library_owned = 1;
    website_order_post_request_local_var->hostname = hostname;
    website_order_post_request_local_var->package_id = package_id;
    website_order_post_request_local_var->rootpass = rootpass;
    website_order_post_request_local_var->period = period;
    website_order_post_request_local_var->coupon = coupon;
    website_order_post_request_local_var->service_offer_id = service_offer_id;
    website_order_post_request_local_var->script = script;
    website_order_post_request_local_var->comment = comment;
    website_order_post_request_local_var->register_domain = register_domain;
    return website_order_post_request_local_var;
}

__attribute__((deprecated)) website_order_post_request_t *website_order_post_request_create(
    char *hostname,
    int *package_id,
    char *rootpass,
    int *period,
    char *coupon,
    int *service_offer_id,
    int *script,
    char *comment,
    int *register_domain
    ) {
    int *package_id_copy = NULL;
    if (package_id) {
        package_id_copy = malloc(sizeof(int));
        if (package_id_copy) *package_id_copy = *package_id;
    }
    int *period_copy = NULL;
    if (period) {
        period_copy = malloc(sizeof(int));
        if (period_copy) *period_copy = *period;
    }
    int *service_offer_id_copy = NULL;
    if (service_offer_id) {
        service_offer_id_copy = malloc(sizeof(int));
        if (service_offer_id_copy) *service_offer_id_copy = *service_offer_id;
    }
    int *script_copy = NULL;
    if (script) {
        script_copy = malloc(sizeof(int));
        if (script_copy) *script_copy = *script;
    }
    int *register_domain_copy = NULL;
    if (register_domain) {
        register_domain_copy = malloc(sizeof(int));
        if (register_domain_copy) *register_domain_copy = *register_domain;
    }
    website_order_post_request_t *result = website_order_post_request_create_internal (
        hostname,
        package_id_copy,
        rootpass,
        period_copy,
        coupon,
        service_offer_id_copy,
        script_copy,
        comment,
        register_domain_copy
        );
    if (!result) {
        free(package_id_copy);
        free(period_copy);
        free(service_offer_id_copy);
        free(script_copy);
        free(register_domain_copy);
    }
    return result;
}

void website_order_post_request_free(website_order_post_request_t *website_order_post_request) {
    if(NULL == website_order_post_request){
        return ;
    }
    if(website_order_post_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "website_order_post_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (website_order_post_request->hostname) {
        free(website_order_post_request->hostname);
        website_order_post_request->hostname = NULL;
    }
    if (website_order_post_request->package_id) {
        free(website_order_post_request->package_id);
        website_order_post_request->package_id = NULL;
    }
    if (website_order_post_request->rootpass) {
        free(website_order_post_request->rootpass);
        website_order_post_request->rootpass = NULL;
    }
    if (website_order_post_request->period) {
        free(website_order_post_request->period);
        website_order_post_request->period = NULL;
    }
    if (website_order_post_request->coupon) {
        free(website_order_post_request->coupon);
        website_order_post_request->coupon = NULL;
    }
    if (website_order_post_request->service_offer_id) {
        free(website_order_post_request->service_offer_id);
        website_order_post_request->service_offer_id = NULL;
    }
    if (website_order_post_request->script) {
        free(website_order_post_request->script);
        website_order_post_request->script = NULL;
    }
    if (website_order_post_request->comment) {
        free(website_order_post_request->comment);
        website_order_post_request->comment = NULL;
    }
    if (website_order_post_request->register_domain) {
        free(website_order_post_request->register_domain);
        website_order_post_request->register_domain = NULL;
    }
    free(website_order_post_request);
}

cJSON *website_order_post_request_convertToJSON(website_order_post_request_t *website_order_post_request) {
    cJSON *item = cJSON_CreateObject();

    // website_order_post_request->hostname
    if (!website_order_post_request->hostname) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "hostname", website_order_post_request->hostname) == NULL) {
    goto fail; //String
    }


    // website_order_post_request->package_id
    if (!website_order_post_request->package_id) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "packageId", *website_order_post_request->package_id) == NULL) {
    goto fail; //Numeric
    }


    // website_order_post_request->rootpass
    if(website_order_post_request->rootpass) {
    if(cJSON_AddStringToObject(item, "rootpass", website_order_post_request->rootpass) == NULL) {
    goto fail; //String
    }
    }


    // website_order_post_request->period
    if(website_order_post_request->period) {
    if(cJSON_AddNumberToObject(item, "period", *website_order_post_request->period) == NULL) {
    goto fail; //Numeric
    }
    }


    // website_order_post_request->coupon
    if(website_order_post_request->coupon) {
    if(cJSON_AddStringToObject(item, "coupon", website_order_post_request->coupon) == NULL) {
    goto fail; //String
    }
    }


    // website_order_post_request->service_offer_id
    if(website_order_post_request->service_offer_id) {
    if(cJSON_AddNumberToObject(item, "serviceOfferId", *website_order_post_request->service_offer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // website_order_post_request->script
    if(website_order_post_request->script) {
    if(cJSON_AddNumberToObject(item, "script", *website_order_post_request->script) == NULL) {
    goto fail; //Numeric
    }
    }


    // website_order_post_request->comment
    if(website_order_post_request->comment) {
    if(cJSON_AddStringToObject(item, "comment", website_order_post_request->comment) == NULL) {
    goto fail; //String
    }
    }


    // website_order_post_request->register_domain
    if(website_order_post_request->register_domain) {
    if(cJSON_AddBoolToObject(item, "registerDomain", *website_order_post_request->register_domain) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

website_order_post_request_t *website_order_post_request_parseFromJSON(cJSON *website_order_post_requestJSON){

    website_order_post_request_t *website_order_post_request_local_var = NULL;

    char *hostname_local_str = NULL;

    // define the local variable for website_order_post_request->package_id
    int *package_id_local_var = NULL;

    char *rootpass_local_str = NULL;

    // define the local variable for website_order_post_request->period
    int *period_local_var = NULL;

    char *coupon_local_str = NULL;

    // define the local variable for website_order_post_request->service_offer_id
    int *service_offer_id_local_var = NULL;

    // define the local variable for website_order_post_request->script
    int *script_local_var = NULL;

    char *comment_local_str = NULL;

    // define the local variable for website_order_post_request->register_domain
    int *register_domain_local_var = NULL;

    // website_order_post_request->hostname
    cJSON *hostname = cJSON_GetObjectItemCaseSensitive(website_order_post_requestJSON, "hostname");
    if (cJSON_IsNull(hostname)) {
        hostname = NULL;
    }
    if (!hostname) {
        goto end;
    }

    
    if(!cJSON_IsString(hostname))
    {
    goto end; //String
    }

    // website_order_post_request->package_id
    cJSON *package_id = cJSON_GetObjectItemCaseSensitive(website_order_post_requestJSON, "packageId");
    if (cJSON_IsNull(package_id)) {
        package_id = NULL;
    }
    if (!package_id) {
        goto end;
    }

    
    if(!cJSON_IsNumber(package_id))
    {
    goto end; //Numeric
    }
    package_id_local_var = malloc(sizeof(int));
    if(!package_id_local_var)
    {
        goto end;
    }
    *package_id_local_var = package_id->valuedouble;

    // website_order_post_request->rootpass
    cJSON *rootpass = cJSON_GetObjectItemCaseSensitive(website_order_post_requestJSON, "rootpass");
    if (cJSON_IsNull(rootpass)) {
        rootpass = NULL;
    }
    if (rootpass) { 
    if(!cJSON_IsString(rootpass) && !cJSON_IsNull(rootpass))
    {
    goto end; //String
    }
    }

    // website_order_post_request->period
    cJSON *period = cJSON_GetObjectItemCaseSensitive(website_order_post_requestJSON, "period");
    if (cJSON_IsNull(period)) {
        period = NULL;
    }
    if (period) { 
    if(!cJSON_IsNumber(period))
    {
    goto end; //Numeric
    }
    period_local_var = malloc(sizeof(int));
    if(!period_local_var)
    {
        goto end;
    }
    *period_local_var = period->valuedouble;
    }

    // website_order_post_request->coupon
    cJSON *coupon = cJSON_GetObjectItemCaseSensitive(website_order_post_requestJSON, "coupon");
    if (cJSON_IsNull(coupon)) {
        coupon = NULL;
    }
    if (coupon) { 
    if(!cJSON_IsString(coupon) && !cJSON_IsNull(coupon))
    {
    goto end; //String
    }
    }

    // website_order_post_request->service_offer_id
    cJSON *service_offer_id = cJSON_GetObjectItemCaseSensitive(website_order_post_requestJSON, "serviceOfferId");
    if (cJSON_IsNull(service_offer_id)) {
        service_offer_id = NULL;
    }
    if (service_offer_id) { 
    if(!cJSON_IsNumber(service_offer_id))
    {
    goto end; //Numeric
    }
    service_offer_id_local_var = malloc(sizeof(int));
    if(!service_offer_id_local_var)
    {
        goto end;
    }
    *service_offer_id_local_var = service_offer_id->valuedouble;
    }

    // website_order_post_request->script
    cJSON *script = cJSON_GetObjectItemCaseSensitive(website_order_post_requestJSON, "script");
    if (cJSON_IsNull(script)) {
        script = NULL;
    }
    if (script) { 
    if(!cJSON_IsNumber(script))
    {
    goto end; //Numeric
    }
    script_local_var = malloc(sizeof(int));
    if(!script_local_var)
    {
        goto end;
    }
    *script_local_var = script->valuedouble;
    }

    // website_order_post_request->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(website_order_post_requestJSON, "comment");
    if (cJSON_IsNull(comment)) {
        comment = NULL;
    }
    if (comment) { 
    if(!cJSON_IsString(comment) && !cJSON_IsNull(comment))
    {
    goto end; //String
    }
    }

    // website_order_post_request->register_domain
    cJSON *register_domain = cJSON_GetObjectItemCaseSensitive(website_order_post_requestJSON, "registerDomain");
    if (cJSON_IsNull(register_domain)) {
        register_domain = NULL;
    }
    if (register_domain) { 
    if(!cJSON_IsBool(register_domain))
    {
    goto end; //Bool
    }
    register_domain_local_var = malloc(sizeof(int));
    if(!register_domain_local_var)
    {
        goto end;
    }
    *register_domain_local_var = register_domain->valueint;
    }


    if (hostname && !cJSON_IsNull(hostname)) hostname_local_str = strdup(hostname->valuestring);
    if (rootpass && !cJSON_IsNull(rootpass)) rootpass_local_str = strdup(rootpass->valuestring);
    if (coupon && !cJSON_IsNull(coupon)) coupon_local_str = strdup(coupon->valuestring);
    if (comment && !cJSON_IsNull(comment)) comment_local_str = strdup(comment->valuestring);

    website_order_post_request_local_var = website_order_post_request_create_internal (
        hostname_local_str,
        package_id_local_var,
        rootpass_local_str,
        period_local_var,
        coupon_local_str,
        service_offer_id_local_var,
        script_local_var,
        comment_local_str,
        register_domain_local_var
        );

    if (!website_order_post_request_local_var) {
        goto end;
    }

    return website_order_post_request_local_var;
end:
    if (hostname_local_str) {
        free(hostname_local_str);
        hostname_local_str = NULL;
    }
    if (package_id_local_var) {
        free(package_id_local_var);
        package_id_local_var = NULL;
    }
    if (rootpass_local_str) {
        free(rootpass_local_str);
        rootpass_local_str = NULL;
    }
    if (period_local_var) {
        free(period_local_var);
        period_local_var = NULL;
    }
    if (coupon_local_str) {
        free(coupon_local_str);
        coupon_local_str = NULL;
    }
    if (service_offer_id_local_var) {
        free(service_offer_id_local_var);
        service_offer_id_local_var = NULL;
    }
    if (script_local_var) {
        free(script_local_var);
        script_local_var = NULL;
    }
    if (comment_local_str) {
        free(comment_local_str);
        comment_local_str = NULL;
    }
    if (register_domain_local_var) {
        free(register_domain_local_var);
        register_domain_local_var = NULL;
    }
    return NULL;

}

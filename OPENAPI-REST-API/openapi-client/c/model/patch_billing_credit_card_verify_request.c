#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "patch_billing_credit_card_verify_request.h"



static patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request_create_internal(
    char *cc_ccv2
    ) {
    patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request_local_var = malloc(sizeof(patch_billing_credit_card_verify_request_t));
    if (!patch_billing_credit_card_verify_request_local_var) {
        return NULL;
    }
    memset(patch_billing_credit_card_verify_request_local_var, 0, sizeof(patch_billing_credit_card_verify_request_t));
    patch_billing_credit_card_verify_request_local_var->_library_owned = 1;
    patch_billing_credit_card_verify_request_local_var->cc_ccv2 = cc_ccv2;
    return patch_billing_credit_card_verify_request_local_var;
}

__attribute__((deprecated)) patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request_create(
    char *cc_ccv2
    ) {
    patch_billing_credit_card_verify_request_t *result = patch_billing_credit_card_verify_request_create_internal (
        cc_ccv2
        );
    if (!result) {
    }
    return result;
}

void patch_billing_credit_card_verify_request_free(patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request) {
    if(NULL == patch_billing_credit_card_verify_request){
        return ;
    }
    if(patch_billing_credit_card_verify_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "patch_billing_credit_card_verify_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (patch_billing_credit_card_verify_request->cc_ccv2) {
        free(patch_billing_credit_card_verify_request->cc_ccv2);
        patch_billing_credit_card_verify_request->cc_ccv2 = NULL;
    }
    free(patch_billing_credit_card_verify_request);
}

cJSON *patch_billing_credit_card_verify_request_convertToJSON(patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request) {
    cJSON *item = cJSON_CreateObject();

    // patch_billing_credit_card_verify_request->cc_ccv2
    if (!patch_billing_credit_card_verify_request->cc_ccv2) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "cc_ccv2", patch_billing_credit_card_verify_request->cc_ccv2) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request_parseFromJSON(cJSON *patch_billing_credit_card_verify_requestJSON){

    patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request_local_var = NULL;

    char *cc_ccv2_local_str = NULL;

    // patch_billing_credit_card_verify_request->cc_ccv2
    cJSON *cc_ccv2 = cJSON_GetObjectItemCaseSensitive(patch_billing_credit_card_verify_requestJSON, "cc_ccv2");
    if (cJSON_IsNull(cc_ccv2)) {
        cc_ccv2 = NULL;
    }
    if (!cc_ccv2) {
        goto end;
    }

    
    if(!cJSON_IsString(cc_ccv2))
    {
    goto end; //String
    }


    if (cc_ccv2 && !cJSON_IsNull(cc_ccv2)) cc_ccv2_local_str = strdup(cc_ccv2->valuestring);

    patch_billing_credit_card_verify_request_local_var = patch_billing_credit_card_verify_request_create_internal (
        cc_ccv2_local_str
        );

    if (!patch_billing_credit_card_verify_request_local_var) {
        goto end;
    }

    return patch_billing_credit_card_verify_request_local_var;
end:
    if (cc_ccv2_local_str) {
        free(cc_ccv2_local_str);
        cc_ccv2_local_str = NULL;
    }
    return NULL;

}

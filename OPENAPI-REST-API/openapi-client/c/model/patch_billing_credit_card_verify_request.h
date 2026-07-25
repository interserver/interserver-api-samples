/*
 * patch_billing_credit_card_verify_request.h
 *
 * 
 */

#ifndef _patch_billing_credit_card_verify_request_H_
#define _patch_billing_credit_card_verify_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct patch_billing_credit_card_verify_request_t patch_billing_credit_card_verify_request_t;




typedef struct patch_billing_credit_card_verify_request_t {
    char *cc_ccv2; // string

    int _library_owned; // Is the library responsible for freeing this object?
} patch_billing_credit_card_verify_request_t;

__attribute__((deprecated)) patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request_create(
    char *cc_ccv2
);

void patch_billing_credit_card_verify_request_free(patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request);

patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request_parseFromJSON(cJSON *patch_billing_credit_card_verify_requestJSON);

cJSON *patch_billing_credit_card_verify_request_convertToJSON(patch_billing_credit_card_verify_request_t *patch_billing_credit_card_verify_request);

#endif /* _patch_billing_credit_card_verify_request_H_ */


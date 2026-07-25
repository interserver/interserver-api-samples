#ifndef patch_billing_credit_card_verify_request_TEST
#define patch_billing_credit_card_verify_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define patch_billing_credit_card_verify_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/patch_billing_credit_card_verify_request.h"
patch_billing_credit_card_verify_request_t* instantiate_patch_billing_credit_card_verify_request(int include_optional);



patch_billing_credit_card_verify_request_t* instantiate_patch_billing_credit_card_verify_request(int include_optional) {
  patch_billing_credit_card_verify_request_t* patch_billing_credit_card_verify_request = NULL;
  if (include_optional) {
    patch_billing_credit_card_verify_request = patch_billing_credit_card_verify_request_create(
      "0"
    );
  } else {
    patch_billing_credit_card_verify_request = patch_billing_credit_card_verify_request_create(
      "0"
    );
  }

  return patch_billing_credit_card_verify_request;
}


#ifdef patch_billing_credit_card_verify_request_MAIN

void test_patch_billing_credit_card_verify_request(int include_optional) {
    patch_billing_credit_card_verify_request_t* patch_billing_credit_card_verify_request_1 = instantiate_patch_billing_credit_card_verify_request(include_optional);

	cJSON* jsonpatch_billing_credit_card_verify_request_1 = patch_billing_credit_card_verify_request_convertToJSON(patch_billing_credit_card_verify_request_1);
	printf("patch_billing_credit_card_verify_request :\n%s\n", cJSON_Print(jsonpatch_billing_credit_card_verify_request_1));
	patch_billing_credit_card_verify_request_t* patch_billing_credit_card_verify_request_2 = patch_billing_credit_card_verify_request_parseFromJSON(jsonpatch_billing_credit_card_verify_request_1);
	cJSON* jsonpatch_billing_credit_card_verify_request_2 = patch_billing_credit_card_verify_request_convertToJSON(patch_billing_credit_card_verify_request_2);
	printf("repeating patch_billing_credit_card_verify_request:\n%s\n", cJSON_Print(jsonpatch_billing_credit_card_verify_request_2));
}

int main() {
  test_patch_billing_credit_card_verify_request(1);
  test_patch_billing_credit_card_verify_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // patch_billing_credit_card_verify_request_MAIN
#endif // patch_billing_credit_card_verify_request_TEST

#ifndef get_affiliate_signups_200_response_TEST
#define get_affiliate_signups_200_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define get_affiliate_signups_200_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/get_affiliate_signups_200_response.h"
get_affiliate_signups_200_response_t* instantiate_get_affiliate_signups_200_response(int include_optional);



get_affiliate_signups_200_response_t* instantiate_get_affiliate_signups_200_response(int include_optional) {
  get_affiliate_signups_200_response_t* get_affiliate_signups_200_response = NULL;
  if (include_optional) {
    get_affiliate_signups_200_response = get_affiliate_signups_200_response_create(
      0
    );
  } else {
    get_affiliate_signups_200_response = get_affiliate_signups_200_response_create(
      0
    );
  }

  return get_affiliate_signups_200_response;
}


#ifdef get_affiliate_signups_200_response_MAIN

void test_get_affiliate_signups_200_response(int include_optional) {
    get_affiliate_signups_200_response_t* get_affiliate_signups_200_response_1 = instantiate_get_affiliate_signups_200_response(include_optional);

	cJSON* jsonget_affiliate_signups_200_response_1 = get_affiliate_signups_200_response_convertToJSON(get_affiliate_signups_200_response_1);
	printf("get_affiliate_signups_200_response :\n%s\n", cJSON_Print(jsonget_affiliate_signups_200_response_1));
	get_affiliate_signups_200_response_t* get_affiliate_signups_200_response_2 = get_affiliate_signups_200_response_parseFromJSON(jsonget_affiliate_signups_200_response_1);
	cJSON* jsonget_affiliate_signups_200_response_2 = get_affiliate_signups_200_response_convertToJSON(get_affiliate_signups_200_response_2);
	printf("repeating get_affiliate_signups_200_response:\n%s\n", cJSON_Print(jsonget_affiliate_signups_200_response_2));
}

int main() {
  test_get_affiliate_signups_200_response(1);
  test_get_affiliate_signups_200_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // get_affiliate_signups_200_response_MAIN
#endif // get_affiliate_signups_200_response_TEST

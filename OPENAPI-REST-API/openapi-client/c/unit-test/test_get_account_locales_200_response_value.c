#ifndef get_account_locales_200_response_value_TEST
#define get_account_locales_200_response_value_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define get_account_locales_200_response_value_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/get_account_locales_200_response_value.h"
get_account_locales_200_response_value_t* instantiate_get_account_locales_200_response_value(int include_optional);



get_account_locales_200_response_value_t* instantiate_get_account_locales_200_response_value(int include_optional) {
  get_account_locales_200_response_value_t* get_account_locales_200_response_value = NULL;
  if (include_optional) {
    get_account_locales_200_response_value = get_account_locales_200_response_value_create(
      "0",
      "0"
    );
  } else {
    get_account_locales_200_response_value = get_account_locales_200_response_value_create(
      "0",
      "0"
    );
  }

  return get_account_locales_200_response_value;
}


#ifdef get_account_locales_200_response_value_MAIN

void test_get_account_locales_200_response_value(int include_optional) {
    get_account_locales_200_response_value_t* get_account_locales_200_response_value_1 = instantiate_get_account_locales_200_response_value(include_optional);

	cJSON* jsonget_account_locales_200_response_value_1 = get_account_locales_200_response_value_convertToJSON(get_account_locales_200_response_value_1);
	printf("get_account_locales_200_response_value :\n%s\n", cJSON_Print(jsonget_account_locales_200_response_value_1));
	get_account_locales_200_response_value_t* get_account_locales_200_response_value_2 = get_account_locales_200_response_value_parseFromJSON(jsonget_account_locales_200_response_value_1);
	cJSON* jsonget_account_locales_200_response_value_2 = get_account_locales_200_response_value_convertToJSON(get_account_locales_200_response_value_2);
	printf("repeating get_account_locales_200_response_value:\n%s\n", cJSON_Print(jsonget_account_locales_200_response_value_2));
}

int main() {
  test_get_account_locales_200_response_value(1);
  test_get_account_locales_200_response_value(0);

  printf("Hello world \n");
  return 0;
}

#endif // get_account_locales_200_response_value_MAIN
#endif // get_account_locales_200_response_value_TEST

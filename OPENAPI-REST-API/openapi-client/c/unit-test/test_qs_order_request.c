#ifndef qs_order_request_TEST
#define qs_order_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qs_order_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qs_order_request.h"
qs_order_request_t* instantiate_qs_order_request(int include_optional);



qs_order_request_t* instantiate_qs_order_request(int include_optional) {
  qs_order_request_t* qs_order_request = NULL;
  if (include_optional) {
    qs_order_request = qs_order_request_create(
      56,
      "0",
      1,
      "0",
      "0"
    );
  } else {
    qs_order_request = qs_order_request_create(
      56,
      "0",
      1,
      "0",
      "0"
    );
  }

  return qs_order_request;
}


#ifdef qs_order_request_MAIN

void test_qs_order_request(int include_optional) {
    qs_order_request_t* qs_order_request_1 = instantiate_qs_order_request(include_optional);

	cJSON* jsonqs_order_request_1 = qs_order_request_convertToJSON(qs_order_request_1);
	printf("qs_order_request :\n%s\n", cJSON_Print(jsonqs_order_request_1));
	qs_order_request_t* qs_order_request_2 = qs_order_request_parseFromJSON(jsonqs_order_request_1);
	cJSON* jsonqs_order_request_2 = qs_order_request_convertToJSON(qs_order_request_2);
	printf("repeating qs_order_request:\n%s\n", cJSON_Print(jsonqs_order_request_2));
}

int main() {
  test_qs_order_request(1);
  test_qs_order_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // qs_order_request_MAIN
#endif // qs_order_request_TEST

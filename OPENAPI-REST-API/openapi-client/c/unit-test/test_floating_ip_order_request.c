#ifndef floating_ip_order_request_TEST
#define floating_ip_order_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define floating_ip_order_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/floating_ip_order_request.h"
floating_ip_order_request_t* instantiate_floating_ip_order_request(int include_optional);



floating_ip_order_request_t* instantiate_floating_ip_order_request(int include_optional) {
  floating_ip_order_request_t* floating_ip_order_request = NULL;
  if (include_optional) {
    floating_ip_order_request = floating_ip_order_request_create(
      56,
      "0",
      "0"
    );
  } else {
    floating_ip_order_request = floating_ip_order_request_create(
      56,
      "0",
      "0"
    );
  }

  return floating_ip_order_request;
}


#ifdef floating_ip_order_request_MAIN

void test_floating_ip_order_request(int include_optional) {
    floating_ip_order_request_t* floating_ip_order_request_1 = instantiate_floating_ip_order_request(include_optional);

	cJSON* jsonfloating_ip_order_request_1 = floating_ip_order_request_convertToJSON(floating_ip_order_request_1);
	printf("floating_ip_order_request :\n%s\n", cJSON_Print(jsonfloating_ip_order_request_1));
	floating_ip_order_request_t* floating_ip_order_request_2 = floating_ip_order_request_parseFromJSON(jsonfloating_ip_order_request_1);
	cJSON* jsonfloating_ip_order_request_2 = floating_ip_order_request_convertToJSON(floating_ip_order_request_2);
	printf("repeating floating_ip_order_request:\n%s\n", cJSON_Print(jsonfloating_ip_order_request_2));
}

int main() {
  test_floating_ip_order_request(1);
  test_floating_ip_order_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // floating_ip_order_request_MAIN
#endif // floating_ip_order_request_TEST

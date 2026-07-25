#ifndef ssl_order_request_TEST
#define ssl_order_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ssl_order_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ssl_order_request.h"
ssl_order_request_t* instantiate_ssl_order_request(int include_optional);



ssl_order_request_t* instantiate_ssl_order_request(int include_optional) {
  ssl_order_request_t* ssl_order_request = NULL;
  if (include_optional) {
    ssl_order_request = ssl_order_request_create(
      56,
      "0",
      "0",
      56,
      "0",
      interserver_management_api_ssl_order_request_CSRTYPE_"generated",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "Administration",
      "0",
      "0"
    );
  } else {
    ssl_order_request = ssl_order_request_create(
      56,
      "0",
      "0",
      56,
      "0",
      interserver_management_api_ssl_order_request_CSRTYPE_"generated",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "Administration",
      "0",
      "0"
    );
  }

  return ssl_order_request;
}


#ifdef ssl_order_request_MAIN

void test_ssl_order_request(int include_optional) {
    ssl_order_request_t* ssl_order_request_1 = instantiate_ssl_order_request(include_optional);

	cJSON* jsonssl_order_request_1 = ssl_order_request_convertToJSON(ssl_order_request_1);
	printf("ssl_order_request :\n%s\n", cJSON_Print(jsonssl_order_request_1));
	ssl_order_request_t* ssl_order_request_2 = ssl_order_request_parseFromJSON(jsonssl_order_request_1);
	cJSON* jsonssl_order_request_2 = ssl_order_request_convertToJSON(ssl_order_request_2);
	printf("repeating ssl_order_request:\n%s\n", cJSON_Print(jsonssl_order_request_2));
}

int main() {
  test_ssl_order_request(1);
  test_ssl_order_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // ssl_order_request_MAIN
#endif // ssl_order_request_TEST

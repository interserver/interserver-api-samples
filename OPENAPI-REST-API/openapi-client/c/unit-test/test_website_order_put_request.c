#ifndef website_order_put_request_TEST
#define website_order_put_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define website_order_put_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/website_order_put_request.h"
website_order_put_request_t* instantiate_website_order_put_request(int include_optional);



website_order_put_request_t* instantiate_website_order_put_request(int include_optional) {
  website_order_put_request_t* website_order_put_request = NULL;
  if (include_optional) {
    website_order_put_request = website_order_put_request_create(
      "0",
      56,
      "0",
      56,
      "0",
      56,
      56,
      "0",
      1
    );
  } else {
    website_order_put_request = website_order_put_request_create(
      "0",
      56,
      "0",
      56,
      "0",
      56,
      56,
      "0",
      1
    );
  }

  return website_order_put_request;
}


#ifdef website_order_put_request_MAIN

void test_website_order_put_request(int include_optional) {
    website_order_put_request_t* website_order_put_request_1 = instantiate_website_order_put_request(include_optional);

	cJSON* jsonwebsite_order_put_request_1 = website_order_put_request_convertToJSON(website_order_put_request_1);
	printf("website_order_put_request :\n%s\n", cJSON_Print(jsonwebsite_order_put_request_1));
	website_order_put_request_t* website_order_put_request_2 = website_order_put_request_parseFromJSON(jsonwebsite_order_put_request_1);
	cJSON* jsonwebsite_order_put_request_2 = website_order_put_request_convertToJSON(website_order_put_request_2);
	printf("repeating website_order_put_request:\n%s\n", cJSON_Print(jsonwebsite_order_put_request_2));
}

int main() {
  test_website_order_put_request(1);
  test_website_order_put_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // website_order_put_request_MAIN
#endif // website_order_put_request_TEST

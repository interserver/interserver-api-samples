#ifndef license_order_request_TEST
#define license_order_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define license_order_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/license_order_request.h"
license_order_request_t* instantiate_license_order_request(int include_optional);



license_order_request_t* instantiate_license_order_request(int include_optional) {
  license_order_request_t* license_order_request = NULL;
  if (include_optional) {
    license_order_request = license_order_request_create(
      56,
      "0",
      1,
      56,
      "0",
      "0"
    );
  } else {
    license_order_request = license_order_request_create(
      56,
      "0",
      1,
      56,
      "0",
      "0"
    );
  }

  return license_order_request;
}


#ifdef license_order_request_MAIN

void test_license_order_request(int include_optional) {
    license_order_request_t* license_order_request_1 = instantiate_license_order_request(include_optional);

	cJSON* jsonlicense_order_request_1 = license_order_request_convertToJSON(license_order_request_1);
	printf("license_order_request :\n%s\n", cJSON_Print(jsonlicense_order_request_1));
	license_order_request_t* license_order_request_2 = license_order_request_parseFromJSON(jsonlicense_order_request_1);
	cJSON* jsonlicense_order_request_2 = license_order_request_convertToJSON(license_order_request_2);
	printf("repeating license_order_request:\n%s\n", cJSON_Print(jsonlicense_order_request_2));
}

int main() {
  test_license_order_request(1);
  test_license_order_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // license_order_request_MAIN
#endif // license_order_request_TEST

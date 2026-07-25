#ifndef domain_order_request_TEST
#define domain_order_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define domain_order_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/domain_order_request.h"
domain_order_request_t* instantiate_domain_order_request(int include_optional);



domain_order_request_t* instantiate_domain_order_request(int include_optional) {
  domain_order_request_t* domain_order_request = NULL;
  if (include_optional) {
    domain_order_request = domain_order_request_create(
      "0",
      interserver_management_api_domain_order_request_TYPE_"register",
      "0",
      interserver_management_api_domain_order_request_WHOISPRIVACY_enable
    );
  } else {
    domain_order_request = domain_order_request_create(
      "0",
      interserver_management_api_domain_order_request_TYPE_"register",
      "0",
      interserver_management_api_domain_order_request_WHOISPRIVACY_enable
    );
  }

  return domain_order_request;
}


#ifdef domain_order_request_MAIN

void test_domain_order_request(int include_optional) {
    domain_order_request_t* domain_order_request_1 = instantiate_domain_order_request(include_optional);

	cJSON* jsondomain_order_request_1 = domain_order_request_convertToJSON(domain_order_request_1);
	printf("domain_order_request :\n%s\n", cJSON_Print(jsondomain_order_request_1));
	domain_order_request_t* domain_order_request_2 = domain_order_request_parseFromJSON(jsondomain_order_request_1);
	cJSON* jsondomain_order_request_2 = domain_order_request_convertToJSON(domain_order_request_2);
	printf("repeating domain_order_request:\n%s\n", cJSON_Print(jsondomain_order_request_2));
}

int main() {
  test_domain_order_request(1);
  test_domain_order_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // domain_order_request_MAIN
#endif // domain_order_request_TEST

#ifndef server_bulk_ipmi_power_response_results_inner_TEST
#define server_bulk_ipmi_power_response_results_inner_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define server_bulk_ipmi_power_response_results_inner_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/server_bulk_ipmi_power_response_results_inner.h"
server_bulk_ipmi_power_response_results_inner_t* instantiate_server_bulk_ipmi_power_response_results_inner(int include_optional);



server_bulk_ipmi_power_response_results_inner_t* instantiate_server_bulk_ipmi_power_response_results_inner(int include_optional) {
  server_bulk_ipmi_power_response_results_inner_t* server_bulk_ipmi_power_response_results_inner = NULL;
  if (include_optional) {
    server_bulk_ipmi_power_response_results_inner = server_bulk_ipmi_power_response_results_inner_create(
      2313,
      5432,
      "Chassis Power is on",
      "Service is not active"
    );
  } else {
    server_bulk_ipmi_power_response_results_inner = server_bulk_ipmi_power_response_results_inner_create(
      2313,
      5432,
      "Chassis Power is on",
      "Service is not active"
    );
  }

  return server_bulk_ipmi_power_response_results_inner;
}


#ifdef server_bulk_ipmi_power_response_results_inner_MAIN

void test_server_bulk_ipmi_power_response_results_inner(int include_optional) {
    server_bulk_ipmi_power_response_results_inner_t* server_bulk_ipmi_power_response_results_inner_1 = instantiate_server_bulk_ipmi_power_response_results_inner(include_optional);

	cJSON* jsonserver_bulk_ipmi_power_response_results_inner_1 = server_bulk_ipmi_power_response_results_inner_convertToJSON(server_bulk_ipmi_power_response_results_inner_1);
	printf("server_bulk_ipmi_power_response_results_inner :\n%s\n", cJSON_Print(jsonserver_bulk_ipmi_power_response_results_inner_1));
	server_bulk_ipmi_power_response_results_inner_t* server_bulk_ipmi_power_response_results_inner_2 = server_bulk_ipmi_power_response_results_inner_parseFromJSON(jsonserver_bulk_ipmi_power_response_results_inner_1);
	cJSON* jsonserver_bulk_ipmi_power_response_results_inner_2 = server_bulk_ipmi_power_response_results_inner_convertToJSON(server_bulk_ipmi_power_response_results_inner_2);
	printf("repeating server_bulk_ipmi_power_response_results_inner:\n%s\n", cJSON_Print(jsonserver_bulk_ipmi_power_response_results_inner_2));
}

int main() {
  test_server_bulk_ipmi_power_response_results_inner(1);
  test_server_bulk_ipmi_power_response_results_inner(0);

  printf("Hello world \n");
  return 0;
}

#endif // server_bulk_ipmi_power_response_results_inner_MAIN
#endif // server_bulk_ipmi_power_response_results_inner_TEST

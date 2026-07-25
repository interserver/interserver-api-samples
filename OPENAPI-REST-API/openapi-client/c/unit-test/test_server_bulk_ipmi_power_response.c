#ifndef server_bulk_ipmi_power_response_TEST
#define server_bulk_ipmi_power_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define server_bulk_ipmi_power_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/server_bulk_ipmi_power_response.h"
server_bulk_ipmi_power_response_t* instantiate_server_bulk_ipmi_power_response(int include_optional);



server_bulk_ipmi_power_response_t* instantiate_server_bulk_ipmi_power_response(int include_optional) {
  server_bulk_ipmi_power_response_t* server_bulk_ipmi_power_response = NULL;
  if (include_optional) {
    server_bulk_ipmi_power_response = server_bulk_ipmi_power_response_create(
      list_createList()
    );
  } else {
    server_bulk_ipmi_power_response = server_bulk_ipmi_power_response_create(
      list_createList()
    );
  }

  return server_bulk_ipmi_power_response;
}


#ifdef server_bulk_ipmi_power_response_MAIN

void test_server_bulk_ipmi_power_response(int include_optional) {
    server_bulk_ipmi_power_response_t* server_bulk_ipmi_power_response_1 = instantiate_server_bulk_ipmi_power_response(include_optional);

	cJSON* jsonserver_bulk_ipmi_power_response_1 = server_bulk_ipmi_power_response_convertToJSON(server_bulk_ipmi_power_response_1);
	printf("server_bulk_ipmi_power_response :\n%s\n", cJSON_Print(jsonserver_bulk_ipmi_power_response_1));
	server_bulk_ipmi_power_response_t* server_bulk_ipmi_power_response_2 = server_bulk_ipmi_power_response_parseFromJSON(jsonserver_bulk_ipmi_power_response_1);
	cJSON* jsonserver_bulk_ipmi_power_response_2 = server_bulk_ipmi_power_response_convertToJSON(server_bulk_ipmi_power_response_2);
	printf("repeating server_bulk_ipmi_power_response:\n%s\n", cJSON_Print(jsonserver_bulk_ipmi_power_response_2));
}

int main() {
  test_server_bulk_ipmi_power_response(1);
  test_server_bulk_ipmi_power_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // server_bulk_ipmi_power_response_MAIN
#endif // server_bulk_ipmi_power_response_TEST

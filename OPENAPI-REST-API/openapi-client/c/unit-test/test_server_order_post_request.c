#ifndef server_order_post_request_TEST
#define server_order_post_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define server_order_post_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/server_order_post_request.h"
server_order_post_request_t* instantiate_server_order_post_request(int include_optional);

#include "test_server_order_post_request_hd.c"


server_order_post_request_t* instantiate_server_order_post_request(int include_optional) {
  server_order_post_request_t* server_order_post_request = NULL;
  if (include_optional) {
    server_order_post_request = server_order_post_request_create(
      56,
      null,
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      "0",
      "0",
      1,
      "0"
    );
  } else {
    server_order_post_request = server_order_post_request_create(
      56,
      null,
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      "0",
      "0",
      1,
      "0"
    );
  }

  return server_order_post_request;
}


#ifdef server_order_post_request_MAIN

void test_server_order_post_request(int include_optional) {
    server_order_post_request_t* server_order_post_request_1 = instantiate_server_order_post_request(include_optional);

	cJSON* jsonserver_order_post_request_1 = server_order_post_request_convertToJSON(server_order_post_request_1);
	printf("server_order_post_request :\n%s\n", cJSON_Print(jsonserver_order_post_request_1));
	server_order_post_request_t* server_order_post_request_2 = server_order_post_request_parseFromJSON(jsonserver_order_post_request_1);
	cJSON* jsonserver_order_post_request_2 = server_order_post_request_convertToJSON(server_order_post_request_2);
	printf("repeating server_order_post_request:\n%s\n", cJSON_Print(jsonserver_order_post_request_2));
}

int main() {
  test_server_order_post_request(1);
  test_server_order_post_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // server_order_post_request_MAIN
#endif // server_order_post_request_TEST

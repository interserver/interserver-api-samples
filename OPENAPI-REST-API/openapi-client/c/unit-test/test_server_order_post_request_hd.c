#ifndef server_order_post_request_hd_TEST
#define server_order_post_request_hd_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define server_order_post_request_hd_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/server_order_post_request_hd.h"
server_order_post_request_hd_t* instantiate_server_order_post_request_hd(int include_optional);



server_order_post_request_hd_t* instantiate_server_order_post_request_hd(int include_optional) {
  server_order_post_request_hd_t* server_order_post_request_hd = NULL;
  if (include_optional) {
    server_order_post_request_hd = server_order_post_request_hd_create(
    );
  } else {
    server_order_post_request_hd = server_order_post_request_hd_create(
    );
  }

  return server_order_post_request_hd;
}


#ifdef server_order_post_request_hd_MAIN

void test_server_order_post_request_hd(int include_optional) {
    server_order_post_request_hd_t* server_order_post_request_hd_1 = instantiate_server_order_post_request_hd(include_optional);

	cJSON* jsonserver_order_post_request_hd_1 = server_order_post_request_hd_convertToJSON(server_order_post_request_hd_1);
	printf("server_order_post_request_hd :\n%s\n", cJSON_Print(jsonserver_order_post_request_hd_1));
	server_order_post_request_hd_t* server_order_post_request_hd_2 = server_order_post_request_hd_parseFromJSON(jsonserver_order_post_request_hd_1);
	cJSON* jsonserver_order_post_request_hd_2 = server_order_post_request_hd_convertToJSON(server_order_post_request_hd_2);
	printf("repeating server_order_post_request_hd:\n%s\n", cJSON_Print(jsonserver_order_post_request_hd_2));
}

int main() {
  test_server_order_post_request_hd(1);
  test_server_order_post_request_hd(0);

  printf("Hello world \n");
  return 0;
}

#endif // server_order_post_request_hd_MAIN
#endif // server_order_post_request_hd_TEST

#ifndef put_scrub_ips_200_response_TEST
#define put_scrub_ips_200_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define put_scrub_ips_200_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/put_scrub_ips_200_response.h"
put_scrub_ips_200_response_t* instantiate_put_scrub_ips_200_response(int include_optional);



put_scrub_ips_200_response_t* instantiate_put_scrub_ips_200_response(int include_optional) {
  put_scrub_ips_200_response_t* put_scrub_ips_200_response = NULL;
  if (include_optional) {
    put_scrub_ips_200_response = put_scrub_ips_200_response_create(
      1,
      list_createList(),
      56,
      1.337,
      1.337,
      1.337
    );
  } else {
    put_scrub_ips_200_response = put_scrub_ips_200_response_create(
      1,
      list_createList(),
      56,
      1.337,
      1.337,
      1.337
    );
  }

  return put_scrub_ips_200_response;
}


#ifdef put_scrub_ips_200_response_MAIN

void test_put_scrub_ips_200_response(int include_optional) {
    put_scrub_ips_200_response_t* put_scrub_ips_200_response_1 = instantiate_put_scrub_ips_200_response(include_optional);

	cJSON* jsonput_scrub_ips_200_response_1 = put_scrub_ips_200_response_convertToJSON(put_scrub_ips_200_response_1);
	printf("put_scrub_ips_200_response :\n%s\n", cJSON_Print(jsonput_scrub_ips_200_response_1));
	put_scrub_ips_200_response_t* put_scrub_ips_200_response_2 = put_scrub_ips_200_response_parseFromJSON(jsonput_scrub_ips_200_response_1);
	cJSON* jsonput_scrub_ips_200_response_2 = put_scrub_ips_200_response_convertToJSON(put_scrub_ips_200_response_2);
	printf("repeating put_scrub_ips_200_response:\n%s\n", cJSON_Print(jsonput_scrub_ips_200_response_2));
}

int main() {
  test_put_scrub_ips_200_response(1);
  test_put_scrub_ips_200_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // put_scrub_ips_200_response_MAIN
#endif // put_scrub_ips_200_response_TEST

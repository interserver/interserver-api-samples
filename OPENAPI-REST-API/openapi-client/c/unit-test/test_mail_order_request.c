#ifndef mail_order_request_TEST
#define mail_order_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define mail_order_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/mail_order_request.h"
mail_order_request_t* instantiate_mail_order_request(int include_optional);



mail_order_request_t* instantiate_mail_order_request(int include_optional) {
  mail_order_request_t* mail_order_request = NULL;
  if (include_optional) {
    mail_order_request = mail_order_request_create(
      56,
      "0",
      "0"
    );
  } else {
    mail_order_request = mail_order_request_create(
      56,
      "0",
      "0"
    );
  }

  return mail_order_request;
}


#ifdef mail_order_request_MAIN

void test_mail_order_request(int include_optional) {
    mail_order_request_t* mail_order_request_1 = instantiate_mail_order_request(include_optional);

	cJSON* jsonmail_order_request_1 = mail_order_request_convertToJSON(mail_order_request_1);
	printf("mail_order_request :\n%s\n", cJSON_Print(jsonmail_order_request_1));
	mail_order_request_t* mail_order_request_2 = mail_order_request_parseFromJSON(jsonmail_order_request_1);
	cJSON* jsonmail_order_request_2 = mail_order_request_convertToJSON(mail_order_request_2);
	printf("repeating mail_order_request:\n%s\n", cJSON_Print(jsonmail_order_request_2));
}

int main() {
  test_mail_order_request(1);
  test_mail_order_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // mail_order_request_MAIN
#endif // mail_order_request_TEST

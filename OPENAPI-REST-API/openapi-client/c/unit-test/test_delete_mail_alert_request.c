#ifndef delete_mail_alert_request_TEST
#define delete_mail_alert_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define delete_mail_alert_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/delete_mail_alert_request.h"
delete_mail_alert_request_t* instantiate_delete_mail_alert_request(int include_optional);



delete_mail_alert_request_t* instantiate_delete_mail_alert_request(int include_optional) {
  delete_mail_alert_request_t* delete_mail_alert_request = NULL;
  if (include_optional) {
    delete_mail_alert_request = delete_mail_alert_request_create(
      56
    );
  } else {
    delete_mail_alert_request = delete_mail_alert_request_create(
      56
    );
  }

  return delete_mail_alert_request;
}


#ifdef delete_mail_alert_request_MAIN

void test_delete_mail_alert_request(int include_optional) {
    delete_mail_alert_request_t* delete_mail_alert_request_1 = instantiate_delete_mail_alert_request(include_optional);

	cJSON* jsondelete_mail_alert_request_1 = delete_mail_alert_request_convertToJSON(delete_mail_alert_request_1);
	printf("delete_mail_alert_request :\n%s\n", cJSON_Print(jsondelete_mail_alert_request_1));
	delete_mail_alert_request_t* delete_mail_alert_request_2 = delete_mail_alert_request_parseFromJSON(jsondelete_mail_alert_request_1);
	cJSON* jsondelete_mail_alert_request_2 = delete_mail_alert_request_convertToJSON(delete_mail_alert_request_2);
	printf("repeating delete_mail_alert_request:\n%s\n", cJSON_Print(jsondelete_mail_alert_request_2));
}

int main() {
  test_delete_mail_alert_request(1);
  test_delete_mail_alert_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // delete_mail_alert_request_MAIN
#endif // delete_mail_alert_request_TEST

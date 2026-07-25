/*
 * delete_mail_alert_request.h
 *
 * 
 */

#ifndef _delete_mail_alert_request_H_
#define _delete_mail_alert_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct delete_mail_alert_request_t delete_mail_alert_request_t;




typedef struct delete_mail_alert_request_t {
    int *alert_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} delete_mail_alert_request_t;

__attribute__((deprecated)) delete_mail_alert_request_t *delete_mail_alert_request_create(
    int *alert_id
);

void delete_mail_alert_request_free(delete_mail_alert_request_t *delete_mail_alert_request);

delete_mail_alert_request_t *delete_mail_alert_request_parseFromJSON(cJSON *delete_mail_alert_requestJSON);

cJSON *delete_mail_alert_request_convertToJSON(delete_mail_alert_request_t *delete_mail_alert_request);

#endif /* _delete_mail_alert_request_H_ */


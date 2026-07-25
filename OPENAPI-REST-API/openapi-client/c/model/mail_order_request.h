/*
 * mail_order_request.h
 *
 * Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 */

#ifndef _mail_order_request_H_
#define _mail_order_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct mail_order_request_t mail_order_request_t;




typedef struct mail_order_request_t {
    int *service_type; //numeric
    char *coupon; // string
    char *comment; // string

    int _library_owned; // Is the library responsible for freeing this object?
} mail_order_request_t;

__attribute__((deprecated)) mail_order_request_t *mail_order_request_create(
    int *service_type,
    char *coupon,
    char *comment
);

void mail_order_request_free(mail_order_request_t *mail_order_request);

mail_order_request_t *mail_order_request_parseFromJSON(cJSON *mail_order_requestJSON);

cJSON *mail_order_request_convertToJSON(mail_order_request_t *mail_order_request);

#endif /* _mail_order_request_H_ */


/*
 * qs_order_request.h
 *
 * Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 */

#ifndef _qs_order_request_H_
#define _qs_order_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qs_order_request_t qs_order_request_t;




typedef struct qs_order_request_t {
    int *server; //numeric
    char *password; // string
    int *tos; //boolean
    char *os; // string
    char *comment; // string

    int _library_owned; // Is the library responsible for freeing this object?
} qs_order_request_t;

__attribute__((deprecated)) qs_order_request_t *qs_order_request_create(
    int *server,
    char *password,
    int *tos,
    char *os,
    char *comment
);

void qs_order_request_free(qs_order_request_t *qs_order_request);

qs_order_request_t *qs_order_request_parseFromJSON(cJSON *qs_order_requestJSON);

cJSON *qs_order_request_convertToJSON(qs_order_request_t *qs_order_request);

#endif /* _qs_order_request_H_ */


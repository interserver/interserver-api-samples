/*
 * floating_ip_order_request.h
 *
 * Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 */

#ifndef _floating_ip_order_request_H_
#define _floating_ip_order_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct floating_ip_order_request_t floating_ip_order_request_t;




typedef struct floating_ip_order_request_t {
    int *service_type; //numeric
    char *coupon; // string
    char *comment; // string

    int _library_owned; // Is the library responsible for freeing this object?
} floating_ip_order_request_t;

__attribute__((deprecated)) floating_ip_order_request_t *floating_ip_order_request_create(
    int *service_type,
    char *coupon,
    char *comment
);

void floating_ip_order_request_free(floating_ip_order_request_t *floating_ip_order_request);

floating_ip_order_request_t *floating_ip_order_request_parseFromJSON(cJSON *floating_ip_order_requestJSON);

cJSON *floating_ip_order_request_convertToJSON(floating_ip_order_request_t *floating_ip_order_request);

#endif /* _floating_ip_order_request_H_ */


/*
 * website_order_put_request.h
 *
 * request to validate a webhosting order
 */

#ifndef _website_order_put_request_H_
#define _website_order_put_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct website_order_put_request_t website_order_put_request_t;




typedef struct website_order_put_request_t {
    char *hostname; // string
    int *package_id; //numeric
    char *rootpass; // string
    int *period; //numeric
    char *coupon; // string
    int *service_offer_id; //numeric
    int *script; //numeric
    char *comment; // string
    int *register_domain; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} website_order_put_request_t;

__attribute__((deprecated)) website_order_put_request_t *website_order_put_request_create(
    char *hostname,
    int *package_id,
    char *rootpass,
    int *period,
    char *coupon,
    int *service_offer_id,
    int *script,
    char *comment,
    int *register_domain
);

void website_order_put_request_free(website_order_put_request_t *website_order_put_request);

website_order_put_request_t *website_order_put_request_parseFromJSON(cJSON *website_order_put_requestJSON);

cJSON *website_order_put_request_convertToJSON(website_order_put_request_t *website_order_put_request);

#endif /* _website_order_put_request_H_ */


/*
 * license_order_request.h
 *
 * Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 */

#ifndef _license_order_request_H_
#define _license_order_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct license_order_request_t license_order_request_t;




typedef struct license_order_request_t {
    int *package; //numeric
    char *ip; // string
    int *tos; //boolean
    int *frequency; //numeric
    char *coupon; // string
    char *comment; // string

    int _library_owned; // Is the library responsible for freeing this object?
} license_order_request_t;

__attribute__((deprecated)) license_order_request_t *license_order_request_create(
    int *package,
    char *ip,
    int *tos,
    int *frequency,
    char *coupon,
    char *comment
);

void license_order_request_free(license_order_request_t *license_order_request);

license_order_request_t *license_order_request_parseFromJSON(cJSON *license_order_requestJSON);

cJSON *license_order_request_convertToJSON(license_order_request_t *license_order_request);

#endif /* _license_order_request_H_ */


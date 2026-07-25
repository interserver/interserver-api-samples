/*
 * put_scrub_ips_200_response.h
 *
 * 
 */

#ifndef _put_scrub_ips_200_response_H_
#define _put_scrub_ips_200_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct put_scrub_ips_200_response_t put_scrub_ips_200_response_t;




typedef struct put_scrub_ips_200_response_t {
    int *_continue; //boolean
    list_t *errors; //primitive container
    int *service_type; //numeric
    double *service_cost; //numeric
    double *original_cost; //numeric
    double *repeat_service_cost; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} put_scrub_ips_200_response_t;

__attribute__((deprecated)) put_scrub_ips_200_response_t *put_scrub_ips_200_response_create(
    int *_continue,
    list_t *errors,
    int *service_type,
    double *service_cost,
    double *original_cost,
    double *repeat_service_cost
);

void put_scrub_ips_200_response_free(put_scrub_ips_200_response_t *put_scrub_ips_200_response);

put_scrub_ips_200_response_t *put_scrub_ips_200_response_parseFromJSON(cJSON *put_scrub_ips_200_responseJSON);

cJSON *put_scrub_ips_200_response_convertToJSON(put_scrub_ips_200_response_t *put_scrub_ips_200_response);

#endif /* _put_scrub_ips_200_response_H_ */


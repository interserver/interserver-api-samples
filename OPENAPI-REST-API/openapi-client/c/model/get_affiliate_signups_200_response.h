/*
 * get_affiliate_signups_200_response.h
 *
 * 
 */

#ifndef _get_affiliate_signups_200_response_H_
#define _get_affiliate_signups_200_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct get_affiliate_signups_200_response_t get_affiliate_signups_200_response_t;

#include "object.h"



typedef struct get_affiliate_signups_200_response_t {
    object_t *data; //object

    int _library_owned; // Is the library responsible for freeing this object?
} get_affiliate_signups_200_response_t;

__attribute__((deprecated)) get_affiliate_signups_200_response_t *get_affiliate_signups_200_response_create(
    object_t *data
);

void get_affiliate_signups_200_response_free(get_affiliate_signups_200_response_t *get_affiliate_signups_200_response);

get_affiliate_signups_200_response_t *get_affiliate_signups_200_response_parseFromJSON(cJSON *get_affiliate_signups_200_responseJSON);

cJSON *get_affiliate_signups_200_response_convertToJSON(get_affiliate_signups_200_response_t *get_affiliate_signups_200_response);

#endif /* _get_affiliate_signups_200_response_H_ */


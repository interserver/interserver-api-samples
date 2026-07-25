/*
 * initiate_payment_200_response.h
 *
 * 
 */

#ifndef _initiate_payment_200_response_H_
#define _initiate_payment_200_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct initiate_payment_200_response_t initiate_payment_200_response_t;

#include "object.h"

// Enum TYPE for initiate_payment_200_response

typedef enum  { interserver_management_api_initiate_payment_200_response_TYPE_NULL = 0, interserver_management_api_initiate_payment_200_response_TYPE_redirect, interserver_management_api_initiate_payment_200_response_TYPE_submit, interserver_management_api_initiate_payment_200_response_TYPE_single, interserver_management_api_initiate_payment_200_response_TYPE__11184809 } interserver_management_api_initiate_payment_200_response_TYPE_e;

char* initiate_payment_200_response_type_ToString(interserver_management_api_initiate_payment_200_response_TYPE_e type);

interserver_management_api_initiate_payment_200_response_TYPE_e initiate_payment_200_response_type_FromString(char* type);



typedef struct initiate_payment_200_response_t {
    interserver_management_api_initiate_payment_200_response_TYPE_e type; //enum
    char *redirect; // string
    char *action; // string
    char *method; // string
    object_t *items; //object
    char *text; // string

    int _library_owned; // Is the library responsible for freeing this object?
} initiate_payment_200_response_t;

__attribute__((deprecated)) initiate_payment_200_response_t *initiate_payment_200_response_create(
    interserver_management_api_initiate_payment_200_response_TYPE_e type,
    char *redirect,
    char *action,
    char *method,
    object_t *items,
    char *text
);

void initiate_payment_200_response_free(initiate_payment_200_response_t *initiate_payment_200_response);

initiate_payment_200_response_t *initiate_payment_200_response_parseFromJSON(cJSON *initiate_payment_200_responseJSON);

cJSON *initiate_payment_200_response_convertToJSON(initiate_payment_200_response_t *initiate_payment_200_response);

#endif /* _initiate_payment_200_response_H_ */


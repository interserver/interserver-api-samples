/*
 * ssl_order_request.h
 *
 * Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
 */

#ifndef _ssl_order_request_H_
#define _ssl_order_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ssl_order_request_t ssl_order_request_t;


// Enum CSRTYPE for ssl_order_request

typedef enum  { interserver_management_api_ssl_order_request_CSRTYPE_NULL = 0, interserver_management_api_ssl_order_request_CSRTYPE_generated, interserver_management_api_ssl_order_request_CSRTYPE_provided } interserver_management_api_ssl_order_request_CSRTYPE_e;

char* ssl_order_request_csr_type_ToString(interserver_management_api_ssl_order_request_CSRTYPE_e csr_type);

interserver_management_api_ssl_order_request_CSRTYPE_e ssl_order_request_csr_type_FromString(char* csr_type);



typedef struct ssl_order_request_t {
    int *ssl; //numeric
    char *hostname; // string
    char *approver_email; // string
    int *frequency; //numeric
    char *coupon; // string
    interserver_management_api_ssl_order_request_CSRTYPE_e csr_type; //enum
    char *csr; // string
    char *firstname; // string
    char *lastname; // string
    char *email; // string
    char *address; // string
    char *city; // string
    char *state; // string
    char *zip; // string
    char *country; // string
    char *phone; // string
    char *company; // string
    char *department; // string
    char *agency; // string
    char *business_category; // string

    int _library_owned; // Is the library responsible for freeing this object?
} ssl_order_request_t;

__attribute__((deprecated)) ssl_order_request_t *ssl_order_request_create(
    int *ssl,
    char *hostname,
    char *approver_email,
    int *frequency,
    char *coupon,
    interserver_management_api_ssl_order_request_CSRTYPE_e csr_type,
    char *csr,
    char *firstname,
    char *lastname,
    char *email,
    char *address,
    char *city,
    char *state,
    char *zip,
    char *country,
    char *phone,
    char *company,
    char *department,
    char *agency,
    char *business_category
);

void ssl_order_request_free(ssl_order_request_t *ssl_order_request);

ssl_order_request_t *ssl_order_request_parseFromJSON(cJSON *ssl_order_requestJSON);

cJSON *ssl_order_request_convertToJSON(ssl_order_request_t *ssl_order_request);

#endif /* _ssl_order_request_H_ */


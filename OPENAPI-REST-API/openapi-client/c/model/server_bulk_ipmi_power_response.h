/*
 * server_bulk_ipmi_power_response.h
 *
 * Per-server IPMI power-status results for a bulk lookup.
 */

#ifndef _server_bulk_ipmi_power_response_H_
#define _server_bulk_ipmi_power_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct server_bulk_ipmi_power_response_t server_bulk_ipmi_power_response_t;

#include "server_bulk_ipmi_power_response_results_inner.h"



typedef struct server_bulk_ipmi_power_response_t {
    list_t *results; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} server_bulk_ipmi_power_response_t;

__attribute__((deprecated)) server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response_create(
    list_t *results
);

void server_bulk_ipmi_power_response_free(server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response);

server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response_parseFromJSON(cJSON *server_bulk_ipmi_power_responseJSON);

cJSON *server_bulk_ipmi_power_response_convertToJSON(server_bulk_ipmi_power_response_t *server_bulk_ipmi_power_response);

#endif /* _server_bulk_ipmi_power_response_H_ */


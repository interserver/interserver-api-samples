/*
 * server_bulk_ipmi_power_response_results_inner.h
 *
 * 
 */

#ifndef _server_bulk_ipmi_power_response_results_inner_H_
#define _server_bulk_ipmi_power_response_results_inner_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct server_bulk_ipmi_power_response_results_inner_t server_bulk_ipmi_power_response_results_inner_t;




typedef struct server_bulk_ipmi_power_response_results_inner_t {
    int *id; //numeric
    int *asset; //numeric
    char *text; // string
    char *error; // string

    int _library_owned; // Is the library responsible for freeing this object?
} server_bulk_ipmi_power_response_results_inner_t;

__attribute__((deprecated)) server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner_create(
    int *id,
    int *asset,
    char *text,
    char *error
);

void server_bulk_ipmi_power_response_results_inner_free(server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner);

server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner_parseFromJSON(cJSON *server_bulk_ipmi_power_response_results_innerJSON);

cJSON *server_bulk_ipmi_power_response_results_inner_convertToJSON(server_bulk_ipmi_power_response_results_inner_t *server_bulk_ipmi_power_response_results_inner);

#endif /* _server_bulk_ipmi_power_response_results_inner_H_ */


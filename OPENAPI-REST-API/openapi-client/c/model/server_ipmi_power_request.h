/*
 * server_ipmi_power_request.h
 *
 * IPMI Power command for servers
 */

#ifndef _server_ipmi_power_request_H_
#define _server_ipmi_power_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct server_ipmi_power_request_t server_ipmi_power_request_t;


// Enum ACTION for server_ipmi_power_request

typedef enum  { interserver_management_api_server_ipmi_power_request_ACTION_NULL = 0, interserver_management_api_server_ipmi_power_request_ACTION_cycle, interserver_management_api_server_ipmi_power_request_ACTION_reset, interserver_management_api_server_ipmi_power_request_ACTION_on, interserver_management_api_server_ipmi_power_request_ACTION_off, interserver_management_api_server_ipmi_power_request_ACTION_soft, interserver_management_api_server_ipmi_power_request_ACTION__11184809 } interserver_management_api_server_ipmi_power_request_ACTION_e;

char* server_ipmi_power_request_action_ToString(interserver_management_api_server_ipmi_power_request_ACTION_e action);

interserver_management_api_server_ipmi_power_request_ACTION_e server_ipmi_power_request_action_FromString(char* action);



typedef struct server_ipmi_power_request_t {
    interserver_management_api_server_ipmi_power_request_ACTION_e action; //enum
    int *asset; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} server_ipmi_power_request_t;

__attribute__((deprecated)) server_ipmi_power_request_t *server_ipmi_power_request_create(
    interserver_management_api_server_ipmi_power_request_ACTION_e action,
    int *asset
);

void server_ipmi_power_request_free(server_ipmi_power_request_t *server_ipmi_power_request);

server_ipmi_power_request_t *server_ipmi_power_request_parseFromJSON(cJSON *server_ipmi_power_requestJSON);

cJSON *server_ipmi_power_request_convertToJSON(server_ipmi_power_request_t *server_ipmi_power_request);

#endif /* _server_ipmi_power_request_H_ */


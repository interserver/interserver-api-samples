/*
 * create_firewall_rule.h
 *
 * Create firewall rule for your ip
 */

#ifndef _create_firewall_rule_H_
#define _create_firewall_rule_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct create_firewall_rule_t create_firewall_rule_t;


// Enum PROTOCOLID for create_firewall_rule

typedef enum  { interserver_management_api_create_firewall_rule_PROTOCOLID_NULL = 0, interserver_management_api_create_firewall_rule_PROTOCOLID__1, interserver_management_api_create_firewall_rule_PROTOCOLID__2, interserver_management_api_create_firewall_rule_PROTOCOLID__11184809 } interserver_management_api_create_firewall_rule_PROTOCOLID_e;

char* create_firewall_rule_protocol_id_ToString(interserver_management_api_create_firewall_rule_PROTOCOLID_e protocol_id);

interserver_management_api_create_firewall_rule_PROTOCOLID_e create_firewall_rule_protocol_id_FromString(char* protocol_id);

// Enum XDPACTION for create_firewall_rule

typedef enum  { interserver_management_api_create_firewall_rule_XDPACTION_NULL = 0, interserver_management_api_create_firewall_rule_XDPACTION__0, interserver_management_api_create_firewall_rule_XDPACTION__1, interserver_management_api_create_firewall_rule_XDPACTION__11184809 } interserver_management_api_create_firewall_rule_XDPACTION_e;

char* create_firewall_rule_xdp_action_ToString(interserver_management_api_create_firewall_rule_XDPACTION_e xdp_action);

interserver_management_api_create_firewall_rule_XDPACTION_e create_firewall_rule_xdp_action_FromString(char* xdp_action);



typedef struct create_firewall_rule_t {
    int *protocol_id; //numeric
    int *xdp_action; //numeric
    int *destination_port; //numeric
    char *source_ip; // string
    int *source_port; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} create_firewall_rule_t;

__attribute__((deprecated)) create_firewall_rule_t *create_firewall_rule_create(
    int *protocol_id,
    int *xdp_action,
    int *destination_port,
    char *source_ip,
    int *source_port
);

void create_firewall_rule_free(create_firewall_rule_t *create_firewall_rule);

create_firewall_rule_t *create_firewall_rule_parseFromJSON(cJSON *create_firewall_ruleJSON);

cJSON *create_firewall_rule_convertToJSON(create_firewall_rule_t *create_firewall_rule);

#endif /* _create_firewall_rule_H_ */


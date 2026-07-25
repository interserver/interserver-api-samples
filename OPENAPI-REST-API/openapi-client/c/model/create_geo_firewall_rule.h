/*
 * create_geo_firewall_rule.h
 *
 * Create firewall rule for your ip
 */

#ifndef _create_geo_firewall_rule_H_
#define _create_geo_firewall_rule_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct create_geo_firewall_rule_t create_geo_firewall_rule_t;


// Enum XDPACTION for create_geo_firewall_rule

typedef enum  { interserver_management_api_create_geo_firewall_rule_XDPACTION_NULL = 0, interserver_management_api_create_geo_firewall_rule_XDPACTION__0, interserver_management_api_create_geo_firewall_rule_XDPACTION__1, interserver_management_api_create_geo_firewall_rule_XDPACTION__11184809 } interserver_management_api_create_geo_firewall_rule_XDPACTION_e;

char* create_geo_firewall_rule_xdp_action_ToString(interserver_management_api_create_geo_firewall_rule_XDPACTION_e xdp_action);

interserver_management_api_create_geo_firewall_rule_XDPACTION_e create_geo_firewall_rule_xdp_action_FromString(char* xdp_action);



typedef struct create_geo_firewall_rule_t {
    int *xdp_action; //numeric
    int *destination_port; //numeric
    int *country_code; //numeric
    int *asn; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} create_geo_firewall_rule_t;

__attribute__((deprecated)) create_geo_firewall_rule_t *create_geo_firewall_rule_create(
    int *xdp_action,
    int *destination_port,
    int *country_code,
    int *asn
);

void create_geo_firewall_rule_free(create_geo_firewall_rule_t *create_geo_firewall_rule);

create_geo_firewall_rule_t *create_geo_firewall_rule_parseFromJSON(cJSON *create_geo_firewall_ruleJSON);

cJSON *create_geo_firewall_rule_convertToJSON(create_geo_firewall_rule_t *create_geo_firewall_rule);

#endif /* _create_geo_firewall_rule_H_ */


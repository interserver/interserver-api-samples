/*
 * vps_order_put_request.h
 *
 * request to validate a vps order
 */

#ifndef _vps_order_put_request_H_
#define _vps_order_put_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct vps_order_put_request_t vps_order_put_request_t;


// Enum VPSPLATFORM for vps_order_put_request

typedef enum  { interserver_management_api_vps_order_put_request_VPSPLATFORM_NULL = 0, interserver_management_api_vps_order_put_request_VPSPLATFORM_kvm, interserver_management_api_vps_order_put_request_VPSPLATFORM_hyperv, interserver_management_api_vps_order_put_request_VPSPLATFORM_kvmstorage, interserver_management_api_vps_order_put_request_VPSPLATFORM__11184809 } interserver_management_api_vps_order_put_request_VPSPLATFORM_e;

char* vps_order_put_request_vps_platform_ToString(interserver_management_api_vps_order_put_request_VPSPLATFORM_e vps_platform);

interserver_management_api_vps_order_put_request_VPSPLATFORM_e vps_order_put_request_vps_platform_FromString(char* vps_platform);

// Enum CONTROLPANEL for vps_order_put_request

typedef enum  { interserver_management_api_vps_order_put_request_CONTROLPANEL_NULL = 0, interserver_management_api_vps_order_put_request_CONTROLPANEL_none, interserver_management_api_vps_order_put_request_CONTROLPANEL_cpanel, interserver_management_api_vps_order_put_request_CONTROLPANEL_da, interserver_management_api_vps_order_put_request_CONTROLPANEL__11184809 } interserver_management_api_vps_order_put_request_CONTROLPANEL_e;

char* vps_order_put_request_controlpanel_ToString(interserver_management_api_vps_order_put_request_CONTROLPANEL_e controlpanel);

interserver_management_api_vps_order_put_request_CONTROLPANEL_e vps_order_put_request_controlpanel_FromString(char* controlpanel);



typedef struct vps_order_put_request_t {
    char *os_distro; // string
    int *slices; //numeric
    interserver_management_api_vps_order_put_request_VPSPLATFORM_e vps_platform; //enum
    int *period; //numeric
    int *location; //numeric
    char *os_version; // string
    char *hostname; // string
    char *rootpass; // string
    interserver_management_api_vps_order_put_request_CONTROLPANEL_e controlpanel; //enum
    char *coupon; // string
    char *comment; // string

    int _library_owned; // Is the library responsible for freeing this object?
} vps_order_put_request_t;

__attribute__((deprecated)) vps_order_put_request_t *vps_order_put_request_create(
    char *os_distro,
    int *slices,
    interserver_management_api_vps_order_put_request_VPSPLATFORM_e vps_platform,
    int *period,
    int *location,
    char *os_version,
    char *hostname,
    char *rootpass,
    interserver_management_api_vps_order_put_request_CONTROLPANEL_e controlpanel,
    char *coupon,
    char *comment
);

void vps_order_put_request_free(vps_order_put_request_t *vps_order_put_request);

vps_order_put_request_t *vps_order_put_request_parseFromJSON(cJSON *vps_order_put_requestJSON);

cJSON *vps_order_put_request_convertToJSON(vps_order_put_request_t *vps_order_put_request);

#endif /* _vps_order_put_request_H_ */


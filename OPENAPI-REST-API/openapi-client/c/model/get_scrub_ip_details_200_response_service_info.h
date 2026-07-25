/*
 * get_scrub_ip_details_200_response_service_info.h
 *
 * 
 */

#ifndef _get_scrub_ip_details_200_response_service_info_H_
#define _get_scrub_ip_details_200_response_service_info_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct get_scrub_ip_details_200_response_service_info_t get_scrub_ip_details_200_response_service_info_t;


// Enum SCRUBIPSTATUS for get_scrub_ip_details_200_response_service_info

typedef enum  { interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_NULL = 0, interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_active, interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_pending, interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_canceled, interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_expired, interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS__11184809 } interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_e;

char* get_scrub_ip_details_200_response_service_info_scrub_ip_status_ToString(interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_e scrub_ip_status);

interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_e get_scrub_ip_details_200_response_service_info_scrub_ip_status_FromString(char* scrub_ip_status);



typedef struct get_scrub_ip_details_200_response_service_info_t {
    char *scrub_ip_id; // string
    char *scrub_ip_type; // string
    char *scrub_ip_custid; // string
    char *scrub_ip_order_date; // string
    char *scrub_ip_ip; // string
    char *scrub_ip_service_id; // string
    char *scrub_ip_service_module; // string
    interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_e scrub_ip_status; //enum
    char *scrub_ip_invoice; // string
    char *scrub_ip_currency; // string
    char *scrub_ip_coupon; // string
    char *scrub_ip_comment; // string

    int _library_owned; // Is the library responsible for freeing this object?
} get_scrub_ip_details_200_response_service_info_t;

__attribute__((deprecated)) get_scrub_ip_details_200_response_service_info_t *get_scrub_ip_details_200_response_service_info_create(
    char *scrub_ip_id,
    char *scrub_ip_type,
    char *scrub_ip_custid,
    char *scrub_ip_order_date,
    char *scrub_ip_ip,
    char *scrub_ip_service_id,
    char *scrub_ip_service_module,
    interserver_management_api_get_scrub_ip_details_200_response_service_info_SCRUBIPSTATUS_e scrub_ip_status,
    char *scrub_ip_invoice,
    char *scrub_ip_currency,
    char *scrub_ip_coupon,
    char *scrub_ip_comment
);

void get_scrub_ip_details_200_response_service_info_free(get_scrub_ip_details_200_response_service_info_t *get_scrub_ip_details_200_response_service_info);

get_scrub_ip_details_200_response_service_info_t *get_scrub_ip_details_200_response_service_info_parseFromJSON(cJSON *get_scrub_ip_details_200_response_service_infoJSON);

cJSON *get_scrub_ip_details_200_response_service_info_convertToJSON(get_scrub_ip_details_200_response_service_info_t *get_scrub_ip_details_200_response_service_info);

#endif /* _get_scrub_ip_details_200_response_service_info_H_ */


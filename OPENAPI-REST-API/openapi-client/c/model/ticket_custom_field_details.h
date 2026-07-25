/*
 * ticket_custom_field_details.h
 *
 * Optional fields providing additional info in ticket
 */

#ifndef _ticket_custom_field_details_H_
#define _ticket_custom_field_details_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ticket_custom_field_details_t ticket_custom_field_details_t;


// Enum CUSTOMERSERVERACCESS for ticket_custom_field_details

typedef enum  { interserver_management_api_ticket_custom_field_details_CUSTOMERSERVERACCESS_NULL = 0, interserver_management_api_ticket_custom_field_details_CUSTOMERSERVERACCESS_y, interserver_management_api_ticket_custom_field_details_CUSTOMERSERVERACCESS_n, interserver_management_api_ticket_custom_field_details_CUSTOMERSERVERACCESS__11184809 } interserver_management_api_ticket_custom_field_details_CUSTOMERSERVERACCESS_e;

char* ticket_custom_field_details_customer_server_access_ToString(interserver_management_api_ticket_custom_field_details_CUSTOMERSERVERACCESS_e customer_server_access);

interserver_management_api_ticket_custom_field_details_CUSTOMERSERVERACCESS_e ticket_custom_field_details_customer_server_access_FromString(char* customer_server_access);



typedef struct ticket_custom_field_details_t {
    interserver_management_api_ticket_custom_field_details_CUSTOMERSERVERACCESS_e customer_server_access; //enum
    char *ip_address; // string
    char *root_password; // string
    char *sudo_user; // string
    int *sudo_password; //numeric
    int *port; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} ticket_custom_field_details_t;

__attribute__((deprecated)) ticket_custom_field_details_t *ticket_custom_field_details_create(
    interserver_management_api_ticket_custom_field_details_CUSTOMERSERVERACCESS_e customer_server_access,
    char *ip_address,
    char *root_password,
    char *sudo_user,
    int *sudo_password,
    int *port
);

void ticket_custom_field_details_free(ticket_custom_field_details_t *ticket_custom_field_details);

ticket_custom_field_details_t *ticket_custom_field_details_parseFromJSON(cJSON *ticket_custom_field_detailsJSON);

cJSON *ticket_custom_field_details_convertToJSON(ticket_custom_field_details_t *ticket_custom_field_details);

#endif /* _ticket_custom_field_details_H_ */


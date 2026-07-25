/*
 * update_ticket.h
 *
 * Update custom fields of the ticket
 */

#ifndef _update_ticket_H_
#define _update_ticket_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct update_ticket_t update_ticket_t;


// Enum CUSTOMERSERVERACCESS for update_ticket

typedef enum  { interserver_management_api_update_ticket_CUSTOMERSERVERACCESS_NULL = 0, interserver_management_api_update_ticket_CUSTOMERSERVERACCESS_y, interserver_management_api_update_ticket_CUSTOMERSERVERACCESS_n, interserver_management_api_update_ticket_CUSTOMERSERVERACCESS__11184809 } interserver_management_api_update_ticket_CUSTOMERSERVERACCESS_e;

char* update_ticket_customer_server_access_ToString(interserver_management_api_update_ticket_CUSTOMERSERVERACCESS_e customer_server_access);

interserver_management_api_update_ticket_CUSTOMERSERVERACCESS_e update_ticket_customer_server_access_FromString(char* customer_server_access);



typedef struct update_ticket_t {
    char *ip; // string
    char *ip_address; // string
    interserver_management_api_update_ticket_CUSTOMERSERVERACCESS_e customer_server_access; //enum
    char *root_password; // string
    char *sudo_username; // string
    char *sudo_password; // string
    int *port; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} update_ticket_t;

__attribute__((deprecated)) update_ticket_t *update_ticket_create(
    char *ip,
    char *ip_address,
    interserver_management_api_update_ticket_CUSTOMERSERVERACCESS_e customer_server_access,
    char *root_password,
    char *sudo_username,
    char *sudo_password,
    int *port
);

void update_ticket_free(update_ticket_t *update_ticket);

update_ticket_t *update_ticket_parseFromJSON(cJSON *update_ticketJSON);

cJSON *update_ticket_convertToJSON(update_ticket_t *update_ticket);

#endif /* _update_ticket_H_ */


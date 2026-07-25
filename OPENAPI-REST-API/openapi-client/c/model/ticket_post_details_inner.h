/*
 * ticket_post_details_inner.h
 *
 * 
 */

#ifndef _ticket_post_details_inner_H_
#define _ticket_post_details_inner_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ticket_post_details_inner_t ticket_post_details_inner_t;


// Enum CREATOR for ticket_post_details_inner

typedef enum  { interserver_management_api_ticket_post_details_inner_CREATOR_NULL = 0, interserver_management_api_ticket_post_details_inner_CREATOR_User, interserver_management_api_ticket_post_details_inner_CREATOR_Staff, interserver_management_api_ticket_post_details_inner_CREATOR__11184809 } interserver_management_api_ticket_post_details_inner_CREATOR_e;

char* ticket_post_details_inner_creator_ToString(interserver_management_api_ticket_post_details_inner_CREATOR_e creator);

interserver_management_api_ticket_post_details_inner_CREATOR_e ticket_post_details_inner_creator_FromString(char* creator);



typedef struct ticket_post_details_inner_t {
    int *post_id; //numeric
    char *date; // string
    char *contents; // string
    interserver_management_api_ticket_post_details_inner_CREATOR_e creator; //enum
    char *creator_email; // string
    char *creator_name; // string
    int *hasattachments; //numeric
    char *attachment_download; // string

    int _library_owned; // Is the library responsible for freeing this object?
} ticket_post_details_inner_t;

__attribute__((deprecated)) ticket_post_details_inner_t *ticket_post_details_inner_create(
    int *post_id,
    char *date,
    char *contents,
    interserver_management_api_ticket_post_details_inner_CREATOR_e creator,
    char *creator_email,
    char *creator_name,
    int *hasattachments,
    char *attachment_download
);

void ticket_post_details_inner_free(ticket_post_details_inner_t *ticket_post_details_inner);

ticket_post_details_inner_t *ticket_post_details_inner_parseFromJSON(cJSON *ticket_post_details_innerJSON);

cJSON *ticket_post_details_inner_convertToJSON(ticket_post_details_inner_t *ticket_post_details_inner);

#endif /* _ticket_post_details_inner_H_ */


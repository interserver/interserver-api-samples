/*
 * server_order_post_request.h
 *
 * Request body to place a custom dedicated server order. All ids come from getNewServer&#39;s config_li / regions.
 */

#ifndef _server_order_post_request_H_
#define _server_order_post_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct server_order_post_request_t server_order_post_request_t;

#include "server_order_post_request_hd.h"



typedef struct server_order_post_request_t {
    int *cpu; //numeric
    struct server_order_post_request_hd_t *hd; //model
    int *memory; //numeric
    int *bandwidth; //numeric
    int *ips; //numeric
    int *os; //numeric
    int *cp; //numeric
    int *raid; //numeric
    int *region; //numeric
    char *servername; // string
    char *rootpass; // string
    int *tos; //boolean
    char *comment; // string

    int _library_owned; // Is the library responsible for freeing this object?
} server_order_post_request_t;

__attribute__((deprecated)) server_order_post_request_t *server_order_post_request_create(
    int *cpu,
    server_order_post_request_hd_t *hd,
    int *memory,
    int *bandwidth,
    int *ips,
    int *os,
    int *cp,
    int *raid,
    int *region,
    char *servername,
    char *rootpass,
    int *tos,
    char *comment
);

void server_order_post_request_free(server_order_post_request_t *server_order_post_request);

server_order_post_request_t *server_order_post_request_parseFromJSON(cJSON *server_order_post_requestJSON);

cJSON *server_order_post_request_convertToJSON(server_order_post_request_t *server_order_post_request);

#endif /* _server_order_post_request_H_ */


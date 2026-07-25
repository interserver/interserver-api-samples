/*
 * server_order_post_request_hd.h
 *
 * Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
 */

#ifndef _server_order_post_request_hd_H_
#define _server_order_post_request_hd_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct server_order_post_request_hd_t server_order_post_request_hd_t;




typedef struct server_order_post_request_hd_t {

    int _library_owned; // Is the library responsible for freeing this object?
} server_order_post_request_hd_t;

__attribute__((deprecated)) server_order_post_request_hd_t *server_order_post_request_hd_create(
);

void server_order_post_request_hd_free(server_order_post_request_hd_t *server_order_post_request_hd);

server_order_post_request_hd_t *server_order_post_request_hd_parseFromJSON(cJSON *server_order_post_request_hdJSON);

cJSON *server_order_post_request_hd_convertToJSON(server_order_post_request_hd_t *server_order_post_request_hd);

#endif /* _server_order_post_request_hd_H_ */


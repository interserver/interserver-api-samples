#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "server_order_post_request_hd.h"



static server_order_post_request_hd_t *server_order_post_request_hd_create_internal(
    ) {
    server_order_post_request_hd_t *server_order_post_request_hd_local_var = malloc(sizeof(server_order_post_request_hd_t));
    if (!server_order_post_request_hd_local_var) {
        return NULL;
    }
    memset(server_order_post_request_hd_local_var, 0, sizeof(server_order_post_request_hd_t));
    server_order_post_request_hd_local_var->_library_owned = 1;
    return server_order_post_request_hd_local_var;
}

__attribute__((deprecated)) server_order_post_request_hd_t *server_order_post_request_hd_create(
    ) {
    server_order_post_request_hd_t *result = server_order_post_request_hd_create_internal (
        );
    if (!result) {
    }
    return result;
}

void server_order_post_request_hd_free(server_order_post_request_hd_t *server_order_post_request_hd) {
    if(NULL == server_order_post_request_hd){
        return ;
    }
    if(server_order_post_request_hd->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "server_order_post_request_hd_free");
        return ;
    }
    listEntry_t *listEntry;
    free(server_order_post_request_hd);
}

cJSON *server_order_post_request_hd_convertToJSON(server_order_post_request_hd_t *server_order_post_request_hd) {
    cJSON *item = cJSON_CreateObject();
    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

server_order_post_request_hd_t *server_order_post_request_hd_parseFromJSON(cJSON *server_order_post_request_hdJSON){

    server_order_post_request_hd_t *server_order_post_request_hd_local_var = NULL;



    server_order_post_request_hd_local_var = server_order_post_request_hd_create_internal (
        );

    if (!server_order_post_request_hd_local_var) {
        goto end;
    }

    return server_order_post_request_hd_local_var;
end:
    return NULL;

}

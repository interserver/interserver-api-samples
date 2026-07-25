#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qs_order_request.h"



static qs_order_request_t *qs_order_request_create_internal(
    int *server,
    char *password,
    int *tos,
    char *os,
    char *comment
    ) {
    qs_order_request_t *qs_order_request_local_var = malloc(sizeof(qs_order_request_t));
    if (!qs_order_request_local_var) {
        return NULL;
    }
    memset(qs_order_request_local_var, 0, sizeof(qs_order_request_t));
    qs_order_request_local_var->_library_owned = 1;
    qs_order_request_local_var->server = server;
    qs_order_request_local_var->password = password;
    qs_order_request_local_var->tos = tos;
    qs_order_request_local_var->os = os;
    qs_order_request_local_var->comment = comment;
    return qs_order_request_local_var;
}

__attribute__((deprecated)) qs_order_request_t *qs_order_request_create(
    int *server,
    char *password,
    int *tos,
    char *os,
    char *comment
    ) {
    int *server_copy = NULL;
    if (server) {
        server_copy = malloc(sizeof(int));
        if (server_copy) *server_copy = *server;
    }
    int *tos_copy = NULL;
    if (tos) {
        tos_copy = malloc(sizeof(int));
        if (tos_copy) *tos_copy = *tos;
    }
    qs_order_request_t *result = qs_order_request_create_internal (
        server_copy,
        password,
        tos_copy,
        os,
        comment
        );
    if (!result) {
        free(server_copy);
        free(tos_copy);
    }
    return result;
}

void qs_order_request_free(qs_order_request_t *qs_order_request) {
    if(NULL == qs_order_request){
        return ;
    }
    if(qs_order_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qs_order_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qs_order_request->server) {
        free(qs_order_request->server);
        qs_order_request->server = NULL;
    }
    if (qs_order_request->password) {
        free(qs_order_request->password);
        qs_order_request->password = NULL;
    }
    if (qs_order_request->tos) {
        free(qs_order_request->tos);
        qs_order_request->tos = NULL;
    }
    if (qs_order_request->os) {
        free(qs_order_request->os);
        qs_order_request->os = NULL;
    }
    if (qs_order_request->comment) {
        free(qs_order_request->comment);
        qs_order_request->comment = NULL;
    }
    free(qs_order_request);
}

cJSON *qs_order_request_convertToJSON(qs_order_request_t *qs_order_request) {
    cJSON *item = cJSON_CreateObject();

    // qs_order_request->server
    if (!qs_order_request->server) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "server", *qs_order_request->server) == NULL) {
    goto fail; //Numeric
    }


    // qs_order_request->password
    if (!qs_order_request->password) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "password", qs_order_request->password) == NULL) {
    goto fail; //String
    }


    // qs_order_request->tos
    if (!qs_order_request->tos) {
        goto fail;
    }
    if(cJSON_AddBoolToObject(item, "tos", *qs_order_request->tos) == NULL) {
    goto fail; //Bool
    }


    // qs_order_request->os
    if(qs_order_request->os) {
    if(cJSON_AddStringToObject(item, "os", qs_order_request->os) == NULL) {
    goto fail; //String
    }
    }


    // qs_order_request->comment
    if(qs_order_request->comment) {
    if(cJSON_AddStringToObject(item, "comment", qs_order_request->comment) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

qs_order_request_t *qs_order_request_parseFromJSON(cJSON *qs_order_requestJSON){

    qs_order_request_t *qs_order_request_local_var = NULL;

    // define the local variable for qs_order_request->server
    int *server_local_var = NULL;

    char *password_local_str = NULL;

    // define the local variable for qs_order_request->tos
    int *tos_local_var = NULL;

    char *os_local_str = NULL;

    char *comment_local_str = NULL;

    // qs_order_request->server
    cJSON *server = cJSON_GetObjectItemCaseSensitive(qs_order_requestJSON, "server");
    if (cJSON_IsNull(server)) {
        server = NULL;
    }
    if (!server) {
        goto end;
    }

    
    if(!cJSON_IsNumber(server))
    {
    goto end; //Numeric
    }
    server_local_var = malloc(sizeof(int));
    if(!server_local_var)
    {
        goto end;
    }
    *server_local_var = server->valuedouble;

    // qs_order_request->password
    cJSON *password = cJSON_GetObjectItemCaseSensitive(qs_order_requestJSON, "password");
    if (cJSON_IsNull(password)) {
        password = NULL;
    }
    if (!password) {
        goto end;
    }

    
    if(!cJSON_IsString(password))
    {
    goto end; //String
    }

    // qs_order_request->tos
    cJSON *tos = cJSON_GetObjectItemCaseSensitive(qs_order_requestJSON, "tos");
    if (cJSON_IsNull(tos)) {
        tos = NULL;
    }
    if (!tos) {
        goto end;
    }

    
    if(!cJSON_IsBool(tos))
    {
    goto end; //Bool
    }
    tos_local_var = malloc(sizeof(int));
    if(!tos_local_var)
    {
        goto end;
    }
    *tos_local_var = tos->valueint;

    // qs_order_request->os
    cJSON *os = cJSON_GetObjectItemCaseSensitive(qs_order_requestJSON, "os");
    if (cJSON_IsNull(os)) {
        os = NULL;
    }
    if (os) { 
    if(!cJSON_IsString(os) && !cJSON_IsNull(os))
    {
    goto end; //String
    }
    }

    // qs_order_request->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(qs_order_requestJSON, "comment");
    if (cJSON_IsNull(comment)) {
        comment = NULL;
    }
    if (comment) { 
    if(!cJSON_IsString(comment) && !cJSON_IsNull(comment))
    {
    goto end; //String
    }
    }


    if (password && !cJSON_IsNull(password)) password_local_str = strdup(password->valuestring);
    if (os && !cJSON_IsNull(os)) os_local_str = strdup(os->valuestring);
    if (comment && !cJSON_IsNull(comment)) comment_local_str = strdup(comment->valuestring);

    qs_order_request_local_var = qs_order_request_create_internal (
        server_local_var,
        password_local_str,
        tos_local_var,
        os_local_str,
        comment_local_str
        );

    if (!qs_order_request_local_var) {
        goto end;
    }

    return qs_order_request_local_var;
end:
    if (server_local_var) {
        free(server_local_var);
        server_local_var = NULL;
    }
    if (password_local_str) {
        free(password_local_str);
        password_local_str = NULL;
    }
    if (tos_local_var) {
        free(tos_local_var);
        tos_local_var = NULL;
    }
    if (os_local_str) {
        free(os_local_str);
        os_local_str = NULL;
    }
    if (comment_local_str) {
        free(comment_local_str);
        comment_local_str = NULL;
    }
    return NULL;

}

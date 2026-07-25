#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "delete_mail_alert_request.h"



static delete_mail_alert_request_t *delete_mail_alert_request_create_internal(
    int *alert_id
    ) {
    delete_mail_alert_request_t *delete_mail_alert_request_local_var = malloc(sizeof(delete_mail_alert_request_t));
    if (!delete_mail_alert_request_local_var) {
        return NULL;
    }
    memset(delete_mail_alert_request_local_var, 0, sizeof(delete_mail_alert_request_t));
    delete_mail_alert_request_local_var->_library_owned = 1;
    delete_mail_alert_request_local_var->alert_id = alert_id;
    return delete_mail_alert_request_local_var;
}

__attribute__((deprecated)) delete_mail_alert_request_t *delete_mail_alert_request_create(
    int *alert_id
    ) {
    int *alert_id_copy = NULL;
    if (alert_id) {
        alert_id_copy = malloc(sizeof(int));
        if (alert_id_copy) *alert_id_copy = *alert_id;
    }
    delete_mail_alert_request_t *result = delete_mail_alert_request_create_internal (
        alert_id_copy
        );
    if (!result) {
        free(alert_id_copy);
    }
    return result;
}

void delete_mail_alert_request_free(delete_mail_alert_request_t *delete_mail_alert_request) {
    if(NULL == delete_mail_alert_request){
        return ;
    }
    if(delete_mail_alert_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "delete_mail_alert_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (delete_mail_alert_request->alert_id) {
        free(delete_mail_alert_request->alert_id);
        delete_mail_alert_request->alert_id = NULL;
    }
    free(delete_mail_alert_request);
}

cJSON *delete_mail_alert_request_convertToJSON(delete_mail_alert_request_t *delete_mail_alert_request) {
    cJSON *item = cJSON_CreateObject();

    // delete_mail_alert_request->alert_id
    if (!delete_mail_alert_request->alert_id) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "alert_id", *delete_mail_alert_request->alert_id) == NULL) {
    goto fail; //Numeric
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

delete_mail_alert_request_t *delete_mail_alert_request_parseFromJSON(cJSON *delete_mail_alert_requestJSON){

    delete_mail_alert_request_t *delete_mail_alert_request_local_var = NULL;

    // define the local variable for delete_mail_alert_request->alert_id
    int *alert_id_local_var = NULL;

    // delete_mail_alert_request->alert_id
    cJSON *alert_id = cJSON_GetObjectItemCaseSensitive(delete_mail_alert_requestJSON, "alert_id");
    if (cJSON_IsNull(alert_id)) {
        alert_id = NULL;
    }
    if (!alert_id) {
        goto end;
    }

    
    if(!cJSON_IsNumber(alert_id))
    {
    goto end; //Numeric
    }
    alert_id_local_var = malloc(sizeof(int));
    if(!alert_id_local_var)
    {
        goto end;
    }
    *alert_id_local_var = alert_id->valuedouble;



    delete_mail_alert_request_local_var = delete_mail_alert_request_create_internal (
        alert_id_local_var
        );

    if (!delete_mail_alert_request_local_var) {
        goto end;
    }

    return delete_mail_alert_request_local_var;
end:
    if (alert_id_local_var) {
        free(alert_id_local_var);
        alert_id_local_var = NULL;
    }
    return NULL;

}

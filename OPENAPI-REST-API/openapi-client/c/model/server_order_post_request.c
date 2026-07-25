#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "server_order_post_request.h"



static server_order_post_request_t *server_order_post_request_create_internal(
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
    ) {
    server_order_post_request_t *server_order_post_request_local_var = malloc(sizeof(server_order_post_request_t));
    if (!server_order_post_request_local_var) {
        return NULL;
    }
    memset(server_order_post_request_local_var, 0, sizeof(server_order_post_request_t));
    server_order_post_request_local_var->_library_owned = 1;
    server_order_post_request_local_var->cpu = cpu;
    server_order_post_request_local_var->hd = hd;
    server_order_post_request_local_var->memory = memory;
    server_order_post_request_local_var->bandwidth = bandwidth;
    server_order_post_request_local_var->ips = ips;
    server_order_post_request_local_var->os = os;
    server_order_post_request_local_var->cp = cp;
    server_order_post_request_local_var->raid = raid;
    server_order_post_request_local_var->region = region;
    server_order_post_request_local_var->servername = servername;
    server_order_post_request_local_var->rootpass = rootpass;
    server_order_post_request_local_var->tos = tos;
    server_order_post_request_local_var->comment = comment;
    return server_order_post_request_local_var;
}

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
    ) {
    int *cpu_copy = NULL;
    if (cpu) {
        cpu_copy = malloc(sizeof(int));
        if (cpu_copy) *cpu_copy = *cpu;
    }
    int *memory_copy = NULL;
    if (memory) {
        memory_copy = malloc(sizeof(int));
        if (memory_copy) *memory_copy = *memory;
    }
    int *bandwidth_copy = NULL;
    if (bandwidth) {
        bandwidth_copy = malloc(sizeof(int));
        if (bandwidth_copy) *bandwidth_copy = *bandwidth;
    }
    int *ips_copy = NULL;
    if (ips) {
        ips_copy = malloc(sizeof(int));
        if (ips_copy) *ips_copy = *ips;
    }
    int *os_copy = NULL;
    if (os) {
        os_copy = malloc(sizeof(int));
        if (os_copy) *os_copy = *os;
    }
    int *cp_copy = NULL;
    if (cp) {
        cp_copy = malloc(sizeof(int));
        if (cp_copy) *cp_copy = *cp;
    }
    int *raid_copy = NULL;
    if (raid) {
        raid_copy = malloc(sizeof(int));
        if (raid_copy) *raid_copy = *raid;
    }
    int *region_copy = NULL;
    if (region) {
        region_copy = malloc(sizeof(int));
        if (region_copy) *region_copy = *region;
    }
    int *tos_copy = NULL;
    if (tos) {
        tos_copy = malloc(sizeof(int));
        if (tos_copy) *tos_copy = *tos;
    }
    server_order_post_request_t *result = server_order_post_request_create_internal (
        cpu_copy,
        hd,
        memory_copy,
        bandwidth_copy,
        ips_copy,
        os_copy,
        cp_copy,
        raid_copy,
        region_copy,
        servername,
        rootpass,
        tos_copy,
        comment
        );
    if (!result) {
        free(cpu_copy);
        free(memory_copy);
        free(bandwidth_copy);
        free(ips_copy);
        free(os_copy);
        free(cp_copy);
        free(raid_copy);
        free(region_copy);
        free(tos_copy);
    }
    return result;
}

void server_order_post_request_free(server_order_post_request_t *server_order_post_request) {
    if(NULL == server_order_post_request){
        return ;
    }
    if(server_order_post_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "server_order_post_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (server_order_post_request->cpu) {
        free(server_order_post_request->cpu);
        server_order_post_request->cpu = NULL;
    }
    if (server_order_post_request->hd) {
        server_order_post_request_hd_free(server_order_post_request->hd);
        server_order_post_request->hd = NULL;
    }
    if (server_order_post_request->memory) {
        free(server_order_post_request->memory);
        server_order_post_request->memory = NULL;
    }
    if (server_order_post_request->bandwidth) {
        free(server_order_post_request->bandwidth);
        server_order_post_request->bandwidth = NULL;
    }
    if (server_order_post_request->ips) {
        free(server_order_post_request->ips);
        server_order_post_request->ips = NULL;
    }
    if (server_order_post_request->os) {
        free(server_order_post_request->os);
        server_order_post_request->os = NULL;
    }
    if (server_order_post_request->cp) {
        free(server_order_post_request->cp);
        server_order_post_request->cp = NULL;
    }
    if (server_order_post_request->raid) {
        free(server_order_post_request->raid);
        server_order_post_request->raid = NULL;
    }
    if (server_order_post_request->region) {
        free(server_order_post_request->region);
        server_order_post_request->region = NULL;
    }
    if (server_order_post_request->servername) {
        free(server_order_post_request->servername);
        server_order_post_request->servername = NULL;
    }
    if (server_order_post_request->rootpass) {
        free(server_order_post_request->rootpass);
        server_order_post_request->rootpass = NULL;
    }
    if (server_order_post_request->tos) {
        free(server_order_post_request->tos);
        server_order_post_request->tos = NULL;
    }
    if (server_order_post_request->comment) {
        free(server_order_post_request->comment);
        server_order_post_request->comment = NULL;
    }
    free(server_order_post_request);
}

cJSON *server_order_post_request_convertToJSON(server_order_post_request_t *server_order_post_request) {
    cJSON *item = cJSON_CreateObject();

    // server_order_post_request->cpu
    if (!server_order_post_request->cpu) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "cpu", *server_order_post_request->cpu) == NULL) {
    goto fail; //Numeric
    }


    // server_order_post_request->hd
    if (!server_order_post_request->hd) {
        goto fail;
    }
    cJSON *hd_local_JSON = server_order_post_request_hd_convertToJSON(server_order_post_request->hd);
    if(hd_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hd", hd_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // server_order_post_request->memory
    if (!server_order_post_request->memory) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "memory", *server_order_post_request->memory) == NULL) {
    goto fail; //Numeric
    }


    // server_order_post_request->bandwidth
    if (!server_order_post_request->bandwidth) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "bandwidth", *server_order_post_request->bandwidth) == NULL) {
    goto fail; //Numeric
    }


    // server_order_post_request->ips
    if (!server_order_post_request->ips) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "ips", *server_order_post_request->ips) == NULL) {
    goto fail; //Numeric
    }


    // server_order_post_request->os
    if (!server_order_post_request->os) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "os", *server_order_post_request->os) == NULL) {
    goto fail; //Numeric
    }


    // server_order_post_request->cp
    if (!server_order_post_request->cp) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "cp", *server_order_post_request->cp) == NULL) {
    goto fail; //Numeric
    }


    // server_order_post_request->raid
    if (!server_order_post_request->raid) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "raid", *server_order_post_request->raid) == NULL) {
    goto fail; //Numeric
    }


    // server_order_post_request->region
    if (!server_order_post_request->region) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "region", *server_order_post_request->region) == NULL) {
    goto fail; //Numeric
    }


    // server_order_post_request->servername
    if (!server_order_post_request->servername) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "servername", server_order_post_request->servername) == NULL) {
    goto fail; //String
    }


    // server_order_post_request->rootpass
    if (!server_order_post_request->rootpass) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "rootpass", server_order_post_request->rootpass) == NULL) {
    goto fail; //String
    }


    // server_order_post_request->tos
    if (!server_order_post_request->tos) {
        goto fail;
    }
    if(cJSON_AddBoolToObject(item, "tos", *server_order_post_request->tos) == NULL) {
    goto fail; //Bool
    }


    // server_order_post_request->comment
    if(server_order_post_request->comment) {
    if(cJSON_AddStringToObject(item, "comment", server_order_post_request->comment) == NULL) {
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

server_order_post_request_t *server_order_post_request_parseFromJSON(cJSON *server_order_post_requestJSON){

    server_order_post_request_t *server_order_post_request_local_var = NULL;

    // define the local variable for server_order_post_request->cpu
    int *cpu_local_var = NULL;

    // define the local variable for server_order_post_request->hd
    server_order_post_request_hd_t *hd_local_nonprim = NULL;

    // define the local variable for server_order_post_request->memory
    int *memory_local_var = NULL;

    // define the local variable for server_order_post_request->bandwidth
    int *bandwidth_local_var = NULL;

    // define the local variable for server_order_post_request->ips
    int *ips_local_var = NULL;

    // define the local variable for server_order_post_request->os
    int *os_local_var = NULL;

    // define the local variable for server_order_post_request->cp
    int *cp_local_var = NULL;

    // define the local variable for server_order_post_request->raid
    int *raid_local_var = NULL;

    // define the local variable for server_order_post_request->region
    int *region_local_var = NULL;

    char *servername_local_str = NULL;

    char *rootpass_local_str = NULL;

    // define the local variable for server_order_post_request->tos
    int *tos_local_var = NULL;

    char *comment_local_str = NULL;

    // server_order_post_request->cpu
    cJSON *cpu = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "cpu");
    if (cJSON_IsNull(cpu)) {
        cpu = NULL;
    }
    if (!cpu) {
        goto end;
    }

    
    if(!cJSON_IsNumber(cpu))
    {
    goto end; //Numeric
    }
    cpu_local_var = malloc(sizeof(int));
    if(!cpu_local_var)
    {
        goto end;
    }
    *cpu_local_var = cpu->valuedouble;

    // server_order_post_request->hd
    cJSON *hd = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "hd");
    if (cJSON_IsNull(hd)) {
        hd = NULL;
    }
    if (!hd) {
        goto end;
    }

    
    hd_local_nonprim = server_order_post_request_hd_parseFromJSON(hd); //nonprimitive

    // server_order_post_request->memory
    cJSON *memory = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "memory");
    if (cJSON_IsNull(memory)) {
        memory = NULL;
    }
    if (!memory) {
        goto end;
    }

    
    if(!cJSON_IsNumber(memory))
    {
    goto end; //Numeric
    }
    memory_local_var = malloc(sizeof(int));
    if(!memory_local_var)
    {
        goto end;
    }
    *memory_local_var = memory->valuedouble;

    // server_order_post_request->bandwidth
    cJSON *bandwidth = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "bandwidth");
    if (cJSON_IsNull(bandwidth)) {
        bandwidth = NULL;
    }
    if (!bandwidth) {
        goto end;
    }

    
    if(!cJSON_IsNumber(bandwidth))
    {
    goto end; //Numeric
    }
    bandwidth_local_var = malloc(sizeof(int));
    if(!bandwidth_local_var)
    {
        goto end;
    }
    *bandwidth_local_var = bandwidth->valuedouble;

    // server_order_post_request->ips
    cJSON *ips = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "ips");
    if (cJSON_IsNull(ips)) {
        ips = NULL;
    }
    if (!ips) {
        goto end;
    }

    
    if(!cJSON_IsNumber(ips))
    {
    goto end; //Numeric
    }
    ips_local_var = malloc(sizeof(int));
    if(!ips_local_var)
    {
        goto end;
    }
    *ips_local_var = ips->valuedouble;

    // server_order_post_request->os
    cJSON *os = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "os");
    if (cJSON_IsNull(os)) {
        os = NULL;
    }
    if (!os) {
        goto end;
    }

    
    if(!cJSON_IsNumber(os))
    {
    goto end; //Numeric
    }
    os_local_var = malloc(sizeof(int));
    if(!os_local_var)
    {
        goto end;
    }
    *os_local_var = os->valuedouble;

    // server_order_post_request->cp
    cJSON *cp = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "cp");
    if (cJSON_IsNull(cp)) {
        cp = NULL;
    }
    if (!cp) {
        goto end;
    }

    
    if(!cJSON_IsNumber(cp))
    {
    goto end; //Numeric
    }
    cp_local_var = malloc(sizeof(int));
    if(!cp_local_var)
    {
        goto end;
    }
    *cp_local_var = cp->valuedouble;

    // server_order_post_request->raid
    cJSON *raid = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "raid");
    if (cJSON_IsNull(raid)) {
        raid = NULL;
    }
    if (!raid) {
        goto end;
    }

    
    if(!cJSON_IsNumber(raid))
    {
    goto end; //Numeric
    }
    raid_local_var = malloc(sizeof(int));
    if(!raid_local_var)
    {
        goto end;
    }
    *raid_local_var = raid->valuedouble;

    // server_order_post_request->region
    cJSON *region = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "region");
    if (cJSON_IsNull(region)) {
        region = NULL;
    }
    if (!region) {
        goto end;
    }

    
    if(!cJSON_IsNumber(region))
    {
    goto end; //Numeric
    }
    region_local_var = malloc(sizeof(int));
    if(!region_local_var)
    {
        goto end;
    }
    *region_local_var = region->valuedouble;

    // server_order_post_request->servername
    cJSON *servername = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "servername");
    if (cJSON_IsNull(servername)) {
        servername = NULL;
    }
    if (!servername) {
        goto end;
    }

    
    if(!cJSON_IsString(servername))
    {
    goto end; //String
    }

    // server_order_post_request->rootpass
    cJSON *rootpass = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "rootpass");
    if (cJSON_IsNull(rootpass)) {
        rootpass = NULL;
    }
    if (!rootpass) {
        goto end;
    }

    
    if(!cJSON_IsString(rootpass))
    {
    goto end; //String
    }

    // server_order_post_request->tos
    cJSON *tos = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "tos");
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

    // server_order_post_request->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(server_order_post_requestJSON, "comment");
    if (cJSON_IsNull(comment)) {
        comment = NULL;
    }
    if (comment) { 
    if(!cJSON_IsString(comment) && !cJSON_IsNull(comment))
    {
    goto end; //String
    }
    }


    if (servername && !cJSON_IsNull(servername)) servername_local_str = strdup(servername->valuestring);
    if (rootpass && !cJSON_IsNull(rootpass)) rootpass_local_str = strdup(rootpass->valuestring);
    if (comment && !cJSON_IsNull(comment)) comment_local_str = strdup(comment->valuestring);

    server_order_post_request_local_var = server_order_post_request_create_internal (
        cpu_local_var,
        hd_local_nonprim,
        memory_local_var,
        bandwidth_local_var,
        ips_local_var,
        os_local_var,
        cp_local_var,
        raid_local_var,
        region_local_var,
        servername_local_str,
        rootpass_local_str,
        tos_local_var,
        comment_local_str
        );

    if (!server_order_post_request_local_var) {
        goto end;
    }

    return server_order_post_request_local_var;
end:
    if (cpu_local_var) {
        free(cpu_local_var);
        cpu_local_var = NULL;
    }
    if (hd_local_nonprim) {
        server_order_post_request_hd_free(hd_local_nonprim);
        hd_local_nonprim = NULL;
    }
    if (memory_local_var) {
        free(memory_local_var);
        memory_local_var = NULL;
    }
    if (bandwidth_local_var) {
        free(bandwidth_local_var);
        bandwidth_local_var = NULL;
    }
    if (ips_local_var) {
        free(ips_local_var);
        ips_local_var = NULL;
    }
    if (os_local_var) {
        free(os_local_var);
        os_local_var = NULL;
    }
    if (cp_local_var) {
        free(cp_local_var);
        cp_local_var = NULL;
    }
    if (raid_local_var) {
        free(raid_local_var);
        raid_local_var = NULL;
    }
    if (region_local_var) {
        free(region_local_var);
        region_local_var = NULL;
    }
    if (servername_local_str) {
        free(servername_local_str);
        servername_local_str = NULL;
    }
    if (rootpass_local_str) {
        free(rootpass_local_str);
        rootpass_local_str = NULL;
    }
    if (tos_local_var) {
        free(tos_local_var);
        tos_local_var = NULL;
    }
    if (comment_local_str) {
        free(comment_local_str);
        comment_local_str = NULL;
    }
    return NULL;

}

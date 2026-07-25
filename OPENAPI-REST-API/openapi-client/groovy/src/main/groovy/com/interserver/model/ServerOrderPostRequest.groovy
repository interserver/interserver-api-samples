package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ServerOrderPostRequestHd;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderPostRequest {
    /* CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. */
    Integer cpu
    
    ServerOrderPostRequestHd hd
    /* Memory configuration id from config_li.memory_li[cpu]. */
    Integer memory
    /* Bandwidth configuration id from config_li.bandwidth_li. */
    Integer bandwidth
    /* IP block configuration id from config_li.ips_li. */
    Integer ips
    /* Operating System configuration id from config_li.os_li. */
    Integer os
    /* Control Panel configuration id from config_li.cp_li. */
    Integer cp
    /* RAID configuration id from config_li.raid_li. */
    Integer raid
    /* Region id from the regions list. */
    Integer region
    /* Server hostname. Must pass valid_hostname(). */
    String servername
    /* Root password for the server. */
    String rootpass
    /* Terms-of-service acceptance. Must be true to place the order. */
    Boolean tos
    /* Optional free-form order comment. */
    String comment = ""
}

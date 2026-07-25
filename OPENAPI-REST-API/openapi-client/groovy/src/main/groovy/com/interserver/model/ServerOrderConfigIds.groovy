package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderConfigIds {
    /* Memory configuration ID for the server order. */
    Integer memory
    /* Bandwidth configuration ID for the server order. */
    String bandwidth
    /* IPs configuration ID for the server order. */
    String ips
    /* Operating System configuration ID for the server order. */
    String os
    /* Control Panel configuration ID for the server order. */
    Integer cp
    /* RAID configuration ID for the server order. */
    String raid
    /* Hard Drives configuration ID for the server order. */
    String hd
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderFormValues {
    /* Memory value for the server order. */
    Integer memory
    /* Bandwidth value for the server order. */
    String bandwidth
    /* IPs value for the server order. */
    String ips
    /* Operating System value for the server order. */
    String os
    /* Control Panel value for the server order. */
    Integer cp
    /* RAID value for the server order. */
    String raid
    /* Hard Drives value for the server order. */
    String hd
}

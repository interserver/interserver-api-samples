package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ServerOrderFieldLabel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderFieldLabels {
    /* Bandwidth field label. */
    ServerOrderFieldLabel bandwidth
    /* IPs field label. */
    ServerOrderFieldLabel ips
    /* Operating System field label. */
    ServerOrderFieldLabel os
    /* Control Panel field label. */
    ServerOrderFieldLabel cp
    /* RAID field label. */
    ServerOrderFieldLabel raid
    /* Memory field label. */
    ServerOrderFieldLabel memory
    /* Hard Drives field label */
    ServerOrderFieldLabel hd
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerLease {
    /* MAC address associated with the lease. */
    String mac
    /* Indicates if the lease is authenticated. */
    Boolean authenticated
    /* Group identifier for the lease. */
    String group
}

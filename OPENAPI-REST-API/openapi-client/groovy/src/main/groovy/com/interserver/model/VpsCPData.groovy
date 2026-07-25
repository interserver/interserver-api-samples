package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsCPData {
    /* Control panel name (e.g., cPanel). */
    String name
    /* Monthly cost in cents for the control panel license. */
    Integer cost
}

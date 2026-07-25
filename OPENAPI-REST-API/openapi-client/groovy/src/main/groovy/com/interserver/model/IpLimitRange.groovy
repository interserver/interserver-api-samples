package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class IpLimitRange {
    /* The begining (or first) IP address in the range. */
    String start
    /* The ending (or last) IP address in the range. */
    String end
}

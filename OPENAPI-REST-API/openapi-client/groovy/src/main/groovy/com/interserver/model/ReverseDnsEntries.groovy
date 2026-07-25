package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;

@Canonical
class ReverseDnsEntries {
    /* The IPs you have access to and their current reverse dns mapping. */
    Map<String, Object> ips
}

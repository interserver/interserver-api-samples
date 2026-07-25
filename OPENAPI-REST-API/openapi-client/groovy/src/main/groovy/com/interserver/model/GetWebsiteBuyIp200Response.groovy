package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;

@Canonical
class GetWebsiteBuyIp200Response {
    /* A map of IP addresses to their current reverse DNS hostnames. */
    Map<String, String> ips
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetScrubIpDetails200ResponseFilterFirewallFiltersInner {
    
    String daddr
    
    String dest
    
    String filterName
    
    String destinationIp
    
    String filter
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetScrubIpDetails200ResponseFilterFirewallRulesInner {
    
    String id
    
    String sourceIp
    
    String destinationIp
    
    String protocolId
    
    String sourcePort
    
    String destinationPort
    
    String xdpAction
    
    String globalDrop
}

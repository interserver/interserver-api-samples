package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DnsRecordType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DnsUpdateRecord {
    
    String name
    
    DnsRecordType type
    
    String content
    
    String ttl
    
    String prio
    
    String disabled
    
    String ordername
    
    String auth
}

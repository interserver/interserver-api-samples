package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerLocation1 {
    
    Integer locationId
    
    String locationName
    
    String locationLat
    
    String locationLong
    
    String locationDescription
    
    Integer locationIpmiGroup
}

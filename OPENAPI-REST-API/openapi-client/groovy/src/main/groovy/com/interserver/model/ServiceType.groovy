package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServiceType {
    
    Integer stId
    
    String stName
    
    Integer stCategory
    
    String stModule
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServiceCategory {
    
    Integer categoryId
    
    String categoryName
    
    String categoryTag
    
    String categoryModule
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainClientLink {
    
    String label
    
    String link
    
    String icon
    
    String iconText
    
    String helpText
}

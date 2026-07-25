package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DomainAllInfoAttributes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainAllInfo {
    
    String oPSVersion
    
    DomainAllInfoAttributes attributes
    
    String _object
    
    String protocol
    
    String responseText
    
    String responseCode
    
    String action
    
    String isSuccess
}

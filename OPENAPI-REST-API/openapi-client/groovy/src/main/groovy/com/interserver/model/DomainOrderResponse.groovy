package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DomainOrderResponseAttributes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainOrderResponse {
    
    String oPSVersion
    
    String protocol
    
    String isSuccess
    
    String action
    
    DomainOrderResponseAttributes attributes
    
    String responseText
    
    String _object
    
    String responseCode
}

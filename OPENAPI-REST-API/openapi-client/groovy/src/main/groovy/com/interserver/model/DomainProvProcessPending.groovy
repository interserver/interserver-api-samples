package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DomainProvProcessPendingAttributes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainProvProcessPending {
    
    String oPSVersion
    
    String responseText
    
    String protocol
    
    String responseCode
    
    String action
    
    String _object
    
    String isSuccess
    
    DomainProvProcessPendingAttributes attributes
}

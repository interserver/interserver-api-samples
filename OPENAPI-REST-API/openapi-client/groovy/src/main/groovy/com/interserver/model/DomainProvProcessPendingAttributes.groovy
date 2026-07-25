package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainProvProcessPendingAttributes {
    
    String id
    
    String orderId
    
    String registrationExpirationDate
    
    String fAutoRenew
}

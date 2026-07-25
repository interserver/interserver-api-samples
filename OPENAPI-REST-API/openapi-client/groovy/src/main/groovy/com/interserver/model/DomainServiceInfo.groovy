package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainServiceInfo {
    
    String domainId
    
    String domainHostname
    
    String domainUsername
    
    String domainPassword
    
    String domainType
    
    String domainCurrency
    
    String domainExpireDate
    
    String domainOrderDate
    
    String domainCustid
    
    String domainStatus
    
    String domainInvoice
    
    String domainCoupon
}

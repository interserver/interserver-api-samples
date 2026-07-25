package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DomainOrderResponse;
import com.interserver.model.DomainProvProcessPending;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainBillingExtra {
    
    DomainOrderResponse order
    
    String orderId
    
    String domainId
    
    DomainProvProcessPending provProcessPending
    
    String email
    
    String firstname
    
    String lastname
    
    String company
    
    String address
    
    String address2
    
    String address3
    
    String city
    
    String state
    
    String zip
    
    String country
    
    String phone
    
    String fax
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BillingAddCcRequest {
    
    String name
    
    String address
    
    String city
    
    String state
    
    String country
    
    String zip
    
    String cc
    
    String ccExp
    
    String ccCcv2
}

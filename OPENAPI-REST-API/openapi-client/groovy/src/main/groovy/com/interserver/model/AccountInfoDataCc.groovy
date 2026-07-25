package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.AccountInfoMaxMindResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AccountInfoDataCc {
    
    String cc
    
    String ccExp
    
    String name
    
    String address
    
    String city
    
    String state
    
    String zip
    
    String country
    
    String maxmindRiskscore
    
    AccountInfoMaxMindResponse maxmind
    
    Boolean verified
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class Service {
    
    Integer servicesId
    
    String servicesName
    
    BigDecimal servicesCost
    
    String servicesCurrency
    
    Integer servicesCategory
    
    Boolean servicesBuyable
    
    Integer servicesType
    
    String servicesField1
    
    String servicesField2
    
    String servicesModule
}

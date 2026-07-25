package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class GetOrderDetail200ResponsePackageCosts {
    
    BigDecimal packageId
    
    BigDecimal packageCost
    
    String currency
    
    String currencySymbol
}

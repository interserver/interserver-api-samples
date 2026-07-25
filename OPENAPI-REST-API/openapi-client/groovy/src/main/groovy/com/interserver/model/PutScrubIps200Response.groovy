package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class PutScrubIps200Response {
    
    Boolean _continue
    
    List<String> errors
    
    Integer serviceType
    
    BigDecimal serviceCost
    
    BigDecimal originalCost
    
    BigDecimal repeatServiceCost
}

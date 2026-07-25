package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class ScrubIpsRowSchema {
    
    Integer scrubIpId
    
    BigDecimal repeatInvoicesCost
    
    String scrubIpIp
    
    String scrubIpStatus
    
    String servicesName
}

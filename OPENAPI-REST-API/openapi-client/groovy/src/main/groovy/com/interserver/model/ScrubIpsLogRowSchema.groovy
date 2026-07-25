package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class ScrubIpsLogRowSchema {
    
    String date
    
    String filter
    
    String blockedIp
    
    String targetIp
    
    BigDecimal targetPort
    
    String protocol
    
    BigDecimal byteCount
    
    String xdpAction
}

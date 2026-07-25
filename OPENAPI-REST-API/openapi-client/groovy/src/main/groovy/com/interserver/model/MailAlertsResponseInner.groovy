package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailAlertsResponseInner {
    
    Integer alertId
    
    String alertType
    
    String alertValue
    
    String alertTo
    
    String alertEnabled
}

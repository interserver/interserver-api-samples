package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AffiliateDockSetup {
    
    String affiliateDockTitle
    
    String affiliateDockDescription
    
    String referrerCoupon
}

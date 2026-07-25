package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AffiliateTrafficRow {
    
    String trafficId
    
    String trafficIp
    
    String trafficUrl
    
    String trafficAffiliate
    
    String trafficReferrer
    
    String trafficTimestamp
}

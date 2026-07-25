package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetScrubIpDetails200ResponseServiceInfo {
    
    String scrubIpId
    
    String scrubIpType
    
    String scrubIpCustid
    
    String scrubIpOrderDate
    
    String scrubIpIp
    
    String scrubIpServiceId
    
    String scrubIpServiceModule

    enum ScrubIpStatusEnum {
    
        ACTIVE("active"),
        
        PENDING("pending"),
        
        CANCELED("canceled"),
        
        EXPIRED("expired"),
        
        UNKNOWN_DEFAULT_OPEN_API("unknown_default_open_api")
    
        private final String value
    
        ScrubIpStatusEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    ScrubIpStatusEnum scrubIpStatus
    
    String scrubIpInvoice
    
    String scrubIpCurrency
    
    String scrubIpCoupon
    
    String scrubIpComment
}

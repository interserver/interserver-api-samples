package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class CreateGeoFirewallRule {

    enum XdpActionEnum {
    
        NUMBER_0(0),
        
        NUMBER_1(1)
    
        private final Integer value
    
        XdpActionEnum(Integer value) {
            this.value = value
        }
    
        Integer getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    /* 1 = Block,  0 = Whitelist */
    XdpActionEnum xdpAction
    
    Integer destinationPort = 80
    /* To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode */
    Integer countryCode
    /* ASN number */
    Integer asn
}

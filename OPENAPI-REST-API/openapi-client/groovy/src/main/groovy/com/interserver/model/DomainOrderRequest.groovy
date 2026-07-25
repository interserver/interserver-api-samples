package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;

@Canonical
class DomainOrderRequest {
    /* Fully-qualified domain to register or transfer (e.g. example.com). */
    String hostname

    enum TypeEnum {
    
        REGISTER("register"),
        
        TRANSFER("transfer")
    
        private final String value
    
        TypeEnum(String value) {
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

    /* Order type. */
    TypeEnum type = TypeEnum.REGISTER
    /* Coupon code (addDomain only). */
    String coupon = ""

    enum WhoisPrivacyEnum {
    
        ENABLE("enable"),
        
        DISABLE("disable")
    
        private final String value
    
        WhoisPrivacyEnum(String value) {
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

    /* Set to \"enable\" to add Whois privacy (addDomain only). */
    WhoisPrivacyEnum whoisPrivacy
}

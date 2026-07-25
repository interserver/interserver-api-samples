package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerIpmiPowerRequest {

    enum ActionEnum {
    
        CYCLE("cycle"),
        
        RESET("reset"),
        
        ON("on"),
        
        OFF("off"),
        
        SOFT("soft")
    
        private final String value
    
        ActionEnum(String value) {
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

    /* The power action to send to the ipmi controller. */
    ActionEnum action
    /* The Asset ID */
    Integer asset
}

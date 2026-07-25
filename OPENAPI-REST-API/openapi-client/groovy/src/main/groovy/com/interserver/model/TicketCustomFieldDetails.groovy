package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class TicketCustomFieldDetails {

    enum CustomerServerAccessEnum {
    
        Y("y"),
        
        N("n"),
        
        UNKNOWN_DEFAULT_OPEN_API("unknown_default_open_api")
    
        private final String value
    
        CustomerServerAccessEnum(String value) {
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

    
    CustomerServerAccessEnum customerServerAccess
    
    String ipAddress
    
    String rootPassword
    
    String sudoUser
    
    Integer sudoPassword
    
    Integer port
}

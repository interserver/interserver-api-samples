package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainNameserverGetResponseInner {
    
    String name
    
    String ipaddress

    enum CanDeleteEnum {
    
        _0("0"),
        
        _1("1")
    
        private final String value
    
        CanDeleteEnum(String value) {
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

    /* Whether the registrar allows deletion of this nameserver entry. */
    CanDeleteEnum canDelete
}

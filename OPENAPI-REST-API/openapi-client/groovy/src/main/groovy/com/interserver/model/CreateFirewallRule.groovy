package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class CreateFirewallRule {

    enum ProtocolIdEnum {
    
        NUMBER_1(1),
        
        NUMBER_2(2)
    
        private final Integer value
    
        ProtocolIdEnum(Integer value) {
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

    /* 1 = TCP, 2 = UDP */
    ProtocolIdEnum protocolId

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
    /* Source IP address to match. Use '0.0.0.0' to match any source. */
    String sourceIp = "0.0.0.0"
    
    Integer sourcePort = 0
}

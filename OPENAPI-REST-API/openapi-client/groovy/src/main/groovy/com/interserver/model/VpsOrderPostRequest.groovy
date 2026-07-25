package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsOrderPostRequest {
    /* OS Distribution */
    String osDistro
    /* Number of slices */
    Integer slices = 1

    enum VpsPlatformEnum {
    
        KVM("kvm"),
        
        HYPERV("hyperv"),
        
        KVMSTORAGE("kvmstorage")
    
        private final String value
    
        VpsPlatformEnum(String value) {
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

    /* VPS Platform */
    VpsPlatformEnum vpsPlatform
    /* Billing Period or Frequency */
    Integer period = 1
    /* Location */
    Integer location = 1
    /* OS Version */
    String osVersion
    /* The hostname to assign to the VPS */
    String hostname = ""
    /* Root password to assign to the VVPS */
    String rootpass

    enum ControlpanelEnum {
    
        NONE("none"),
        
        CPANEL("cpanel"),
        
        DA("da")
    
        private final String value
    
        ControlpanelEnum(String value) {
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

    /* Control Panel */
    ControlpanelEnum controlpanel
    /* Coupon */
    String coupon = ""
    /* Order comments or notes */
    String comment = ""
}

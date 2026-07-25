package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.MailStatsTypeVolume;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailStatsType {

    enum TimeEnum {
    
        ALL("all"),
        
        BILLING("billing"),
        
        MONTH("month"),
        
        _7D("7d"),
        
        _24H("24h"),
        
        TODAY("today"),
        
        _1H("1h")
    
        private final String value
    
        TimeEnum(String value) {
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

    
    TimeEnum time = TimeEnum._1H
    
    Integer usage
    
    String currency
    
    String currencySymbol
    
    Double cost
    
    Integer received
    
    Integer sent
    
    MailStatsTypeVolume volume
}

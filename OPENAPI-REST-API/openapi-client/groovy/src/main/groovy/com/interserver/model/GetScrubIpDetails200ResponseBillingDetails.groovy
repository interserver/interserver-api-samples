package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetScrubIpDetails200ResponseBillingDetails {
    
    String serviceLastInvoiceDate
    
    String servicePaymentStatus
    
    String serviceFrequency
    
    String nextDate
    
    String serviceNextInvoiceDate
    
    String serviceCurrency
    
    String serviceCurrencySymbol
    
    String serviceCostInfo
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ServerBillingDetails {
    
    String serviceLastInvoiceDate
    
    String servicePaymentStatus
    
    String serviceFrequency
    
    String nextDate
    
    String serviceNextInvoiceDate
    
    String serviceCurrency
    
    String serviceCurrencySymbol
    
    String serviceCostInfo
    
    List<String> serviceExtra
    
    String serviceExtraJson
}

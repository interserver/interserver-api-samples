package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.QuickserverServiceExtra;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QuickserverBillingDetails {
    /* Last invoice date */
    String serviceLastInvoiceDate
    /* Payment status */
    String servicePaymentStatus
    /* Service frequency */
    String serviceFrequency
    /* Next date */
    String nextDate
    /* Next invoice date */
    String serviceNextInvoiceDate
    /* Currency */
    String serviceCurrency
    /* Currency symbol */
    String serviceCurrencySymbol
    /* Cost information */
    String serviceCostInfo
    
    QuickserverServiceExtra serviceExtra
    /* Extra information (JSON format) */
    String serviceExtraJson
}

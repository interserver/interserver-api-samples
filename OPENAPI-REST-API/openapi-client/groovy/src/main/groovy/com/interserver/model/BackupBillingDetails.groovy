package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BackupBillingDetails {
    /* Last invoice date of the service. */
    String serviceLastInvoiceDate
    /* Payment status of the service. */
    String servicePaymentStatus
    /* Billing frequency of the service. */
    String serviceFrequency
    /* Next billing date of the service. */
    String nextDate
    /* Next invoice date of the service. */
    String serviceNextInvoiceDate
    /* Currency of the service. */
    String serviceCurrency
    /* Currency symbol of the service. */
    String serviceCurrencySymbol
    /* Cost information of the service. */
    String serviceCostInfo
    /* Service Extra Info */
    String serviceExtra
    /* JSON representation of extra service information. */
    String serviceExtraJson
}

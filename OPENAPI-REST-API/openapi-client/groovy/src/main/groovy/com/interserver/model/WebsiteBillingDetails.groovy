package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsiteBillingDetails {
    /* Last invoice date for the service */
    String serviceLastInvoiceDate
    /* Payment status for the service */
    String servicePaymentStatus
    /* Frequency of the service */
    String serviceFrequency
    /* Next date for the service */
    String nextDate
    /* Next invoice date for the service */
    String serviceNextInvoiceDate
    /* Currency for the service */
    String serviceCurrency
    /* Currency symbol for the service */
    String serviceCurrencySymbol
    /* Coupon for the service */
    String serviceCoupon
    /* Cost information for the service */
    String serviceCostInfo
    /* Extra information for the service */
    Object serviceExtra
    /* Extra information in JSON format for the service */
    String serviceExtraJson
}

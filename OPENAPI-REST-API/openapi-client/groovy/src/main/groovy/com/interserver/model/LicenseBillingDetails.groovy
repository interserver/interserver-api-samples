package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class LicenseBillingDetails {
    /* Last invoice date */
    String serviceLastInvoiceDate
    /* Payment status */
    String servicePaymentStatus
    /* Service frequency */
    String serviceFrequency
    /* Next date */
    OffsetDateTime nextDate
    /* Next invoice date */
    String serviceNextInvoiceDate
    /* Service currency */
    String serviceCurrency
    /* Service currency symbol */
    String serviceCurrencySymbol
    /* Service coupon */
    String serviceCoupon
    /* Service cost information */
    String serviceCostInfo
    /* Additional service information */
    List<String> serviceExtra
    /* Additional service information in JSON format */
    String serviceExtraJson
}

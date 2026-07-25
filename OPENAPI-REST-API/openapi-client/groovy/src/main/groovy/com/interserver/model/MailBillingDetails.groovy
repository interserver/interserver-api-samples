package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class MailBillingDetails {
    /* The last invoice date of the service. */
    String serviceLastInvoiceDate
    /* The payment status of the service. */
    String servicePaymentStatus
    /* The frequency of the service payment. */
    String serviceFrequency
    /* The next payment date of the service. */
    String nextDate
    /* The next invoice date of the service. */
    String serviceNextInvoiceDate
    /* The currency of the service. */
    String serviceCurrency
    /* The currency symbol of the service. */
    String serviceCurrencySymbol
    /* The cost information of the service. */
    String serviceCostInfo
    /* Extra information for the service. */
    List<String> serviceExtra
    /* Extra JSON information for the service. */
    String serviceExtraJson
}

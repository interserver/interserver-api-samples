package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DomainBillingExtra;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainBillingDetails {
    /* Date of the last invoice for the domain. */
    String serviceLastInvoiceDate
    /* Current payment status (e.g., Paid, Unpaid). */
    String servicePaymentStatus
    /* Billing frequency (e.g., Yearly, Monthly). */
    String serviceFrequency
    /* Next billing date (ISO 8601). */
    String nextDate
    /* Human-readable next invoice date. */
    String serviceNextInvoiceDate
    /* Billing currency code. */
    String serviceCurrency
    /* Billing currency symbol. */
    String serviceCurrencySymbol
    /* Cost breakdown information. */
    String serviceCostInfo
    
    DomainBillingExtra serviceExtra
    /* Raw JSON string of extra billing data. */
    String serviceExtraJson
}

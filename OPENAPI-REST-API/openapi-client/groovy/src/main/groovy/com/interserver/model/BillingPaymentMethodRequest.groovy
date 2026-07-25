package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BillingPaymentMethodRequest {
    /* Payment method identifier (cc, paypal, or cc{index}). */
    String paymentMethod
    /* Whether automatic credit card payments are enabled. */
    String ccAuto
}

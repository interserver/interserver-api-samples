package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BillingVerifyCcRequest {
    /* Card index to verify. */
    Integer idx
    /* CVV code for verification. */
    String ccCcv2
    /* First micro-charge amount for verification. */
    String ccAmount1
    /* Second micro-charge amount for verification. */
    String ccAmount2
    /* Whether terms were accepted for verification. */
    Boolean terms
}

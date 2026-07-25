package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PatchBillingCreditCardVerifyRequest {
    /* The CVV/CVC code on the back of the credit card. */
    String ccCcv2
}

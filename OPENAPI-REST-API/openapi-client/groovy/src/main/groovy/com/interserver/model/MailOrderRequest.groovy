package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailOrderRequest {
    /* Mail plan service type id from getNewMail.serviceTypes (must be buyable). */
    Integer serviceType
    /* Coupon code. */
    String coupon = ""
    /* Free-form note saved on the service row (used on addMail). */
    String comment = ""
}

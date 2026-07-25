package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LicenseOrderRequest {
    /* License service type id from getNewLicense.serviceTypes (must be buyable). */
    Integer _package
    /* IP address the license is bound to. */
    String ip
    /* Terms-of-service acceptance. Must be true to place the order. */
    Boolean tos
    /* Billing frequency in months. */
    Integer frequency = 1
    /* Coupon code. */
    String coupon = ""
    /* Free-form note saved on the service row. */
    String comment = ""
}

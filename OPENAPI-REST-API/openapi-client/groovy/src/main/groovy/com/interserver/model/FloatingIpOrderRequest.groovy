package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class FloatingIpOrderRequest {
    /* Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). */
    Integer serviceType
    /* Coupon code. */
    String coupon = ""
    /* Free-form note saved on the service row (used on addFloatingIp). */
    String comment = ""
}

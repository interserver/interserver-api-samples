package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;

@Canonical
class LicenseServiceInfo {
    /* License ID */
    String licenseId
    /* License type */
    String licenseType
    /* License currency */
    String licenseCurrency
    /* License order date */
    OffsetDateTime licenseOrderDate
    /* Customer ID */
    String licenseCustid
    /* License IP */
    String licenseIp
    /* License status */
    String licenseStatus
    /* License invoice */
    String licenseInvoice
    /* License coupon */
    String licenseCoupon
    /* License hostname */
    String licenseHostname
    /* License key */
    String licenseKey
    /* Additional license information */
    String licenseExtra
}

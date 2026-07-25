package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsiteServiceInfo {
    /* Website ID */
    String websiteId
    /* Website server */
    String websiteServer
    /* Website type */
    String websiteType
    /* Currency of the website */
    String websiteCurrency
    /* Order date of the website */
    String websiteOrderDate
    /* Customer ID of the website */
    String websiteCustid
    /* IP address of the website */
    String websiteIp
    /* Status of the website */
    String websiteStatus
    /* Invoice of the website */
    String websiteInvoice
    /* Coupon for the website */
    String websiteCoupon
    /* Extra information in JSON format for the website */
    String websiteExtra
    /* Hostname of the website */
    String websiteHostname
    /* Comment for the website */
    String websiteComment
    /* Username for the website */
    String websiteUsername
    /* Server status of the website */
    String websiteServerStatus
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class QuickserverServiceInfo {
    /* Quickserver ID */
    String qsId
    /* Customer ID */
    String qsCustid
    /* Server information */
    String qsServer
    /* IP address */
    String qsIp
    /* IPv6 address (null) */
    String qsIpv6
    /* VZ ID */
    String qsVzid
    /* Currency */
    String qsCurrency
    /* Type */
    String qsType
    /* Order date */
    String qsOrderDate
    /* Status */
    String qsStatus
    /* Invoice number */
    String qsInvoice
    /* Coupon information */
    String qsCoupon
    /* Extra information */
    String qsExtra
    /* Hostname */
    String qsHostname
    /* Server status */
    String qsServerStatus
    /* Comment */
    String qsComment
    /* Slices information */
    String qsSlices
    /* VNC information */
    String qsVnc
    /* VNC port (null) */
    Integer qsVncPort
    /* Root password */
    String qsRootpass
    /* MAC address */
    String qsMac
    /* Operating system */
    String qsOs
    /* OS version */
    String qsVersion
    /* Location */
    String qsLocation
    /* Platform (null) */
    String qsPlatform
}

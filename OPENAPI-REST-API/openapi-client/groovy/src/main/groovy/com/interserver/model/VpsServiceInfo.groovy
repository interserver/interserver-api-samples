package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsServiceInfo {
    /* VPS ID */
    String vpsId
    /* Customer ID */
    String vpsCustid
    /* Server ID */
    String vpsServer
    /* IP address of the VPS */
    String vpsIp
    /* IPv6 address of the VPS */
    String vpsIpv6
    /* VPS Virtuozzo ID */
    String vpsVzid
    /* Currency used for billing */
    String vpsCurrency
    /* VPS type */
    String vpsType
    /* Date of VPS order */
    String vpsOrderDate
    /* VPS status */
    String vpsStatus
    /* VPS invoice number */
    String vpsInvoice
    /* VPS coupon code */
    String vpsCoupon
    /* Additional information about the VPS */
    String vpsExtra
    /* VPS hostname */
    String vpsHostname
    /* Status of the VPS server */
    String vpsServerStatus
    /* Comment associated with the VPS */
    String vpsComment
    /* Number of VPS slices */
    String vpsSlices
    /* VNC address */
    String vpsVnc
    /* VNC port */
    String vpsVncPort
    /* Root password of the VPS */
    String vpsRootpass
    /* MAC address of the VPS */
    String vpsMac
    /* Operating system of the VPS */
    String vpsOs
    /* Version of the operating system */
    String vpsVersion
    /* Location of the VPS */
    String vpsLocation
    /* Virtualization platform */
    String vpsPlatform
    /* Amount of disk space used */
    String vpsDiskused
    /* Maximum disk space available */
    String vpsDiskmax
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailServiceInfo {
    /* The ID of the mail service. */
    String mailId
    /* The type of mail service. */
    String mailType
    /* The currency of the mail service. */
    String mailCurrency
    /* The order date of the mail service. */
    String mailOrderDate
    /* The customer ID associated with the mail service. */
    String mailCustid
    /* The mail quota for the service. */
    String mailQuota
    /* The status of the mail service. */
    String mailStatus
    /* The invoice ID of the mail service. */
    String mailInvoice
    /* The username associated with the mail service. */
    String mailUsername
    /* The IP address associated with the mail service. */
    String mailIp
    /* The coupon associated with the mail service. */
    String mailCoupon
    /* Additional information for the mail service. */
    String mailExtra
    /* The server status of the mail service. */
    String mailServerStatus
    /* Additional comments for the mail service. */
    String mailComment
}

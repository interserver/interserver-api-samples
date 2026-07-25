package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerServiceInfo {
    /* The ID of the server. */
    String serverId
    /* The hostname of the server. */
    String serverHostname
    /* The customer ID associated with the server. */
    String serverCustid
    /* The type of the server. */
    String serverType
    /* The currency used for billing. */
    String serverCurrency
    /* The date when the server was ordered. */
    String serverOrderDate
    /* The invoice number for the server. */
    String serverInvoice
    /* The coupon associated with the server. */
    String serverCoupon
    /* The status of the server. */
    String serverStatus
    /* The root of the server. */
    String serverRoot
    /* The dedicated tag of the server. */
    String serverDedicatedTag
    /* The custom tag of the server. */
    String serverCustomTag
    /* Comments related to the server. */
    String serverComment
    /* The initial billing amount for the server. */
    String serverInitialBill
    /* The hardware information of the server. */
    String serverHardware
    /* The number of IPs associated with the server. */
    String serverIps
    /* The monthly billing amount for the server. */
    String serverMonthlyBill
    /* The setup status of the server. */
    String serverSetup
    /* Discount information for the server. */
    String serverDiscount
    /* The reputation of the server. */
    String serverRep
    /* The date related to the server. */
    String serverDate
    /* The total cost of the server. */
    String serverTotalCost
    /* The location of the server. */
    String serverLocation
    /* The ordered hardware for the server. */
    String serverHardwareOrdered
    /* The billed amount for the server. */
    String serverBilled
    /* Indicates whether a welcome email was sent. */
    String serverWelcomeEmail
    /* The number of dedicated CPUs for the server. */
    String serverDedicatedCpu
    /* The amount of dedicated memory for the server. */
    String serverDedicatedMemory
    /* The size of the first dedicated hard drive. */
    String serverDedicatedHd1
    /* The size of the second dedicated hard drive. */
    String serverDedicatedHd2
    /* The bandwidth of the server. */
    String serverDedicatedBandwidth
    /* The number of dedicated IPs for the server. */
    String serverDedicatedIps
    /* The operating system of the server. */
    String serverDedicatedOs
    /* The control panel of the server. */
    String serverDedicatedCp
    /* The RAID configuration of the server. */
    String serverDedicatedRaid
    /* Additional information about the server. */
    String serverExtra
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsRow {
    /* The id of the vps. */
    String vpsId
    /* The name of the vps. */
    String vpsName
    /* The repeat invoices cost of the vps. */
    String repeatInvoicesCost
    /* The hostname of the vps. */
    String vpsHostname
    /* The ip of the vps. */
    String vpsIp
    /* The status of the vps. */
    String vpsStatus
    /* The services name of the vps. */
    String servicesName
    /* The comment of the vps. */
    String vpsComment
}

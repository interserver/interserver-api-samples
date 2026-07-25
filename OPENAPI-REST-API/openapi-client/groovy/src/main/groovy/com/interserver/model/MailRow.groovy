package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailRow {
    /* The id of the mail. */
    String mailId
    /* The repeat invoices cost of the mail. */
    String repeatInvoicesCost
    /* The username of the mail. */
    String mailUsername
    /* The status of the mail. */
    String mailStatus
    /* The services name of the mail. */
    String servicesName
}

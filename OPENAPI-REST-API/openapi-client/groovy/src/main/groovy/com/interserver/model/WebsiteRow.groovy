package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsiteRow {
    /* The id of the website. */
    String websiteId
    /* The hostname of the website. */
    String websiteHostname
    /* The repeat invoices cost of the website. */
    String repeatInvoicesCost
    /* The status of the website. */
    String websiteStatus
    /* The services name of the website. */
    String servicesName
    /* The comment of the website. */
    String websiteComment
}

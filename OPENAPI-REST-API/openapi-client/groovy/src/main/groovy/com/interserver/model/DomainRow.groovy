package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainRow {
    /* The ID number of the domain in our billing system. */
    String domainId
    /* The hostname of the domain. */
    String domainHostname
    /* The expiration date of the domain. */
    String domainExpireDate
    /* The cost of the domain. */
    String cost
    /* The billing / registration status of the domain. */
    String domainStatus
}

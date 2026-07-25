package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeDetailsModulesServers {
    /* The icon for dedicated servers. */
    String icon
    /* Link to view server. */
    String viewLink
    /* Heading for dedicated servers. */
    String heading
    /* Link to order server. */
    String buyLink
    /* Link to view servers list. */
    String listLink
}

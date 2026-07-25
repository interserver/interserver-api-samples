package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeDetailsModulesQuickservers {
    /* The icon for quick servers. */
    String icon
    /* Link to view quick servers. */
    String viewLink
    /* Heading for quick servers. */
    String heading
    /* Link to order quick server. */
    String buyLink
    /* Link to view quick servers list. */
    String listLink
}

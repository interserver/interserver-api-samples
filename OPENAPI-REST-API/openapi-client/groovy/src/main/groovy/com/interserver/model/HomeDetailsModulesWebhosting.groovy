package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeDetailsModulesWebhosting {
    /* The icon for web hosting. */
    String icon
    /* Link to view website. */
    String viewLink
    /* Heading for web hosting. */
    String heading
    /* Link to order website. */
    String buyLink
    /* Link to view websites list. */
    String listLink
}

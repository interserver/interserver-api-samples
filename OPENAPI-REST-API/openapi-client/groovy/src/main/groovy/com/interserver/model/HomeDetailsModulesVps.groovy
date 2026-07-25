package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeDetailsModulesVps {
    /* The icon for VPS. */
    String icon
    /* Link to view VPS. */
    String viewLink
    /* Heading for VPS. */
    String heading
    /* Link to order VPS. */
    String buyLink
    /* Link to view VPS list. */
    String listLink
}

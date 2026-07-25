package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeDetailsModulesLicenses {
    /* The icon for licenses. */
    String icon
    /* Link to view license. */
    String viewLink
    /* Heading for licenses. */
    String heading
    /* Link to order license. */
    String buyLink
    /* Link to view licenses list. */
    String listLink
}

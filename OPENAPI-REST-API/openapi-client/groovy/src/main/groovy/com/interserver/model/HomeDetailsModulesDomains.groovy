package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeDetailsModulesDomains {
    /* The icon for domains. */
    String icon
    /* Link to view domain. */
    String viewLink
    /* Heading for domains. */
    String heading
    /* Link to order domain. */
    String buyLink
    /* Link to view domains list. */
    String listLink
}

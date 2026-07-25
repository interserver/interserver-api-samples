package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeDetailsModulesBackups {
    /* The icon for storages. */
    String icon
    /* Link to view backup. */
    String viewLink
    /* Heading for storages. */
    String heading
    /* Link to order storage. */
    String buyLink
    /* Link to view backups list. */
    String listLink
}

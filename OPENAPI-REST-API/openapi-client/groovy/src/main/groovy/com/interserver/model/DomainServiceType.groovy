package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainServiceType {
    /* Service type ID. */
    String servicesId
    /* Service type name (e.g., .com Registration). */
    String servicesName
    /* Service cost per billing period. */
    String servicesCost
    /* Service category ID. */
    String servicesCategory
    /* Whether this service type is available for purchase. */
    String servicesBuyable
    /* Internal service type identifier. */
    String servicesType
    /* TLD or first configurable field for the service type. */
    String servicesField1
    /* Second configurable field for the service type. */
    String servicesField2
    /* Backend module handling this service type. */
    String servicesModule
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailServiceType {
    /* The ID of the service type. */
    String servicesId
    /* The name of the service type. */
    String servicesName
    /* The cost of the service type. */
    String servicesCost
    /* The category of the service type. */
    String servicesCategory
    /* Whether the service type is buyable. */
    String servicesBuyable
    /* The type of the service type. */
    String servicesType
    /* Additional field for the service type. */
    String servicesField1
    /* Additional field for the service type. */
    String servicesField2
    /* The module of the service type. */
    String servicesModule
}

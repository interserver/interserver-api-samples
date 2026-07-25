package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainOrderResponseAttributes {
    /* Registrar order ID. */
    String id
    /* Administrative contact email provided for the order. */
    String adminEmail
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AddServer200Response {
    /* Status message. */
    String text
    /* Invoice ID for payment. */
    Integer invoice
    /* Server order ID. */
    Integer order
}

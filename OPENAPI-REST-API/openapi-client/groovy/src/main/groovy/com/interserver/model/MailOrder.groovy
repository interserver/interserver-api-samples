package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailOrder {
    /* The ID of the order. */
    Integer id
    /* The order status. */
    String status
    /* The username to use for this order. */
    String username
    /* Optional order comment. */
    String comment
}

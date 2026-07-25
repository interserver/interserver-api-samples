package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ServiceOrderPostResponse {
    /* Whether the order was accepted and can proceed to payment. */
    Boolean _continue
    /* List of validation errors (empty on success). */
    List<String> errors
    /* Total cost of the order. */
    String totalCost
    /* Primary invoice ID for payment. */
    String iid
    /* All invoice identifiers associated with the order. */
    List<String> iids
    /* Numeric invoice IDs for use with billing endpoints. */
    List<String> realIids
    /* The new service ID created by the order. */
    Integer serviceId
    /* Human-readable description of the invoice. */
    String invoiceDescription
}

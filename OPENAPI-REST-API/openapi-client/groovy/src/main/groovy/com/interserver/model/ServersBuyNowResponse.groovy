package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ServersBuyNowResponseOrderDetails;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServersBuyNowResponse {
    /* Whether the order was placed successfully. */
    Boolean success
    /* Human-readable status message. */
    String text
    
    ServersBuyNowResponseOrderDetails orderDetails
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class PlaceBuyNowServerRequest {
    /* The ID of the buy-it-now server configuration to order. Use the server listing from `GET /servers/order/buy_now_server` to find valid IDs. */
    BigDecimal serverId
    /* The fully-qualified hostname to assign to the server. */
    String serverHostname
    /* The root or administrator password to set on the server. */
    String serverRootPassword
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class ServersBuyNowResponseOrderDetails {
    /* The newly created service ID for the ordered server. */
    BigDecimal serviceId
    /* The invoice ID generated for the order. */
    BigDecimal invoiceId
}

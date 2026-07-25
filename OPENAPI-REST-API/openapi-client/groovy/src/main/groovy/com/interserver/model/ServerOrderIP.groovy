package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderIP {
    /* IP ID. */
    String id
    /* IP price. */
    Integer price
    /* IP image. */
    String img
    /* Short description of the IP. */
    String shortDesc
    /* Long description of the IP. */
    String longDesc
    /* Quantity of IPs. */
    String qty
    /* Monthly price. */
    Integer monthlyPrice
    /* Display of IP price. */
    String priceDisplay
    /* Display of monthly IP price. */
    String monthlyPriceDisplay
}

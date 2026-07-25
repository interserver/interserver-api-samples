package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderBandwidth {
    /* Bandwidth ID. */
    String id
    /* Bandwidth price. */
    Integer price
    /* Bandwidth image. */
    String img
    /* Short description of the bandwidth. */
    String shortDesc
    /* Long description of the bandwidth. */
    String longDesc
    /* Bandwidth type. */
    String type
    /* Quantity of bandwidth. */
    String qty
    /* Active status. */
    String active
    /* Monthly price. */
    Integer monthlyPrice
    /* Display of bandwidth price. */
    String priceDisplay
    /* Display of monthly bandwidth price. */
    String monthlyPriceDisplay
}

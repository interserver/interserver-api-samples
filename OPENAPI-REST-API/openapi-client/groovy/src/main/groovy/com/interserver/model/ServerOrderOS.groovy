package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderOS {
    /* Operating System ID. */
    String id
    /* Operating System price. */
    Integer price
    /* Operating System image. */
    String img
    /* Short description of the OS. */
    String shortDesc
    /* Long description of the OS. */
    String longDesc
    /* Monthly price. */
    Integer monthlyPrice
    /* Active status. */
    String active
    /* Display of OS price. */
    String priceDisplay
    /* Display of monthly OS price. */
    String monthlyPriceDisplay
}

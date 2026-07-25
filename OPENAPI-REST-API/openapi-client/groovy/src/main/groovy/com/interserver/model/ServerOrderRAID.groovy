package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderRAID {
    /* RAID ID. */
    String id
    /* RAID price. */
    Integer price
    /* RAID image. */
    String img
    /* Short description of the RAID. */
    String shortDesc
    /* Long description of the RAID. */
    String longDesc
    /* Monthly price. */
    Integer monthlyPrice
    /* Active status. */
    String active
    /* Display of RAID price. */
    String priceDisplay
    /* Display of monthly RAID price. */
    String monthlyPriceDisplay
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderMemory {
    /* Memory ID. */
    String id
    /* Memory price. */
    String price
    /* Memory image. */
    String img
    /* Short description of the memory. */
    String shortDesc
    /* Long description of the memory. */
    String longDesc
    /* Manufacturer information. */
    String manu
    /* Memory size. */
    String size
    /* Memory type. */
    String type
    /* Hidden status. */
    String hidden
    /* Monthly price. */
    Integer monthlyPrice
    /* Drive type. */
    String driveType
    /* Display of monthly memory price. */
    String monthlyPriceDisplay
}

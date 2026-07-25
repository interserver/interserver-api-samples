package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QuickserverOrderServerDetails381 {
    /* CPU details of the server. */
    String cpu
    /* RAM capacity of the server. */
    String ram
    /* Hard disk capacity of the server. */
    String hd
    /* Number of CPU cores. */
    Integer cores
    /* Cost of the server. */
    String cost
}

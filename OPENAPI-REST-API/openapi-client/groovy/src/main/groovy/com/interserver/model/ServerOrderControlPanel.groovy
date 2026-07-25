package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ServerOrderControlPanel {
    /* Control Panel ID. */
    String id
    /* Control Panel price. */
    Integer price
    /* Control Panel image. */
    String img
    /* Short description of the control panel. */
    String shortDesc
    /* Long description of the control panel. */
    String longDesc
    /* OS types compatible with the control panel. */
    String osType
    /* Monthly price. */
    Integer monthlyPrice
    /* List of types. */
    List<String> types
    /* Display of control panel price. */
    String priceDisplay
    /* Display of monthly control panel price. */
    String monthlyPriceDisplay
}

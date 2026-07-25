package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsClientLink {
    /* Display label for the link. */
    String label
    /* URL or route for the action. */
    String link
    /* Icon class for the link. */
    String icon
    /* Icon text label. */
    String iconText
    /* Help tooltip text for the link. */
    String helpText
}

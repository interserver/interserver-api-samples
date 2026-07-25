package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QuickserverClientLink {
    /* Link label */
    String label
    /* Link */
    String link
    /* Icon class */
    String icon
    /* Icon text */
    String iconText
    /* Help text */
    String helpText
    /* Other attribute */
    String otherAttr
}

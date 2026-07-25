package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LicenseClientLink {
    /* Link label */
    String label
    /* Link URL */
    String link
    /* Link icon */
    String icon
    /* Help text */
    String helpText
    /* Icon text */
    String iconText
    /* Other attributes */
    String otherAttr
}

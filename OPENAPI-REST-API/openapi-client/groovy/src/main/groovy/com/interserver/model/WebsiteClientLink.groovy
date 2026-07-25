package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsiteClientLink {
    /* Label for the link */
    String label
    /* Link URL */
    String link
    /* Icon for the link */
    String icon
    /* Icon text for the link */
    String iconText
    /* Help text for the link */
    String helpText
    /* Other attributes for the link */
    String otherAttr
}

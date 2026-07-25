package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailClientLink {
    /* The label of the client link. */
    String label
    /* The link URL of the client link. */
    String link
    /* The icon class of the client link. */
    String icon
    /* The text for the icon of the client link. */
    String iconText
    /* Help text for the client link. */
    String helpText
    /* Additional attributes for the client link. */
    String otherAttr
}

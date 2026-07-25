package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BackupClientLink {
    /* Label of the client link. */
    String label
    /* Link URL of the client link. */
    String link
    /* Icon of the client link. */
    String icon
    /* Icon text of the client link. */
    String iconText
    /* Help text of the client link. */
    String helpText
    /* Other attributes of the client link. */
    String otherAttr
}

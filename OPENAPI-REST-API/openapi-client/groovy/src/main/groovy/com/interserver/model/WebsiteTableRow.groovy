package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsiteTableRow {
    /* Description for the row */
    String desc
    /* Value for the row */
    String value
}

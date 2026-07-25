package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailTutorialsTableRow {
    /* The description of the tutorials table row. */
    String desc
    /* The value of the tutorials table row. */
    String value
}

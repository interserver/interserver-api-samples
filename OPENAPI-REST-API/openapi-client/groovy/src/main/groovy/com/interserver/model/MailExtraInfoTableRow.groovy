package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailExtraInfoTableRow {
    /* The description of the extra info table row. */
    String desc
    /* The value of the extra info table row. */
    String value
}

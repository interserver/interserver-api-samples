package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BackupIPInfoRow {
    /* Description of the IP information. */
    String desc
    /* Value of the IP information. */
    String value
}

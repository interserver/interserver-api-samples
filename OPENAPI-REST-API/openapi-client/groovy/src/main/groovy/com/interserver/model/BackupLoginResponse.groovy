package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BackupLoginResponse {
    /* Indicates whether a login session was created. */
    Boolean success
    /* Login URL or error text returned by the storage provider. */
    String text
}

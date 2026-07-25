package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsBackupRow {
    /* Backup Type */
    String type
    /* The service id such as vps  id. */
    Integer service
    /* The name of the backup. */
    String name
    /* Size of the file in bytes */
    Integer size
    /* The creation date of the backup in a unix timestamp. */
    Integer date
}

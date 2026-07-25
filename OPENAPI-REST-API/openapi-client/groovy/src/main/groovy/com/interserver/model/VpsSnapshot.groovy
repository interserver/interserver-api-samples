package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsSnapshot {
    /* Snapshot name. */
    String name
    /* Disk space used by this snapshot in bytes. */
    Integer used
    /* Unix timestamp of when the snapshot was created. */
    Integer date
}

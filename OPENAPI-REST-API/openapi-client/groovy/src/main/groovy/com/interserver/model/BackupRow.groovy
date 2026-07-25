package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BackupRow {
    /* The id of the backup. */
    String backupId
    /* The name of the backup. */
    String backupName
    /* The cost of the backup. */
    String backupCost
    /* The username of the backup. */
    String backupUsername
    /* The status of the backup. */
    String backupStatus
    /* The services name of the backup. */
    String servicesName
}

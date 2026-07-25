package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BackupServiceMaster {
    /* Backup ID of the service master. */
    Integer backupId
    /* Name of the backup service. */
    String backupName
    /* IP address of the backup service. */
    String backupIp
    /* Type of the backup service. */
    Integer backupType
    /* Size of the backup service's hard drive. */
    Integer backupHdsize
    /* Amount of free space on the backup service's hard drive. */
    Integer backupHdfree
    /* Last update timestamp of the backup service. */
    String backupLastUpdate
    /* Availability status of the backup service. */
    Integer backupAvailable
    /* I/O wait status of the backup service. */
    Integer backupIowait
    /* Order associated with the backup service. */
    Integer backupOrder
}

package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class QuickserverServiceMaster {
    /* Quickserver ID */
    String qsId
    /* Quickserver name */
    String qsName
    /* IP address */
    String qsIp
    /* Type */
    String qsType
    /* HDD size */
    String qsHdsize
    /* Free HDD space */
    String qsHdfree
    /* Bits */
    String qsBits
    /* Load */
    String qsLoad
    /* RAM information */
    String qsRam
    /* CPU model */
    String qsCpuModel
    /* CPU frequency */
    String qsCpuMhz
    /* Location */
    String qsLocation
    /* Available information */
    String qsAvailable
    /* Cost */
    String qsCost
    /* Last update date */
    String qsLastUpdate
    /* Number of cores */
    String qsCores
    /* I/O wait */
    String qsIowait
    /* RAID status */
    String qsRaidStatus
    /* Drive type */
    String qsDriveType
    /* Order number */
    String qsOrder
    /* RAID building information */
    String qsRaidBuilding
    /* Kernel version */
    String qsKernel
    /* IOPing information */
    String qsIoping
    /* Speed information */
    String qsSpeed
    /* Distribution name */
    String qsDistro
    /* Distribution version */
    String qsDistroVersion
    /* Bytes/sec in */
    String qsBytesSecIn
    /* Bytes/sec out */
    String qsBytesSecOut
    /* Packets/sec in */
    String qsPacketsSecIn
    /* Packets/sec out */
    String qsPacketsSecOut
    /* Last install time (null) */
    String qsLastInstallTime
    /* Partitions information (null) */
    String qsPartitions
    /* CPU flags */
    String qsCpuFlags
}

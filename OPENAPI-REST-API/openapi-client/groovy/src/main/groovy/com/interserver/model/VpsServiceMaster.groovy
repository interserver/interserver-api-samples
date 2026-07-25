package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsServiceMaster {
    /* VPS ID */
    String vpsId
    /* VPS name */
    String vpsName
    /* IP address of the VPS */
    String vpsIp
    /* VPS type */
    String vpsType
    /* Hard drive size */
    String vpsHdsize
    /* Free hard drive space */
    String vpsHdfree
    /* Bits */
    String vpsBits
    /* CPU load */
    String vpsLoad
    /* RAM */
    String vpsRam
    /* CPU model */
    String vpsCpuModel
    /* CPU frequency in MHz */
    String vpsCpuMhz
    /* Location of the VPS */
    String vpsLocation
    /* Last update date */
    String vpsLastUpdate
    /* RAID building status */
    String vpsRaidBuilding
    /* Kernel version */
    String vpsKernel
    /* Available */
    String vpsAvailable
    /* Number of CPU cores */
    String vpsCores
    /* I/O wait */
    String vpsIowait
    /* RAID status */
    String vpsRaidStatus
    /* Mounts */
    String vpsMounts
    /* Maximum number of servers */
    String vpsServerMax
    /* Maximum number of server slices */
    String vpsServerMaxSlices
    /* Drive type */
    String vpsDriveType
    /* Order number */
    String vpsOrder
}

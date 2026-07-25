package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Information about the host node running this QuickServer, including hardware specs and resource utilization.
 */
@Schema(description = "Information about the host node running this QuickServer, including hardware specs and resource utilization.")
@Validated
@NotUndefined



public class QuickserverServiceMaster   {
  @JsonProperty("qs_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsId = null;

  @JsonProperty("qs_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsName = null;

  @JsonProperty("qs_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsIp = null;

  @JsonProperty("qs_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsType = null;

  @JsonProperty("qs_hdsize")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsHdsize = null;

  @JsonProperty("qs_hdfree")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsHdfree = null;

  @JsonProperty("qs_bits")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsBits = null;

  @JsonProperty("qs_load")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsLoad = null;

  @JsonProperty("qs_ram")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsRam = null;

  @JsonProperty("qs_cpu_model")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsCpuModel = null;

  @JsonProperty("qs_cpu_mhz")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsCpuMhz = null;

  @JsonProperty("qs_location")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsLocation = null;

  @JsonProperty("qs_available")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsAvailable = null;

  @JsonProperty("qs_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsCost = null;

  @JsonProperty("qs_last_update")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsLastUpdate = null;

  @JsonProperty("qs_cores")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsCores = null;

  @JsonProperty("qs_iowait")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsIowait = null;

  @JsonProperty("qs_raid_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsRaidStatus = null;

  @JsonProperty("qs_drive_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsDriveType = null;

  @JsonProperty("qs_order")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsOrder = null;

  @JsonProperty("qs_raid_building")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsRaidBuilding = null;

  @JsonProperty("qs_kernel")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsKernel = null;

  @JsonProperty("qs_ioping")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsIoping = null;

  @JsonProperty("qs_speed")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsSpeed = null;

  @JsonProperty("qs_distro")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsDistro = null;

  @JsonProperty("qs_distro_version")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsDistroVersion = null;

  @JsonProperty("qs_bytes_sec_in")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsBytesSecIn = null;

  @JsonProperty("qs_bytes_sec_out")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsBytesSecOut = null;

  @JsonProperty("qs_packets_sec_in")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsPacketsSecIn = null;

  @JsonProperty("qs_packets_sec_out")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsPacketsSecOut = null;

  @JsonProperty("qs_last_install_time")

  private String qsLastInstallTime = null;

  @JsonProperty("qs_partitions")

  private String qsPartitions = null;

  @JsonProperty("qs_cpu_flags")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsCpuFlags = null;


  public QuickserverServiceMaster qsId(String qsId) { 

    this.qsId = qsId;
    return this;
  }

  /**
   * Quickserver ID
   * @return qsId
   **/
  
  @Schema(example = "365", description = "Quickserver ID")
  
  public String getQsId() {  
    return qsId;
  }



  public void setQsId(String qsId) { 
    this.qsId = qsId;
  }

  public QuickserverServiceMaster qsName(String qsName) { 

    this.qsName = qsName;
    return this;
  }

  /**
   * Quickserver name
   * @return qsName
   **/
  
  @Schema(example = "Qs365", description = "Quickserver name")
  
  public String getQsName() {  
    return qsName;
  }



  public void setQsName(String qsName) { 
    this.qsName = qsName;
  }

  public QuickserverServiceMaster qsIp(String qsIp) { 

    this.qsIp = qsIp;
    return this;
  }

  /**
   * IP address
   * @return qsIp
   **/
  
  @Schema(description = "IP address")
  
  public String getQsIp() {  
    return qsIp;
  }



  public void setQsIp(String qsIp) { 
    this.qsIp = qsIp;
  }

  public QuickserverServiceMaster qsType(String qsType) { 

    this.qsType = qsType;
    return this;
  }

  /**
   * Type
   * @return qsType
   **/
  
  @Schema(example = "14", description = "Type")
  
  public String getQsType() {  
    return qsType;
  }



  public void setQsType(String qsType) { 
    this.qsType = qsType;
  }

  public QuickserverServiceMaster qsHdsize(String qsHdsize) { 

    this.qsHdsize = qsHdsize;
    return this;
  }

  /**
   * HDD size
   * @return qsHdsize
   **/
  
  @Schema(example = "1760", description = "HDD size")
  
  public String getQsHdsize() {  
    return qsHdsize;
  }



  public void setQsHdsize(String qsHdsize) { 
    this.qsHdsize = qsHdsize;
  }

  public QuickserverServiceMaster qsHdfree(String qsHdfree) { 

    this.qsHdfree = qsHdfree;
    return this;
  }

  /**
   * Free HDD space
   * @return qsHdfree
   **/
  
  @Schema(example = "1192", description = "Free HDD space")
  
  public String getQsHdfree() {  
    return qsHdfree;
  }



  public void setQsHdfree(String qsHdfree) { 
    this.qsHdfree = qsHdfree;
  }

  public QuickserverServiceMaster qsBits(String qsBits) { 

    this.qsBits = qsBits;
    return this;
  }

  /**
   * Bits
   * @return qsBits
   **/
  
  @Schema(example = "64", description = "Bits")
  
  public String getQsBits() {  
    return qsBits;
  }



  public void setQsBits(String qsBits) { 
    this.qsBits = qsBits;
  }

  public QuickserverServiceMaster qsLoad(String qsLoad) { 

    this.qsLoad = qsLoad;
    return this;
  }

  /**
   * Load
   * @return qsLoad
   **/
  
  @Schema(example = "3.45", description = "Load")
  
  public String getQsLoad() {  
    return qsLoad;
  }



  public void setQsLoad(String qsLoad) { 
    this.qsLoad = qsLoad;
  }

  public QuickserverServiceMaster qsRam(String qsRam) { 

    this.qsRam = qsRam;
    return this;
  }

  /**
   * RAM information
   * @return qsRam
   **/
  
  @Schema(example = "29550679", description = "RAM information")
  
  public String getQsRam() {  
    return qsRam;
  }



  public void setQsRam(String qsRam) { 
    this.qsRam = qsRam;
  }

  public QuickserverServiceMaster qsCpuModel(String qsCpuModel) { 

    this.qsCpuModel = qsCpuModel;
    return this;
  }

  /**
   * CPU model
   * @return qsCpuModel
   **/
  
  @Schema(example = "Intel(R) Xeon(R) CPU E3-1271 v3 @ 3.60GHz", description = "CPU model")
  
  public String getQsCpuModel() {  
    return qsCpuModel;
  }



  public void setQsCpuModel(String qsCpuModel) { 
    this.qsCpuModel = qsCpuModel;
  }

  public QuickserverServiceMaster qsCpuMhz(String qsCpuMhz) { 

    this.qsCpuMhz = qsCpuMhz;
    return this;
  }

  /**
   * CPU frequency
   * @return qsCpuMhz
   **/
  
  @Schema(example = "2900", description = "CPU frequency")
  
  public String getQsCpuMhz() {  
    return qsCpuMhz;
  }



  public void setQsCpuMhz(String qsCpuMhz) { 
    this.qsCpuMhz = qsCpuMhz;
  }

  public QuickserverServiceMaster qsLocation(String qsLocation) { 

    this.qsLocation = qsLocation;
    return this;
  }

  /**
   * Location
   * @return qsLocation
   **/
  
  @Schema(example = "1", description = "Location")
  
  public String getQsLocation() {  
    return qsLocation;
  }



  public void setQsLocation(String qsLocation) { 
    this.qsLocation = qsLocation;
  }

  public QuickserverServiceMaster qsAvailable(String qsAvailable) { 

    this.qsAvailable = qsAvailable;
    return this;
  }

  /**
   * Available information
   * @return qsAvailable
   **/
  
  @Schema(example = "0", description = "Available information")
  
  public String getQsAvailable() {  
    return qsAvailable;
  }



  public void setQsAvailable(String qsAvailable) { 
    this.qsAvailable = qsAvailable;
  }

  public QuickserverServiceMaster qsCost(String qsCost) { 

    this.qsCost = qsCost;
    return this;
  }

  /**
   * Cost
   * @return qsCost
   **/
  
  @Schema(example = "49", description = "Cost")
  
  public String getQsCost() {  
    return qsCost;
  }



  public void setQsCost(String qsCost) { 
    this.qsCost = qsCost;
  }

  public QuickserverServiceMaster qsLastUpdate(String qsLastUpdate) { 

    this.qsLastUpdate = qsLastUpdate;
    return this;
  }

  /**
   * Last update date
   * @return qsLastUpdate
   **/
  
  @Schema(example = "2023-08-17T23:52:02.000Z", description = "Last update date")
  
  public String getQsLastUpdate() {  
    return qsLastUpdate;
  }



  public void setQsLastUpdate(String qsLastUpdate) { 
    this.qsLastUpdate = qsLastUpdate;
  }

  public QuickserverServiceMaster qsCores(String qsCores) { 

    this.qsCores = qsCores;
    return this;
  }

  /**
   * Number of cores
   * @return qsCores
   **/
  
  @Schema(example = "8", description = "Number of cores")
  
  public String getQsCores() {  
    return qsCores;
  }



  public void setQsCores(String qsCores) { 
    this.qsCores = qsCores;
  }

  public QuickserverServiceMaster qsIowait(String qsIowait) { 

    this.qsIowait = qsIowait;
    return this;
  }

  /**
   * I/O wait
   * @return qsIowait
   **/
  
  @Schema(example = "6.89", description = "I/O wait")
  
  public String getQsIowait() {  
    return qsIowait;
  }



  public void setQsIowait(String qsIowait) { 
    this.qsIowait = qsIowait;
  }

  public QuickserverServiceMaster qsRaidStatus(String qsRaidStatus) { 

    this.qsRaidStatus = qsRaidStatus;
    return this;
  }

  /**
   * RAID status
   * @return qsRaidStatus
   **/
  
  @Schema(example = "OK: zfs:all pools are healthy", description = "RAID status")
  
  public String getQsRaidStatus() {  
    return qsRaidStatus;
  }



  public void setQsRaidStatus(String qsRaidStatus) { 
    this.qsRaidStatus = qsRaidStatus;
  }

  public QuickserverServiceMaster qsDriveType(String qsDriveType) { 

    this.qsDriveType = qsDriveType;
    return this;
  }

  /**
   * Drive type
   * @return qsDriveType
   **/
  
  @Schema(example = "SSD", description = "Drive type")
  
  public String getQsDriveType() {  
    return qsDriveType;
  }



  public void setQsDriveType(String qsDriveType) { 
    this.qsDriveType = qsDriveType;
  }

  public QuickserverServiceMaster qsOrder(String qsOrder) { 

    this.qsOrder = qsOrder;
    return this;
  }

  /**
   * Order number
   * @return qsOrder
   **/
  
  @Schema(example = "92263", description = "Order number")
  
  public String getQsOrder() {  
    return qsOrder;
  }



  public void setQsOrder(String qsOrder) { 
    this.qsOrder = qsOrder;
  }

  public QuickserverServiceMaster qsRaidBuilding(String qsRaidBuilding) { 

    this.qsRaidBuilding = qsRaidBuilding;
    return this;
  }

  /**
   * RAID building information
   * @return qsRaidBuilding
   **/
  
  @Schema(example = "0", description = "RAID building information")
  
  public String getQsRaidBuilding() {  
    return qsRaidBuilding;
  }



  public void setQsRaidBuilding(String qsRaidBuilding) { 
    this.qsRaidBuilding = qsRaidBuilding;
  }

  public QuickserverServiceMaster qsKernel(String qsKernel) { 

    this.qsKernel = qsKernel;
    return this;
  }

  /**
   * Kernel version
   * @return qsKernel
   **/
  
  @Schema(example = "5.15.0-69-generic", description = "Kernel version")
  
  public String getQsKernel() {  
    return qsKernel;
  }



  public void setQsKernel(String qsKernel) { 
    this.qsKernel = qsKernel;
  }

  public QuickserverServiceMaster qsIoping(String qsIoping) { 

    this.qsIoping = qsIoping;
    return this;
  }

  /**
   * IOPing information
   * @return qsIoping
   **/
  
  @Schema(example = "330707348", description = "IOPing information")
  
  public String getQsIoping() {  
    return qsIoping;
  }



  public void setQsIoping(String qsIoping) { 
    this.qsIoping = qsIoping;
  }

  public QuickserverServiceMaster qsSpeed(String qsSpeed) { 

    this.qsSpeed = qsSpeed;
    return this;
  }

  /**
   * Speed information
   * @return qsSpeed
   **/
  
  @Schema(example = "1000", description = "Speed information")
  
  public String getQsSpeed() {  
    return qsSpeed;
  }



  public void setQsSpeed(String qsSpeed) { 
    this.qsSpeed = qsSpeed;
  }

  public QuickserverServiceMaster qsDistro(String qsDistro) { 

    this.qsDistro = qsDistro;
    return this;
  }

  /**
   * Distribution name
   * @return qsDistro
   **/
  
  @Schema(example = "Ubuntu", description = "Distribution name")
  
  public String getQsDistro() {  
    return qsDistro;
  }



  public void setQsDistro(String qsDistro) { 
    this.qsDistro = qsDistro;
  }

  public QuickserverServiceMaster qsDistroVersion(String qsDistroVersion) { 

    this.qsDistroVersion = qsDistroVersion;
    return this;
  }

  /**
   * Distribution version
   * @return qsDistroVersion
   **/
  
  @Schema(example = "22.04", description = "Distribution version")
  
  public String getQsDistroVersion() {  
    return qsDistroVersion;
  }



  public void setQsDistroVersion(String qsDistroVersion) { 
    this.qsDistroVersion = qsDistroVersion;
  }

  public QuickserverServiceMaster qsBytesSecIn(String qsBytesSecIn) { 

    this.qsBytesSecIn = qsBytesSecIn;
    return this;
  }

  /**
   * Bytes/sec in
   * @return qsBytesSecIn
   **/
  
  @Schema(example = "0", description = "Bytes/sec in")
  
  public String getQsBytesSecIn() {  
    return qsBytesSecIn;
  }



  public void setQsBytesSecIn(String qsBytesSecIn) { 
    this.qsBytesSecIn = qsBytesSecIn;
  }

  public QuickserverServiceMaster qsBytesSecOut(String qsBytesSecOut) { 

    this.qsBytesSecOut = qsBytesSecOut;
    return this;
  }

  /**
   * Bytes/sec out
   * @return qsBytesSecOut
   **/
  
  @Schema(example = "0", description = "Bytes/sec out")
  
  public String getQsBytesSecOut() {  
    return qsBytesSecOut;
  }



  public void setQsBytesSecOut(String qsBytesSecOut) { 
    this.qsBytesSecOut = qsBytesSecOut;
  }

  public QuickserverServiceMaster qsPacketsSecIn(String qsPacketsSecIn) { 

    this.qsPacketsSecIn = qsPacketsSecIn;
    return this;
  }

  /**
   * Packets/sec in
   * @return qsPacketsSecIn
   **/
  
  @Schema(example = "0", description = "Packets/sec in")
  
  public String getQsPacketsSecIn() {  
    return qsPacketsSecIn;
  }



  public void setQsPacketsSecIn(String qsPacketsSecIn) { 
    this.qsPacketsSecIn = qsPacketsSecIn;
  }

  public QuickserverServiceMaster qsPacketsSecOut(String qsPacketsSecOut) { 

    this.qsPacketsSecOut = qsPacketsSecOut;
    return this;
  }

  /**
   * Packets/sec out
   * @return qsPacketsSecOut
   **/
  
  @Schema(example = "0", description = "Packets/sec out")
  
  public String getQsPacketsSecOut() {  
    return qsPacketsSecOut;
  }



  public void setQsPacketsSecOut(String qsPacketsSecOut) { 
    this.qsPacketsSecOut = qsPacketsSecOut;
  }

  public QuickserverServiceMaster qsLastInstallTime(String qsLastInstallTime) { 

    this.qsLastInstallTime = qsLastInstallTime;
    return this;
  }

  /**
   * Last install time (null)
   * @return qsLastInstallTime
   **/
  
  @Schema(description = "Last install time (null)")
  
  public String getQsLastInstallTime() {
 
    return qsLastInstallTime;
  }



  public void setQsLastInstallTime(String qsLastInstallTime) { 
    this.qsLastInstallTime = qsLastInstallTime;
  }

  public QuickserverServiceMaster qsPartitions(String qsPartitions) { 

    this.qsPartitions = qsPartitions;
    return this;
  }

  /**
   * Partitions information (null)
   * @return qsPartitions
   **/
  
  @Schema(description = "Partitions information (null)")
  
  public String getQsPartitions() {
 
    return qsPartitions;
  }



  public void setQsPartitions(String qsPartitions) { 
    this.qsPartitions = qsPartitions;
  }

  public QuickserverServiceMaster qsCpuFlags(String qsCpuFlags) { 

    this.qsCpuFlags = qsCpuFlags;
    return this;
  }

  /**
   * CPU flags
   * @return qsCpuFlags
   **/
  
  @Schema(description = "CPU flags")
  
  public String getQsCpuFlags() {  
    return qsCpuFlags;
  }



  public void setQsCpuFlags(String qsCpuFlags) { 
    this.qsCpuFlags = qsCpuFlags;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QuickserverServiceMaster quickserverServiceMaster = (QuickserverServiceMaster) o;
    return Objects.equals(this.qsId, quickserverServiceMaster.qsId) &&
        Objects.equals(this.qsName, quickserverServiceMaster.qsName) &&
        Objects.equals(this.qsIp, quickserverServiceMaster.qsIp) &&
        Objects.equals(this.qsType, quickserverServiceMaster.qsType) &&
        Objects.equals(this.qsHdsize, quickserverServiceMaster.qsHdsize) &&
        Objects.equals(this.qsHdfree, quickserverServiceMaster.qsHdfree) &&
        Objects.equals(this.qsBits, quickserverServiceMaster.qsBits) &&
        Objects.equals(this.qsLoad, quickserverServiceMaster.qsLoad) &&
        Objects.equals(this.qsRam, quickserverServiceMaster.qsRam) &&
        Objects.equals(this.qsCpuModel, quickserverServiceMaster.qsCpuModel) &&
        Objects.equals(this.qsCpuMhz, quickserverServiceMaster.qsCpuMhz) &&
        Objects.equals(this.qsLocation, quickserverServiceMaster.qsLocation) &&
        Objects.equals(this.qsAvailable, quickserverServiceMaster.qsAvailable) &&
        Objects.equals(this.qsCost, quickserverServiceMaster.qsCost) &&
        Objects.equals(this.qsLastUpdate, quickserverServiceMaster.qsLastUpdate) &&
        Objects.equals(this.qsCores, quickserverServiceMaster.qsCores) &&
        Objects.equals(this.qsIowait, quickserverServiceMaster.qsIowait) &&
        Objects.equals(this.qsRaidStatus, quickserverServiceMaster.qsRaidStatus) &&
        Objects.equals(this.qsDriveType, quickserverServiceMaster.qsDriveType) &&
        Objects.equals(this.qsOrder, quickserverServiceMaster.qsOrder) &&
        Objects.equals(this.qsRaidBuilding, quickserverServiceMaster.qsRaidBuilding) &&
        Objects.equals(this.qsKernel, quickserverServiceMaster.qsKernel) &&
        Objects.equals(this.qsIoping, quickserverServiceMaster.qsIoping) &&
        Objects.equals(this.qsSpeed, quickserverServiceMaster.qsSpeed) &&
        Objects.equals(this.qsDistro, quickserverServiceMaster.qsDistro) &&
        Objects.equals(this.qsDistroVersion, quickserverServiceMaster.qsDistroVersion) &&
        Objects.equals(this.qsBytesSecIn, quickserverServiceMaster.qsBytesSecIn) &&
        Objects.equals(this.qsBytesSecOut, quickserverServiceMaster.qsBytesSecOut) &&
        Objects.equals(this.qsPacketsSecIn, quickserverServiceMaster.qsPacketsSecIn) &&
        Objects.equals(this.qsPacketsSecOut, quickserverServiceMaster.qsPacketsSecOut) &&
        Objects.equals(this.qsLastInstallTime, quickserverServiceMaster.qsLastInstallTime) &&
        Objects.equals(this.qsPartitions, quickserverServiceMaster.qsPartitions) &&
        Objects.equals(this.qsCpuFlags, quickserverServiceMaster.qsCpuFlags);
  }

  @Override
  public int hashCode() {
    return Objects.hash(qsId, qsName, qsIp, qsType, qsHdsize, qsHdfree, qsBits, qsLoad, qsRam, qsCpuModel, qsCpuMhz, qsLocation, qsAvailable, qsCost, qsLastUpdate, qsCores, qsIowait, qsRaidStatus, qsDriveType, qsOrder, qsRaidBuilding, qsKernel, qsIoping, qsSpeed, qsDistro, qsDistroVersion, qsBytesSecIn, qsBytesSecOut, qsPacketsSecIn, qsPacketsSecOut, qsLastInstallTime, qsPartitions, qsCpuFlags);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverServiceMaster {\n");
    
    sb.append("    qsId: ").append(toIndentedString(qsId)).append("\n");
    sb.append("    qsName: ").append(toIndentedString(qsName)).append("\n");
    sb.append("    qsIp: ").append(toIndentedString(qsIp)).append("\n");
    sb.append("    qsType: ").append(toIndentedString(qsType)).append("\n");
    sb.append("    qsHdsize: ").append(toIndentedString(qsHdsize)).append("\n");
    sb.append("    qsHdfree: ").append(toIndentedString(qsHdfree)).append("\n");
    sb.append("    qsBits: ").append(toIndentedString(qsBits)).append("\n");
    sb.append("    qsLoad: ").append(toIndentedString(qsLoad)).append("\n");
    sb.append("    qsRam: ").append(toIndentedString(qsRam)).append("\n");
    sb.append("    qsCpuModel: ").append(toIndentedString(qsCpuModel)).append("\n");
    sb.append("    qsCpuMhz: ").append(toIndentedString(qsCpuMhz)).append("\n");
    sb.append("    qsLocation: ").append(toIndentedString(qsLocation)).append("\n");
    sb.append("    qsAvailable: ").append(toIndentedString(qsAvailable)).append("\n");
    sb.append("    qsCost: ").append(toIndentedString(qsCost)).append("\n");
    sb.append("    qsLastUpdate: ").append(toIndentedString(qsLastUpdate)).append("\n");
    sb.append("    qsCores: ").append(toIndentedString(qsCores)).append("\n");
    sb.append("    qsIowait: ").append(toIndentedString(qsIowait)).append("\n");
    sb.append("    qsRaidStatus: ").append(toIndentedString(qsRaidStatus)).append("\n");
    sb.append("    qsDriveType: ").append(toIndentedString(qsDriveType)).append("\n");
    sb.append("    qsOrder: ").append(toIndentedString(qsOrder)).append("\n");
    sb.append("    qsRaidBuilding: ").append(toIndentedString(qsRaidBuilding)).append("\n");
    sb.append("    qsKernel: ").append(toIndentedString(qsKernel)).append("\n");
    sb.append("    qsIoping: ").append(toIndentedString(qsIoping)).append("\n");
    sb.append("    qsSpeed: ").append(toIndentedString(qsSpeed)).append("\n");
    sb.append("    qsDistro: ").append(toIndentedString(qsDistro)).append("\n");
    sb.append("    qsDistroVersion: ").append(toIndentedString(qsDistroVersion)).append("\n");
    sb.append("    qsBytesSecIn: ").append(toIndentedString(qsBytesSecIn)).append("\n");
    sb.append("    qsBytesSecOut: ").append(toIndentedString(qsBytesSecOut)).append("\n");
    sb.append("    qsPacketsSecIn: ").append(toIndentedString(qsPacketsSecIn)).append("\n");
    sb.append("    qsPacketsSecOut: ").append(toIndentedString(qsPacketsSecOut)).append("\n");
    sb.append("    qsLastInstallTime: ").append(toIndentedString(qsLastInstallTime)).append("\n");
    sb.append("    qsPartitions: ").append(toIndentedString(qsPartitions)).append("\n");
    sb.append("    qsCpuFlags: ").append(toIndentedString(qsCpuFlags)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

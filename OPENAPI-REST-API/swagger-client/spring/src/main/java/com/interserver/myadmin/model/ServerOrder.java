package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServerOrderBandwidthLi;
import com.interserver.myadmin.model.ServerOrderConfigIds;
import com.interserver.myadmin.model.ServerOrderCpLi;
import com.interserver.myadmin.model.ServerOrderCpuLi;
import com.interserver.myadmin.model.ServerOrderFieldLabels;
import com.interserver.myadmin.model.ServerOrderFormValues;
import com.interserver.myadmin.model.ServerOrderIpsLi;
import com.interserver.myadmin.model.ServerOrderMemoryLi;
import com.interserver.myadmin.model.ServerOrderOsLi;
import com.interserver.myadmin.model.ServerOrderRAID;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Object representing a server order.
 */
@Schema(description = "Object representing a server order.")
@Validated
@NotUndefined



public class ServerOrder   {
  @JsonProperty("form_values")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderFormValues formValues = null;

  @JsonProperty("config_ids")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderConfigIds configIds = null;

  @JsonProperty("cpu")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer cpu = null;

  @JsonProperty("field_label")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderFieldLabels fieldLabel = null;

  @JsonProperty("cpu_li")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderCpuLi cpuLi = null;

  @JsonProperty("memory_li")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderMemoryLi memoryLi = null;

  @JsonProperty("bandwidth_li")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderBandwidthLi bandwidthLi = null;

  @JsonProperty("ips_li")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderIpsLi ipsLi = null;

  @JsonProperty("os_li")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderOsLi osLi = null;

  @JsonProperty("cp_li")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderCpLi cpLi = null;

  @JsonProperty("raid_li")
  @Valid
  private List<ServerOrderRAID> raidLi = null;

  public ServerOrder formValues(ServerOrderFormValues formValues) { 

    this.formValues = formValues;
    return this;
  }

  /**
   * Get formValues
   * @return formValues
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderFormValues getFormValues() {  
    return formValues;
  }



  public void setFormValues(ServerOrderFormValues formValues) { 
    this.formValues = formValues;
  }

  public ServerOrder configIds(ServerOrderConfigIds configIds) { 

    this.configIds = configIds;
    return this;
  }

  /**
   * Get configIds
   * @return configIds
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderConfigIds getConfigIds() {  
    return configIds;
  }



  public void setConfigIds(ServerOrderConfigIds configIds) { 
    this.configIds = configIds;
  }

  public ServerOrder cpu(Integer cpu) { 

    this.cpu = cpu;
    return this;
  }

  /**
   * Number of CPUs for the server order.
   * @return cpu
   **/
  
  @Schema(example = "184", description = "Number of CPUs for the server order.")
  
  public Integer getCpu() {  
    return cpu;
  }



  public void setCpu(Integer cpu) { 
    this.cpu = cpu;
  }

  public ServerOrder fieldLabel(ServerOrderFieldLabels fieldLabel) { 

    this.fieldLabel = fieldLabel;
    return this;
  }

  /**
   * Get fieldLabel
   * @return fieldLabel
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderFieldLabels getFieldLabel() {  
    return fieldLabel;
  }



  public void setFieldLabel(ServerOrderFieldLabels fieldLabel) { 
    this.fieldLabel = fieldLabel;
  }

  public ServerOrder cpuLi(ServerOrderCpuLi cpuLi) { 

    this.cpuLi = cpuLi;
    return this;
  }

  /**
   * Get cpuLi
   * @return cpuLi
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderCpuLi getCpuLi() {  
    return cpuLi;
  }



  public void setCpuLi(ServerOrderCpuLi cpuLi) { 
    this.cpuLi = cpuLi;
  }

  public ServerOrder memoryLi(ServerOrderMemoryLi memoryLi) { 

    this.memoryLi = memoryLi;
    return this;
  }

  /**
   * Get memoryLi
   * @return memoryLi
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderMemoryLi getMemoryLi() {  
    return memoryLi;
  }



  public void setMemoryLi(ServerOrderMemoryLi memoryLi) { 
    this.memoryLi = memoryLi;
  }

  public ServerOrder bandwidthLi(ServerOrderBandwidthLi bandwidthLi) { 

    this.bandwidthLi = bandwidthLi;
    return this;
  }

  /**
   * Get bandwidthLi
   * @return bandwidthLi
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderBandwidthLi getBandwidthLi() {  
    return bandwidthLi;
  }



  public void setBandwidthLi(ServerOrderBandwidthLi bandwidthLi) { 
    this.bandwidthLi = bandwidthLi;
  }

  public ServerOrder ipsLi(ServerOrderIpsLi ipsLi) { 

    this.ipsLi = ipsLi;
    return this;
  }

  /**
   * Get ipsLi
   * @return ipsLi
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderIpsLi getIpsLi() {  
    return ipsLi;
  }



  public void setIpsLi(ServerOrderIpsLi ipsLi) { 
    this.ipsLi = ipsLi;
  }

  public ServerOrder osLi(ServerOrderOsLi osLi) { 

    this.osLi = osLi;
    return this;
  }

  /**
   * Get osLi
   * @return osLi
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderOsLi getOsLi() {  
    return osLi;
  }



  public void setOsLi(ServerOrderOsLi osLi) { 
    this.osLi = osLi;
  }

  public ServerOrder cpLi(ServerOrderCpLi cpLi) { 

    this.cpLi = cpLi;
    return this;
  }

  /**
   * Get cpLi
   * @return cpLi
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderCpLi getCpLi() {  
    return cpLi;
  }



  public void setCpLi(ServerOrderCpLi cpLi) { 
    this.cpLi = cpLi;
  }

  public ServerOrder raidLi(List<ServerOrderRAID> raidLi) { 

    this.raidLi = raidLi;
    return this;
  }

  public ServerOrder addRaidLiItem(ServerOrderRAID raidLiItem) {
    if (this.raidLi == null) {
      this.raidLi = new ArrayList<>();
    }
    this.raidLi.add(raidLiItem);
    return this;
  }

  /**
   * RAID options for the server order.
   * @return raidLi
   **/
  
  @Schema(description = "RAID options for the server order.")
  @Valid
  public List<ServerOrderRAID> getRaidLi() {  
    return raidLi;
  }



  public void setRaidLi(List<ServerOrderRAID> raidLi) { 
    this.raidLi = raidLi;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerOrder serverOrder = (ServerOrder) o;
    return Objects.equals(this.formValues, serverOrder.formValues) &&
        Objects.equals(this.configIds, serverOrder.configIds) &&
        Objects.equals(this.cpu, serverOrder.cpu) &&
        Objects.equals(this.fieldLabel, serverOrder.fieldLabel) &&
        Objects.equals(this.cpuLi, serverOrder.cpuLi) &&
        Objects.equals(this.memoryLi, serverOrder.memoryLi) &&
        Objects.equals(this.bandwidthLi, serverOrder.bandwidthLi) &&
        Objects.equals(this.ipsLi, serverOrder.ipsLi) &&
        Objects.equals(this.osLi, serverOrder.osLi) &&
        Objects.equals(this.cpLi, serverOrder.cpLi) &&
        Objects.equals(this.raidLi, serverOrder.raidLi);
  }

  @Override
  public int hashCode() {
    return Objects.hash(formValues, configIds, cpu, fieldLabel, cpuLi, memoryLi, bandwidthLi, ipsLi, osLi, cpLi, raidLi);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrder {\n");
    
    sb.append("    formValues: ").append(toIndentedString(formValues)).append("\n");
    sb.append("    configIds: ").append(toIndentedString(configIds)).append("\n");
    sb.append("    cpu: ").append(toIndentedString(cpu)).append("\n");
    sb.append("    fieldLabel: ").append(toIndentedString(fieldLabel)).append("\n");
    sb.append("    cpuLi: ").append(toIndentedString(cpuLi)).append("\n");
    sb.append("    memoryLi: ").append(toIndentedString(memoryLi)).append("\n");
    sb.append("    bandwidthLi: ").append(toIndentedString(bandwidthLi)).append("\n");
    sb.append("    ipsLi: ").append(toIndentedString(ipsLi)).append("\n");
    sb.append("    osLi: ").append(toIndentedString(osLi)).append("\n");
    sb.append("    cpLi: ").append(toIndentedString(cpLi)).append("\n");
    sb.append("    raidLi: ").append(toIndentedString(raidLi)).append("\n");
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

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
 * Form values for the server order.
 */
@Schema(description = "Form values for the server order.")
@Validated
@NotUndefined



public class ServerOrderFormValues   {
  @JsonProperty("memory")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer memory = null;

  @JsonProperty("bandwidth")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String bandwidth = null;

  @JsonProperty("ips")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ips = null;

  @JsonProperty("os")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String os = null;

  @JsonProperty("cp")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer cp = null;

  @JsonProperty("raid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String raid = null;

  @JsonProperty("hd")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String hd = null;


  public ServerOrderFormValues memory(Integer memory) { 

    this.memory = memory;
    return this;
  }

  /**
   * Memory value for the server order.
   * @return memory
   **/
  
  @Schema(example = "22", description = "Memory value for the server order.")
  
  public Integer getMemory() {  
    return memory;
  }



  public void setMemory(Integer memory) { 
    this.memory = memory;
  }

  public ServerOrderFormValues bandwidth(String bandwidth) { 

    this.bandwidth = bandwidth;
    return this;
  }

  /**
   * Bandwidth value for the server order.
   * @return bandwidth
   **/
  
  @Schema(example = "3", description = "Bandwidth value for the server order.")
  
  public String getBandwidth() {  
    return bandwidth;
  }



  public void setBandwidth(String bandwidth) { 
    this.bandwidth = bandwidth;
  }

  public ServerOrderFormValues ips(String ips) { 

    this.ips = ips;
    return this;
  }

  /**
   * IPs value for the server order.
   * @return ips
   **/
  
  @Schema(example = "9", description = "IPs value for the server order.")
  
  public String getIps() {  
    return ips;
  }



  public void setIps(String ips) { 
    this.ips = ips;
  }

  public ServerOrderFormValues os(String os) { 

    this.os = os;
    return this;
  }

  /**
   * Operating System value for the server order.
   * @return os
   **/
  
  @Schema(example = "5", description = "Operating System value for the server order.")
  
  public String getOs() {  
    return os;
  }



  public void setOs(String os) { 
    this.os = os;
  }

  public ServerOrderFormValues cp(Integer cp) { 

    this.cp = cp;
    return this;
  }

  /**
   * Control Panel value for the server order.
   * @return cp
   **/
  
  @Schema(example = "5", description = "Control Panel value for the server order.")
  
  public Integer getCp() {  
    return cp;
  }



  public void setCp(Integer cp) { 
    this.cp = cp;
  }

  public ServerOrderFormValues raid(String raid) { 

    this.raid = raid;
    return this;
  }

  /**
   * RAID value for the server order.
   * @return raid
   **/
  
  @Schema(example = "0", description = "RAID value for the server order.")
  
  public String getRaid() {  
    return raid;
  }



  public void setRaid(String raid) { 
    this.raid = raid;
  }

  public ServerOrderFormValues hd(String hd) { 

    this.hd = hd;
    return this;
  }

  /**
   * Hard Drives value for the server order.
   * @return hd
   **/
  
  @Schema(example = "16", description = "Hard Drives value for the server order.")
  
  public String getHd() {  
    return hd;
  }



  public void setHd(String hd) { 
    this.hd = hd;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerOrderFormValues serverOrderFormValues = (ServerOrderFormValues) o;
    return Objects.equals(this.memory, serverOrderFormValues.memory) &&
        Objects.equals(this.bandwidth, serverOrderFormValues.bandwidth) &&
        Objects.equals(this.ips, serverOrderFormValues.ips) &&
        Objects.equals(this.os, serverOrderFormValues.os) &&
        Objects.equals(this.cp, serverOrderFormValues.cp) &&
        Objects.equals(this.raid, serverOrderFormValues.raid) &&
        Objects.equals(this.hd, serverOrderFormValues.hd);
  }

  @Override
  public int hashCode() {
    return Objects.hash(memory, bandwidth, ips, os, cp, raid, hd);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderFormValues {\n");
    
    sb.append("    memory: ").append(toIndentedString(memory)).append("\n");
    sb.append("    bandwidth: ").append(toIndentedString(bandwidth)).append("\n");
    sb.append("    ips: ").append(toIndentedString(ips)).append("\n");
    sb.append("    os: ").append(toIndentedString(os)).append("\n");
    sb.append("    cp: ").append(toIndentedString(cp)).append("\n");
    sb.append("    raid: ").append(toIndentedString(raid)).append("\n");
    sb.append("    hd: ").append(toIndentedString(hd)).append("\n");
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

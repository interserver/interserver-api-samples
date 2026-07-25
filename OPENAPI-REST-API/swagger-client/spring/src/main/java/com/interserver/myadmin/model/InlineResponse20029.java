package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.InlineResponse20029Bandwidth;
import com.interserver.myadmin.model.InlineResponse20029Cp;
import com.interserver.myadmin.model.InlineResponse20029Ips;
import com.interserver.myadmin.model.InlineResponse20029Os;
import com.interserver.myadmin.model.InlineResponse20029Raid;
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
 * InlineResponse20029
 */
@Validated
@NotUndefined



public class InlineResponse20029   {
  @JsonProperty("bandwidth")
  @Valid
  private List<InlineResponse20029Bandwidth> bandwidth = null;
  @JsonProperty("ips")
  @Valid
  private List<InlineResponse20029Ips> ips = null;
  @JsonProperty("os")
  @Valid
  private List<InlineResponse20029Os> os = null;
  @JsonProperty("cp")
  @Valid
  private List<InlineResponse20029Cp> cp = null;
  @JsonProperty("raid")
  @Valid
  private List<InlineResponse20029Raid> raid = null;

  public InlineResponse20029 bandwidth(List<InlineResponse20029Bandwidth> bandwidth) { 

    this.bandwidth = bandwidth;
    return this;
  }

  public InlineResponse20029 addBandwidthItem(InlineResponse20029Bandwidth bandwidthItem) {
    if (this.bandwidth == null) {
      this.bandwidth = new ArrayList<>();
    }
    this.bandwidth.add(bandwidthItem);
    return this;
  }

  /**
   * Get bandwidth
   * @return bandwidth
   **/
  
  @Schema(description = "")
  @Valid
  public List<InlineResponse20029Bandwidth> getBandwidth() {  
    return bandwidth;
  }



  public void setBandwidth(List<InlineResponse20029Bandwidth> bandwidth) { 
    this.bandwidth = bandwidth;
  }

  public InlineResponse20029 ips(List<InlineResponse20029Ips> ips) { 

    this.ips = ips;
    return this;
  }

  public InlineResponse20029 addIpsItem(InlineResponse20029Ips ipsItem) {
    if (this.ips == null) {
      this.ips = new ArrayList<>();
    }
    this.ips.add(ipsItem);
    return this;
  }

  /**
   * Get ips
   * @return ips
   **/
  
  @Schema(description = "")
  @Valid
  public List<InlineResponse20029Ips> getIps() {  
    return ips;
  }



  public void setIps(List<InlineResponse20029Ips> ips) { 
    this.ips = ips;
  }

  public InlineResponse20029 os(List<InlineResponse20029Os> os) { 

    this.os = os;
    return this;
  }

  public InlineResponse20029 addOsItem(InlineResponse20029Os osItem) {
    if (this.os == null) {
      this.os = new ArrayList<>();
    }
    this.os.add(osItem);
    return this;
  }

  /**
   * Get os
   * @return os
   **/
  
  @Schema(description = "")
  @Valid
  public List<InlineResponse20029Os> getOs() {  
    return os;
  }



  public void setOs(List<InlineResponse20029Os> os) { 
    this.os = os;
  }

  public InlineResponse20029 cp(List<InlineResponse20029Cp> cp) { 

    this.cp = cp;
    return this;
  }

  public InlineResponse20029 addCpItem(InlineResponse20029Cp cpItem) {
    if (this.cp == null) {
      this.cp = new ArrayList<>();
    }
    this.cp.add(cpItem);
    return this;
  }

  /**
   * Get cp
   * @return cp
   **/
  
  @Schema(description = "")
  @Valid
  public List<InlineResponse20029Cp> getCp() {  
    return cp;
  }



  public void setCp(List<InlineResponse20029Cp> cp) { 
    this.cp = cp;
  }

  public InlineResponse20029 raid(List<InlineResponse20029Raid> raid) { 

    this.raid = raid;
    return this;
  }

  public InlineResponse20029 addRaidItem(InlineResponse20029Raid raidItem) {
    if (this.raid == null) {
      this.raid = new ArrayList<>();
    }
    this.raid.add(raidItem);
    return this;
  }

  /**
   * Get raid
   * @return raid
   **/
  
  @Schema(description = "")
  @Valid
  public List<InlineResponse20029Raid> getRaid() {  
    return raid;
  }



  public void setRaid(List<InlineResponse20029Raid> raid) { 
    this.raid = raid;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20029 inlineResponse20029 = (InlineResponse20029) o;
    return Objects.equals(this.bandwidth, inlineResponse20029.bandwidth) &&
        Objects.equals(this.ips, inlineResponse20029.ips) &&
        Objects.equals(this.os, inlineResponse20029.os) &&
        Objects.equals(this.cp, inlineResponse20029.cp) &&
        Objects.equals(this.raid, inlineResponse20029.raid);
  }

  @Override
  public int hashCode() {
    return Objects.hash(bandwidth, ips, os, cp, raid);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20029 {\n");
    
    sb.append("    bandwidth: ").append(toIndentedString(bandwidth)).append("\n");
    sb.append("    ips: ").append(toIndentedString(ips)).append("\n");
    sb.append("    os: ").append(toIndentedString(os)).append("\n");
    sb.append("    cp: ").append(toIndentedString(cp)).append("\n");
    sb.append("    raid: ").append(toIndentedString(raid)).append("\n");
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

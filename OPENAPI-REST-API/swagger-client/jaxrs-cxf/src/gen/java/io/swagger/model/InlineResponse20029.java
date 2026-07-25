package io.swagger.model;

import io.swagger.model.InlineResponse20029Bandwidth;
import io.swagger.model.InlineResponse20029Cp;
import io.swagger.model.InlineResponse20029Ips;
import io.swagger.model.InlineResponse20029Os;
import io.swagger.model.InlineResponse20029Raid;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class InlineResponse20029   {
  
  @Schema(description = "")
  private List<InlineResponse20029Bandwidth> bandwidth = null;
  
  @Schema(description = "")
  private List<InlineResponse20029Ips> ips = null;
  
  @Schema(description = "")
  private List<InlineResponse20029Os> os = null;
  
  @Schema(description = "")
  private List<InlineResponse20029Cp> cp = null;
  
  @Schema(description = "")
  private List<InlineResponse20029Raid> raid = null;
 /**
   * Get bandwidth
   * @return bandwidth
  **/
  @JsonProperty("bandwidth")
  @NotNull
  public List<InlineResponse20029Bandwidth> getBandwidth() {
    return bandwidth;
  }

  public void setBandwidth(List<InlineResponse20029Bandwidth> bandwidth) {
    this.bandwidth = bandwidth;
  }

  public InlineResponse20029 bandwidth(List<InlineResponse20029Bandwidth> bandwidth) {
    this.bandwidth = bandwidth;
    return this;
  }

  public InlineResponse20029 addBandwidthItem(InlineResponse20029Bandwidth bandwidthItem) {
    this.bandwidth.add(bandwidthItem);
    return this;
  }

 /**
   * Get ips
   * @return ips
  **/
  @JsonProperty("ips")
  @NotNull
  public List<InlineResponse20029Ips> getIps() {
    return ips;
  }

  public void setIps(List<InlineResponse20029Ips> ips) {
    this.ips = ips;
  }

  public InlineResponse20029 ips(List<InlineResponse20029Ips> ips) {
    this.ips = ips;
    return this;
  }

  public InlineResponse20029 addIpsItem(InlineResponse20029Ips ipsItem) {
    this.ips.add(ipsItem);
    return this;
  }

 /**
   * Get os
   * @return os
  **/
  @JsonProperty("os")
  @NotNull
  public List<InlineResponse20029Os> getOs() {
    return os;
  }

  public void setOs(List<InlineResponse20029Os> os) {
    this.os = os;
  }

  public InlineResponse20029 os(List<InlineResponse20029Os> os) {
    this.os = os;
    return this;
  }

  public InlineResponse20029 addOsItem(InlineResponse20029Os osItem) {
    this.os.add(osItem);
    return this;
  }

 /**
   * Get cp
   * @return cp
  **/
  @JsonProperty("cp")
  @NotNull
  public List<InlineResponse20029Cp> getCp() {
    return cp;
  }

  public void setCp(List<InlineResponse20029Cp> cp) {
    this.cp = cp;
  }

  public InlineResponse20029 cp(List<InlineResponse20029Cp> cp) {
    this.cp = cp;
    return this;
  }

  public InlineResponse20029 addCpItem(InlineResponse20029Cp cpItem) {
    this.cp.add(cpItem);
    return this;
  }

 /**
   * Get raid
   * @return raid
  **/
  @JsonProperty("raid")
  @NotNull
  public List<InlineResponse20029Raid> getRaid() {
    return raid;
  }

  public void setRaid(List<InlineResponse20029Raid> raid) {
    this.raid = raid;
  }

  public InlineResponse20029 raid(List<InlineResponse20029Raid> raid) {
    this.raid = raid;
    return this;
  }

  public InlineResponse20029 addRaidItem(InlineResponse20029Raid raidItem) {
    this.raid.add(raidItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

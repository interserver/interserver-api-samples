package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.InlineResponse20029Bandwidth;
import io.swagger.model.InlineResponse20029Cp;
import io.swagger.model.InlineResponse20029Ips;
import io.swagger.model.InlineResponse20029Os;
import io.swagger.model.InlineResponse20029Raid;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;



public class InlineResponse20029   {
  private List<InlineResponse20029Bandwidth> bandwidth = new ArrayList<InlineResponse20029Bandwidth>();  private List<InlineResponse20029Ips> ips = new ArrayList<InlineResponse20029Ips>();  private List<InlineResponse20029Os> os = new ArrayList<InlineResponse20029Os>();  private List<InlineResponse20029Cp> cp = new ArrayList<InlineResponse20029Cp>();  private List<InlineResponse20029Raid> raid = new ArrayList<InlineResponse20029Raid>();

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("bandwidth")
  @NotNull
  public List<InlineResponse20029Bandwidth> getBandwidth() {
    return bandwidth;
  }
  public void setBandwidth(List<InlineResponse20029Bandwidth> bandwidth) {
    this.bandwidth = bandwidth;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("ips")
  @NotNull
  public List<InlineResponse20029Ips> getIps() {
    return ips;
  }
  public void setIps(List<InlineResponse20029Ips> ips) {
    this.ips = ips;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("os")
  @NotNull
  public List<InlineResponse20029Os> getOs() {
    return os;
  }
  public void setOs(List<InlineResponse20029Os> os) {
    this.os = os;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("cp")
  @NotNull
  public List<InlineResponse20029Cp> getCp() {
    return cp;
  }
  public void setCp(List<InlineResponse20029Cp> cp) {
    this.cp = cp;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("raid")
  @NotNull
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
    return Objects.equals(bandwidth, inlineResponse20029.bandwidth) &&
        Objects.equals(ips, inlineResponse20029.ips) &&
        Objects.equals(os, inlineResponse20029.os) &&
        Objects.equals(cp, inlineResponse20029.cp) &&
        Objects.equals(raid, inlineResponse20029.raid);
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

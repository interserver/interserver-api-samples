package io.swagger.model;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.InlineResponse20029Bandwidth;
import io.swagger.model.InlineResponse20029Cp;
import io.swagger.model.InlineResponse20029Ips;
import io.swagger.model.InlineResponse20029Os;
import io.swagger.model.InlineResponse20029Raid;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;





public class InlineResponse20029   {
  @JsonProperty("bandwidth")
  private List<InlineResponse20029Bandwidth> bandwidth = null;
  @JsonProperty("ips")
  private List<InlineResponse20029Ips> ips = null;
  @JsonProperty("os")
  private List<InlineResponse20029Os> os = null;
  @JsonProperty("cp")
  private List<InlineResponse20029Cp> cp = null;
  @JsonProperty("raid")
  private List<InlineResponse20029Raid> raid = null;
  /**
   **/
  public InlineResponse20029 bandwidth(List<InlineResponse20029Bandwidth> bandwidth) {
    this.bandwidth = bandwidth;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("bandwidth")
  public List<InlineResponse20029Bandwidth> getBandwidth() {
    return bandwidth;
  }
  public void setBandwidth(List<InlineResponse20029Bandwidth> bandwidth) {
    this.bandwidth = bandwidth;
  }

  /**
   **/
  public InlineResponse20029 ips(List<InlineResponse20029Ips> ips) {
    this.ips = ips;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("ips")
  public List<InlineResponse20029Ips> getIps() {
    return ips;
  }
  public void setIps(List<InlineResponse20029Ips> ips) {
    this.ips = ips;
  }

  /**
   **/
  public InlineResponse20029 os(List<InlineResponse20029Os> os) {
    this.os = os;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("os")
  public List<InlineResponse20029Os> getOs() {
    return os;
  }
  public void setOs(List<InlineResponse20029Os> os) {
    this.os = os;
  }

  /**
   **/
  public InlineResponse20029 cp(List<InlineResponse20029Cp> cp) {
    this.cp = cp;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("cp")
  public List<InlineResponse20029Cp> getCp() {
    return cp;
  }
  public void setCp(List<InlineResponse20029Cp> cp) {
    this.cp = cp;
  }

  /**
   **/
  public InlineResponse20029 raid(List<InlineResponse20029Raid> raid) {
    this.raid = raid;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("raid")
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

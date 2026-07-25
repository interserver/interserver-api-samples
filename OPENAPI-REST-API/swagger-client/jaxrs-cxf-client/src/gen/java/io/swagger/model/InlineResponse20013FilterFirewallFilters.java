package io.swagger.model;


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

public class InlineResponse20013FilterFirewallFilters   {
  
  @Schema(description = "")
  private String daddr = null;
  
  @Schema(description = "")
  private String dest = null;
  
  @Schema(description = "")
  private String filterName = null;
  
  @Schema(description = "")
  private String destinationIp = null;
  
  @Schema(description = "")
  private String filter = null;
 /**
   * Get daddr
   * @return daddr
  **/
  @JsonProperty("daddr")
  public String getDaddr() {
    return daddr;
  }

  public void setDaddr(String daddr) {
    this.daddr = daddr;
  }

  public InlineResponse20013FilterFirewallFilters daddr(String daddr) {
    this.daddr = daddr;
    return this;
  }

 /**
   * Get dest
   * @return dest
  **/
  @JsonProperty("dest")
  public String getDest() {
    return dest;
  }

  public void setDest(String dest) {
    this.dest = dest;
  }

  public InlineResponse20013FilterFirewallFilters dest(String dest) {
    this.dest = dest;
    return this;
  }

 /**
   * Get filterName
   * @return filterName
  **/
  @JsonProperty("filter_name")
  public String getFilterName() {
    return filterName;
  }

  public void setFilterName(String filterName) {
    this.filterName = filterName;
  }

  public InlineResponse20013FilterFirewallFilters filterName(String filterName) {
    this.filterName = filterName;
    return this;
  }

 /**
   * Get destinationIp
   * @return destinationIp
  **/
  @JsonProperty("destination_ip")
  public String getDestinationIp() {
    return destinationIp;
  }

  public void setDestinationIp(String destinationIp) {
    this.destinationIp = destinationIp;
  }

  public InlineResponse20013FilterFirewallFilters destinationIp(String destinationIp) {
    this.destinationIp = destinationIp;
    return this;
  }

 /**
   * Get filter
   * @return filter
  **/
  @JsonProperty("filter")
  public String getFilter() {
    return filter;
  }

  public void setFilter(String filter) {
    this.filter = filter;
  }

  public InlineResponse20013FilterFirewallFilters filter(String filter) {
    this.filter = filter;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013FilterFirewallFilters {\n");
    
    sb.append("    daddr: ").append(toIndentedString(daddr)).append("\n");
    sb.append("    dest: ").append(toIndentedString(dest)).append("\n");
    sb.append("    filterName: ").append(toIndentedString(filterName)).append("\n");
    sb.append("    destinationIp: ").append(toIndentedString(destinationIp)).append("\n");
    sb.append("    filter: ").append(toIndentedString(filter)).append("\n");
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

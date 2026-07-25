package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;



public class InlineResponse20013FilterFirewallFilters   {
  private String daddr = null;  private String dest = null;  private String filterName = null;  private String destinationIp = null;  private String filter = null;

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("daddr")
  @NotNull
  public String getDaddr() {
    return daddr;
  }
  public void setDaddr(String daddr) {
    this.daddr = daddr;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("dest")
  @NotNull
  public String getDest() {
    return dest;
  }
  public void setDest(String dest) {
    this.dest = dest;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("filter_name")
  @NotNull
  public String getFilterName() {
    return filterName;
  }
  public void setFilterName(String filterName) {
    this.filterName = filterName;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("destination_ip")
  @NotNull
  public String getDestinationIp() {
    return destinationIp;
  }
  public void setDestinationIp(String destinationIp) {
    this.destinationIp = destinationIp;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("filter")
  @NotNull
  public String getFilter() {
    return filter;
  }
  public void setFilter(String filter) {
    this.filter = filter;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20013FilterFirewallFilters inlineResponse20013FilterFirewallFilters = (InlineResponse20013FilterFirewallFilters) o;
    return Objects.equals(daddr, inlineResponse20013FilterFirewallFilters.daddr) &&
        Objects.equals(dest, inlineResponse20013FilterFirewallFilters.dest) &&
        Objects.equals(filterName, inlineResponse20013FilterFirewallFilters.filterName) &&
        Objects.equals(destinationIp, inlineResponse20013FilterFirewallFilters.destinationIp) &&
        Objects.equals(filter, inlineResponse20013FilterFirewallFilters.filter);
  }

  @Override
  public int hashCode() {
    return Objects.hash(daddr, dest, filterName, destinationIp, filter);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

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
 * InlineResponse20013FilterFirewallFilters
 */
@Validated
@NotUndefined



public class InlineResponse20013FilterFirewallFilters   {
  @JsonProperty("daddr")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String daddr = null;

  @JsonProperty("dest")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String dest = null;

  @JsonProperty("filter_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String filterName = null;

  @JsonProperty("destination_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String destinationIp = null;

  @JsonProperty("filter")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String filter = null;


  public InlineResponse20013FilterFirewallFilters daddr(String daddr) { 

    this.daddr = daddr;
    return this;
  }

  /**
   * Get daddr
   * @return daddr
   **/
  
  @Schema(description = "")
  
  public String getDaddr() {  
    return daddr;
  }



  public void setDaddr(String daddr) { 
    this.daddr = daddr;
  }

  public InlineResponse20013FilterFirewallFilters dest(String dest) { 

    this.dest = dest;
    return this;
  }

  /**
   * Get dest
   * @return dest
   **/
  
  @Schema(description = "")
  
  public String getDest() {  
    return dest;
  }



  public void setDest(String dest) { 
    this.dest = dest;
  }

  public InlineResponse20013FilterFirewallFilters filterName(String filterName) { 

    this.filterName = filterName;
    return this;
  }

  /**
   * Get filterName
   * @return filterName
   **/
  
  @Schema(description = "")
  
  public String getFilterName() {  
    return filterName;
  }



  public void setFilterName(String filterName) { 
    this.filterName = filterName;
  }

  public InlineResponse20013FilterFirewallFilters destinationIp(String destinationIp) { 

    this.destinationIp = destinationIp;
    return this;
  }

  /**
   * Get destinationIp
   * @return destinationIp
   **/
  
  @Schema(description = "")
  
  public String getDestinationIp() {  
    return destinationIp;
  }



  public void setDestinationIp(String destinationIp) { 
    this.destinationIp = destinationIp;
  }

  public InlineResponse20013FilterFirewallFilters filter(String filter) { 

    this.filter = filter;
    return this;
  }

  /**
   * Get filter
   * @return filter
   **/
  
  @Schema(description = "")
  
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
    return Objects.equals(this.daddr, inlineResponse20013FilterFirewallFilters.daddr) &&
        Objects.equals(this.dest, inlineResponse20013FilterFirewallFilters.dest) &&
        Objects.equals(this.filterName, inlineResponse20013FilterFirewallFilters.filterName) &&
        Objects.equals(this.destinationIp, inlineResponse20013FilterFirewallFilters.destinationIp) &&
        Objects.equals(this.filter, inlineResponse20013FilterFirewallFilters.filter);
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

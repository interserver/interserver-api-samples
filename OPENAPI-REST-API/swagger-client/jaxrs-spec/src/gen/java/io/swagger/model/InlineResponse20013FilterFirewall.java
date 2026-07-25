package io.swagger.model;

import io.swagger.model.InlineResponse20013FilterFirewallFilters;
import io.swagger.model.InlineResponse20013FilterFirewallRules;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponse20013FilterFirewall   {

  private @Valid List<InlineResponse20013FilterFirewallRules> rules = new ArrayList<InlineResponse20013FilterFirewallRules>();

  private @Valid List<InlineResponse20013FilterFirewallFilters> filters = new ArrayList<InlineResponse20013FilterFirewallFilters>();

  private @Valid Integer scrubEnabled = null;

  /**
   **/
  public InlineResponse20013FilterFirewall rules(List<InlineResponse20013FilterFirewallRules> rules) {
    this.rules = rules;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("rules")
  @NotNull

  public List<InlineResponse20013FilterFirewallRules> getRules() {
    return rules;
  }
  public void setRules(List<InlineResponse20013FilterFirewallRules> rules) {
    this.rules = rules;
  }

  /**
   **/
  public InlineResponse20013FilterFirewall filters(List<InlineResponse20013FilterFirewallFilters> filters) {
    this.filters = filters;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("filters")
  @NotNull

  public List<InlineResponse20013FilterFirewallFilters> getFilters() {
    return filters;
  }
  public void setFilters(List<InlineResponse20013FilterFirewallFilters> filters) {
    this.filters = filters;
  }

  /**
   **/
  public InlineResponse20013FilterFirewall scrubEnabled(Integer scrubEnabled) {
    this.scrubEnabled = scrubEnabled;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("scrub_enabled")
  @NotNull

  public Integer getScrubEnabled() {
    return scrubEnabled;
  }
  public void setScrubEnabled(Integer scrubEnabled) {
    this.scrubEnabled = scrubEnabled;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20013FilterFirewall inlineResponse20013FilterFirewall = (InlineResponse20013FilterFirewall) o;
    return Objects.equals(rules, inlineResponse20013FilterFirewall.rules) &&
        Objects.equals(filters, inlineResponse20013FilterFirewall.filters) &&
        Objects.equals(scrubEnabled, inlineResponse20013FilterFirewall.scrubEnabled);
  }

  @Override
  public int hashCode() {
    return Objects.hash(rules, filters, scrubEnabled);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013FilterFirewall {\n");
    
    sb.append("    rules: ").append(toIndentedString(rules)).append("\n");
    sb.append("    filters: ").append(toIndentedString(filters)).append("\n");
    sb.append("    scrubEnabled: ").append(toIndentedString(scrubEnabled)).append("\n");
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

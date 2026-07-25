package io.swagger.model;

import io.swagger.model.InlineResponse20013FilterFirewallFilters;
import io.swagger.model.InlineResponse20013FilterFirewallRules;
import java.util.ArrayList;
import java.util.List;

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

public class InlineResponse20013FilterFirewall   {
  
  @Schema(description = "")
  private List<InlineResponse20013FilterFirewallRules> rules = null;
  
  @Schema(description = "")
  private List<InlineResponse20013FilterFirewallFilters> filters = null;
  
  @Schema(description = "")
  private Integer scrubEnabled = null;
 /**
   * Get rules
   * @return rules
  **/
  @JsonProperty("rules")
  public List<InlineResponse20013FilterFirewallRules> getRules() {
    return rules;
  }

  public void setRules(List<InlineResponse20013FilterFirewallRules> rules) {
    this.rules = rules;
  }

  public InlineResponse20013FilterFirewall rules(List<InlineResponse20013FilterFirewallRules> rules) {
    this.rules = rules;
    return this;
  }

  public InlineResponse20013FilterFirewall addRulesItem(InlineResponse20013FilterFirewallRules rulesItem) {
    this.rules.add(rulesItem);
    return this;
  }

 /**
   * Get filters
   * @return filters
  **/
  @JsonProperty("filters")
  public List<InlineResponse20013FilterFirewallFilters> getFilters() {
    return filters;
  }

  public void setFilters(List<InlineResponse20013FilterFirewallFilters> filters) {
    this.filters = filters;
  }

  public InlineResponse20013FilterFirewall filters(List<InlineResponse20013FilterFirewallFilters> filters) {
    this.filters = filters;
    return this;
  }

  public InlineResponse20013FilterFirewall addFiltersItem(InlineResponse20013FilterFirewallFilters filtersItem) {
    this.filters.add(filtersItem);
    return this;
  }

 /**
   * Get scrubEnabled
   * @return scrubEnabled
  **/
  @JsonProperty("scrub_enabled")
  public Integer getScrubEnabled() {
    return scrubEnabled;
  }

  public void setScrubEnabled(Integer scrubEnabled) {
    this.scrubEnabled = scrubEnabled;
  }

  public InlineResponse20013FilterFirewall scrubEnabled(Integer scrubEnabled) {
    this.scrubEnabled = scrubEnabled;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

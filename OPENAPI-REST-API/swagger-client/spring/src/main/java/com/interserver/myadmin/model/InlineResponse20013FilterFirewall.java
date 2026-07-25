package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.InlineResponse20013FilterFirewallFilters;
import com.interserver.myadmin.model.InlineResponse20013FilterFirewallRules;
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
 * InlineResponse20013FilterFirewall
 */
@Validated
@NotUndefined



public class InlineResponse20013FilterFirewall   {
  @JsonProperty("rules")
  @Valid
  private List<InlineResponse20013FilterFirewallRules> rules = null;
  @JsonProperty("filters")
  @Valid
  private List<InlineResponse20013FilterFirewallFilters> filters = null;
  @JsonProperty("scrub_enabled")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer scrubEnabled = null;


  public InlineResponse20013FilterFirewall rules(List<InlineResponse20013FilterFirewallRules> rules) { 

    this.rules = rules;
    return this;
  }

  public InlineResponse20013FilterFirewall addRulesItem(InlineResponse20013FilterFirewallRules rulesItem) {
    if (this.rules == null) {
      this.rules = new ArrayList<>();
    }
    this.rules.add(rulesItem);
    return this;
  }

  /**
   * Get rules
   * @return rules
   **/
  
  @Schema(description = "")
  @Valid
  public List<InlineResponse20013FilterFirewallRules> getRules() {  
    return rules;
  }



  public void setRules(List<InlineResponse20013FilterFirewallRules> rules) { 
    this.rules = rules;
  }

  public InlineResponse20013FilterFirewall filters(List<InlineResponse20013FilterFirewallFilters> filters) { 

    this.filters = filters;
    return this;
  }

  public InlineResponse20013FilterFirewall addFiltersItem(InlineResponse20013FilterFirewallFilters filtersItem) {
    if (this.filters == null) {
      this.filters = new ArrayList<>();
    }
    this.filters.add(filtersItem);
    return this;
  }

  /**
   * Get filters
   * @return filters
   **/
  
  @Schema(description = "")
  @Valid
  public List<InlineResponse20013FilterFirewallFilters> getFilters() {  
    return filters;
  }



  public void setFilters(List<InlineResponse20013FilterFirewallFilters> filters) { 
    this.filters = filters;
  }

  public InlineResponse20013FilterFirewall scrubEnabled(Integer scrubEnabled) { 

    this.scrubEnabled = scrubEnabled;
    return this;
  }

  /**
   * Get scrubEnabled
   * @return scrubEnabled
   **/
  
  @Schema(description = "")
  
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
    return Objects.equals(this.rules, inlineResponse20013FilterFirewall.rules) &&
        Objects.equals(this.filters, inlineResponse20013FilterFirewall.filters) &&
        Objects.equals(this.scrubEnabled, inlineResponse20013FilterFirewall.scrubEnabled);
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

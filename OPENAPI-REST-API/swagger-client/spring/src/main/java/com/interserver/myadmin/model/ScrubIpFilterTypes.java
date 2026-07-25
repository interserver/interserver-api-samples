package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ScrubIpFilterTypesFilters;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Available scrub filter types for building firewall rules.
 */
@Schema(description = "Available scrub filter types for building firewall rules.")
@Validated
@NotUndefined



public class ScrubIpFilterTypes   {
  @JsonProperty("success")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean success = null;

  @JsonProperty("filters")
  @Valid
  private Map<String, ScrubIpFilterTypesFilters> filters = null;

  public ScrubIpFilterTypes success(Boolean success) { 

    this.success = success;
    return this;
  }

  /**
   * Get success
   * @return success
   **/
  
  @Schema(description = "")
  
  public Boolean isSuccess() {  
    return success;
  }



  public void setSuccess(Boolean success) { 
    this.success = success;
  }

  public ScrubIpFilterTypes filters(Map<String, ScrubIpFilterTypesFilters> filters) { 

    this.filters = filters;
    return this;
  }

  public ScrubIpFilterTypes putFiltersItem(String key, ScrubIpFilterTypesFilters filtersItem) {
    if (this.filters == null) {
      this.filters = new HashMap<>();
    }
    this.filters.put(key, filtersItem);
    return this;
  }

  /**
   * Get filters
   * @return filters
   **/
  
  @Schema(description = "")
  @Valid
  public Map<String, ScrubIpFilterTypesFilters> getFilters() {  
    return filters;
  }



  public void setFilters(Map<String, ScrubIpFilterTypesFilters> filters) { 
    this.filters = filters;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScrubIpFilterTypes scrubIpFilterTypes = (ScrubIpFilterTypes) o;
    return Objects.equals(this.success, scrubIpFilterTypes.success) &&
        Objects.equals(this.filters, scrubIpFilterTypes.filters);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, filters);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScrubIpFilterTypes {\n");
    
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    filters: ").append(toIndentedString(filters)).append("\n");
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

package org.openapitools.model;

import java.util.HashMap;
import java.util.Map;
import org.openapitools.model.ScrubIpFilterTypesFiltersValue;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Available scrub filter types for building firewall rules.
 */
@ApiModel(description="Available scrub filter types for building firewall rules.")

public class ScrubIpFilterTypes  {
  
  @ApiModelProperty(value = "")

  private Boolean success;

  @ApiModelProperty(value = "")

  private Map<String, ScrubIpFilterTypesFiltersValue> filters = new HashMap<>();
 /**
   * Get success
   * @return success
  **/
  @JsonProperty("success")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public ScrubIpFilterTypes success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * Get filters
   * @return filters
  **/
  @JsonProperty("filters")
  public Map<String, ScrubIpFilterTypesFiltersValue> getFilters() {
    return filters;
  }

  public void setFilters(Map<String, ScrubIpFilterTypesFiltersValue> filters) {
    this.filters = filters;
  }

  public ScrubIpFilterTypes filters(Map<String, ScrubIpFilterTypesFiltersValue> filters) {
    this.filters = filters;
    return this;
  }

  public ScrubIpFilterTypes putFiltersItem(String key, ScrubIpFilterTypesFiltersValue filtersItem) {
    this.filters.put(key, filtersItem);
    return this;
  }

  @Override
  public boolean equals(Object o) {
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}


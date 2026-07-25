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
 * VPS Traffic Usage Average Section Response
 */
@Schema(description = "VPS Traffic Usage Average Section Response")
@Validated
@NotUndefined



public class VpsTrafficUsageAverageSectionResponse   {
  @JsonProperty("total")

  private Integer total = null;

  @JsonProperty("count")

  private Integer count = null;

  @JsonProperty("value")

  private Integer value = null;


  public VpsTrafficUsageAverageSectionResponse total(Integer total) { 

    this.total = total;
    return this;
  }

  /**
   * Get total
   * @return total
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getTotal() {  
    return total;
  }



  public void setTotal(Integer total) { 

    this.total = total;
  }

  public VpsTrafficUsageAverageSectionResponse count(Integer count) { 

    this.count = count;
    return this;
  }

  /**
   * Get count
   * @return count
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getCount() {  
    return count;
  }



  public void setCount(Integer count) { 

    this.count = count;
  }

  public VpsTrafficUsageAverageSectionResponse value(Integer value) { 

    this.value = value;
    return this;
  }

  /**
   * Get value
   * @return value
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getValue() {  
    return value;
  }



  public void setValue(Integer value) { 

    this.value = value;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsTrafficUsageAverageSectionResponse vpsTrafficUsageAverageSectionResponse = (VpsTrafficUsageAverageSectionResponse) o;
    return Objects.equals(this.total, vpsTrafficUsageAverageSectionResponse.total) &&
        Objects.equals(this.count, vpsTrafficUsageAverageSectionResponse.count) &&
        Objects.equals(this.value, vpsTrafficUsageAverageSectionResponse.value);
  }

  @Override
  public int hashCode() {
    return Objects.hash(total, count, value);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsTrafficUsageAverageSectionResponse {\n");
    
    sb.append("    total: ").append(toIndentedString(total)).append("\n");
    sb.append("    count: ").append(toIndentedString(count)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
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

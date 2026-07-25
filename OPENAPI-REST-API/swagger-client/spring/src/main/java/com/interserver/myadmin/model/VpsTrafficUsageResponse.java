package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsTrafficTotalsSectionResponse;
import com.interserver.myadmin.model.VpsTrafficUsageAverageResponse;
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
 * VPS Traffic Usage Section
 */
@Schema(description = "VPS Traffic Usage Section")
@Validated
@NotUndefined



public class VpsTrafficUsageResponse   {
  @JsonProperty("current")

  private VpsTrafficTotalsSectionResponse current = null;

  @JsonProperty("peak")

  private VpsTrafficTotalsSectionResponse peak = null;

  @JsonProperty("average")

  private VpsTrafficUsageAverageResponse average = null;


  public VpsTrafficUsageResponse current(VpsTrafficTotalsSectionResponse current) { 

    this.current = current;
    return this;
  }

  /**
   * Get current
   * @return current
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficTotalsSectionResponse getCurrent() {  
    return current;
  }



  public void setCurrent(VpsTrafficTotalsSectionResponse current) { 

    this.current = current;
  }

  public VpsTrafficUsageResponse peak(VpsTrafficTotalsSectionResponse peak) { 

    this.peak = peak;
    return this;
  }

  /**
   * Get peak
   * @return peak
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficTotalsSectionResponse getPeak() {  
    return peak;
  }



  public void setPeak(VpsTrafficTotalsSectionResponse peak) { 

    this.peak = peak;
  }

  public VpsTrafficUsageResponse average(VpsTrafficUsageAverageResponse average) { 

    this.average = average;
    return this;
  }

  /**
   * Get average
   * @return average
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficUsageAverageResponse getAverage() {  
    return average;
  }



  public void setAverage(VpsTrafficUsageAverageResponse average) { 

    this.average = average;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsTrafficUsageResponse vpsTrafficUsageResponse = (VpsTrafficUsageResponse) o;
    return Objects.equals(this.current, vpsTrafficUsageResponse.current) &&
        Objects.equals(this.peak, vpsTrafficUsageResponse.peak) &&
        Objects.equals(this.average, vpsTrafficUsageResponse.average);
  }

  @Override
  public int hashCode() {
    return Objects.hash(current, peak, average);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsTrafficUsageResponse {\n");
    
    sb.append("    current: ").append(toIndentedString(current)).append("\n");
    sb.append("    peak: ").append(toIndentedString(peak)).append("\n");
    sb.append("    average: ").append(toIndentedString(average)).append("\n");
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

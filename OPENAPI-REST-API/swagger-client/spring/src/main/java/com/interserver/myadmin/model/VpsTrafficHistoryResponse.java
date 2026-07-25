package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsTrafficHistorySectionResponse;
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
 * VPS Traffic Data History Section
 */
@Schema(description = "VPS Traffic Data History Section")
@Validated
@NotUndefined



public class VpsTrafficHistoryResponse   {
  @JsonProperty("hour")

  private VpsTrafficHistorySectionResponse hour = null;

  @JsonProperty("day")

  private VpsTrafficHistorySectionResponse day = null;


  public VpsTrafficHistoryResponse hour(VpsTrafficHistorySectionResponse hour) { 

    this.hour = hour;
    return this;
  }

  /**
   * Get hour
   * @return hour
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficHistorySectionResponse getHour() {  
    return hour;
  }



  public void setHour(VpsTrafficHistorySectionResponse hour) { 

    this.hour = hour;
  }

  public VpsTrafficHistoryResponse day(VpsTrafficHistorySectionResponse day) { 

    this.day = day;
    return this;
  }

  /**
   * Get day
   * @return day
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficHistorySectionResponse getDay() {  
    return day;
  }



  public void setDay(VpsTrafficHistorySectionResponse day) { 

    this.day = day;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsTrafficHistoryResponse vpsTrafficHistoryResponse = (VpsTrafficHistoryResponse) o;
    return Objects.equals(this.hour, vpsTrafficHistoryResponse.hour) &&
        Objects.equals(this.day, vpsTrafficHistoryResponse.day);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hour, day);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsTrafficHistoryResponse {\n");
    
    sb.append("    hour: ").append(toIndentedString(hour)).append("\n");
    sb.append("    day: ").append(toIndentedString(day)).append("\n");
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

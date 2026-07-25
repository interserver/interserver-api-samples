package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsTrafficTotalsSectionResponse;
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
 * VPS Traffic Totals Section
 */
@Schema(description = "VPS Traffic Totals Section")
@Validated
@NotUndefined



public class VpsTrafficTotalsResposne   {
  @JsonProperty("day")

  private VpsTrafficTotalsSectionResponse day = null;

  @JsonProperty("month")

  private VpsTrafficTotalsSectionResponse month = null;

  @JsonProperty("year")

  private VpsTrafficTotalsSectionResponse year = null;

  @JsonProperty("all")

  private VpsTrafficTotalsSectionResponse all = null;


  public VpsTrafficTotalsResposne day(VpsTrafficTotalsSectionResponse day) { 

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
  public VpsTrafficTotalsSectionResponse getDay() {  
    return day;
  }



  public void setDay(VpsTrafficTotalsSectionResponse day) { 

    this.day = day;
  }

  public VpsTrafficTotalsResposne month(VpsTrafficTotalsSectionResponse month) { 

    this.month = month;
    return this;
  }

  /**
   * Get month
   * @return month
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficTotalsSectionResponse getMonth() {  
    return month;
  }



  public void setMonth(VpsTrafficTotalsSectionResponse month) { 

    this.month = month;
  }

  public VpsTrafficTotalsResposne year(VpsTrafficTotalsSectionResponse year) { 

    this.year = year;
    return this;
  }

  /**
   * Get year
   * @return year
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficTotalsSectionResponse getYear() {  
    return year;
  }



  public void setYear(VpsTrafficTotalsSectionResponse year) { 

    this.year = year;
  }

  public VpsTrafficTotalsResposne all(VpsTrafficTotalsSectionResponse all) { 

    this.all = all;
    return this;
  }

  /**
   * Get all
   * @return all
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficTotalsSectionResponse getAll() {  
    return all;
  }



  public void setAll(VpsTrafficTotalsSectionResponse all) { 

    this.all = all;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsTrafficTotalsResposne vpsTrafficTotalsResposne = (VpsTrafficTotalsResposne) o;
    return Objects.equals(this.day, vpsTrafficTotalsResposne.day) &&
        Objects.equals(this.month, vpsTrafficTotalsResposne.month) &&
        Objects.equals(this.year, vpsTrafficTotalsResposne.year) &&
        Objects.equals(this.all, vpsTrafficTotalsResposne.all);
  }

  @Override
  public int hashCode() {
    return Objects.hash(day, month, year, all);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsTrafficTotalsResposne {\n");
    
    sb.append("    day: ").append(toIndentedString(day)).append("\n");
    sb.append("    month: ").append(toIndentedString(month)).append("\n");
    sb.append("    year: ").append(toIndentedString(year)).append("\n");
    sb.append("    all: ").append(toIndentedString(all)).append("\n");
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

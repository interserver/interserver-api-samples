package io.swagger.model;

import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponse20029Cp   {

  private @Valid String id = null;

  private @Valid String shortDesc = null;

  private @Valid String longDesc = null;

  private @Valid String osType = null;

  private @Valid String monthlyPrice = null;

  /**
   **/
  public InlineResponse20029Cp id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(example = "1", value = "")
  @JsonProperty("id")
  @NotNull

  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public InlineResponse20029Cp shortDesc(String shortDesc) {
    this.shortDesc = shortDesc;
    return this;
  }

  
  @ApiModelProperty(example = "None", value = "")
  @JsonProperty("short_desc")
  @NotNull

  public String getShortDesc() {
    return shortDesc;
  }
  public void setShortDesc(String shortDesc) {
    this.shortDesc = shortDesc;
  }

  /**
   **/
  public InlineResponse20029Cp longDesc(String longDesc) {
    this.longDesc = longDesc;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("long_desc")
  @NotNull

  public String getLongDesc() {
    return longDesc;
  }
  public void setLongDesc(String longDesc) {
    this.longDesc = longDesc;
  }

  /**
   **/
  public InlineResponse20029Cp osType(String osType) {
    this.osType = osType;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("os_type")
  @NotNull

  public String getOsType() {
    return osType;
  }
  public void setOsType(String osType) {
    this.osType = osType;
  }

  /**
   **/
  public InlineResponse20029Cp monthlyPrice(String monthlyPrice) {
    this.monthlyPrice = monthlyPrice;
    return this;
  }

  
  @ApiModelProperty(example = "0", value = "")
  @JsonProperty("monthly_price")
  @NotNull

  public String getMonthlyPrice() {
    return monthlyPrice;
  }
  public void setMonthlyPrice(String monthlyPrice) {
    this.monthlyPrice = monthlyPrice;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20029Cp inlineResponse20029Cp = (InlineResponse20029Cp) o;
    return Objects.equals(id, inlineResponse20029Cp.id) &&
        Objects.equals(shortDesc, inlineResponse20029Cp.shortDesc) &&
        Objects.equals(longDesc, inlineResponse20029Cp.longDesc) &&
        Objects.equals(osType, inlineResponse20029Cp.osType) &&
        Objects.equals(monthlyPrice, inlineResponse20029Cp.monthlyPrice);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, shortDesc, longDesc, osType, monthlyPrice);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20029Cp {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    shortDesc: ").append(toIndentedString(shortDesc)).append("\n");
    sb.append("    longDesc: ").append(toIndentedString(longDesc)).append("\n");
    sb.append("    osType: ").append(toIndentedString(osType)).append("\n");
    sb.append("    monthlyPrice: ").append(toIndentedString(monthlyPrice)).append("\n");
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

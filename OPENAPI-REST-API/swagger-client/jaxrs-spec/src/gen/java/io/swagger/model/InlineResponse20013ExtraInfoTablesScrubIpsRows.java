package io.swagger.model;

import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponse20013ExtraInfoTablesScrubIpsRows   {

  private @Valid String desc = null;

  private @Valid String value = null;

  /**
   **/
  public InlineResponse20013ExtraInfoTablesScrubIpsRows desc(String desc) {
    this.desc = desc;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("desc")
  @NotNull

  public String getDesc() {
    return desc;
  }
  public void setDesc(String desc) {
    this.desc = desc;
  }

  /**
   **/
  public InlineResponse20013ExtraInfoTablesScrubIpsRows value(String value) {
    this.value = value;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("value")
  @NotNull

  public String getValue() {
    return value;
  }
  public void setValue(String value) {
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
    InlineResponse20013ExtraInfoTablesScrubIpsRows inlineResponse20013ExtraInfoTablesScrubIpsRows = (InlineResponse20013ExtraInfoTablesScrubIpsRows) o;
    return Objects.equals(desc, inlineResponse20013ExtraInfoTablesScrubIpsRows.desc) &&
        Objects.equals(value, inlineResponse20013ExtraInfoTablesScrubIpsRows.value);
  }

  @Override
  public int hashCode() {
    return Objects.hash(desc, value);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013ExtraInfoTablesScrubIpsRows {\n");
    
    sb.append("    desc: ").append(toIndentedString(desc)).append("\n");
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

package io.swagger.model;

import io.swagger.model.InlineResponse20013ExtraInfoTablesScrubIps;
import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponse20013ExtraInfoTables   {

  private @Valid InlineResponse20013ExtraInfoTablesScrubIps scrubIps = null;

  /**
   **/
  public InlineResponse20013ExtraInfoTables scrubIps(InlineResponse20013ExtraInfoTablesScrubIps scrubIps) {
    this.scrubIps = scrubIps;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("scrub_ips")
  @NotNull

  public InlineResponse20013ExtraInfoTablesScrubIps getScrubIps() {
    return scrubIps;
  }
  public void setScrubIps(InlineResponse20013ExtraInfoTablesScrubIps scrubIps) {
    this.scrubIps = scrubIps;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20013ExtraInfoTables inlineResponse20013ExtraInfoTables = (InlineResponse20013ExtraInfoTables) o;
    return Objects.equals(scrubIps, inlineResponse20013ExtraInfoTables.scrubIps);
  }

  @Override
  public int hashCode() {
    return Objects.hash(scrubIps);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013ExtraInfoTables {\n");
    
    sb.append("    scrubIps: ").append(toIndentedString(scrubIps)).append("\n");
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

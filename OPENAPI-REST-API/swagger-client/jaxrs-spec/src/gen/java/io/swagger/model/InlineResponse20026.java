package io.swagger.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponse20026   {

  private @Valid Map<String, String> ips = new HashMap<String, String>();

  /**
   * A map of IP addresses to their current reverse DNS hostnames.
   **/
  public InlineResponse20026 ips(Map<String, String> ips) {
    this.ips = ips;
    return this;
  }

  
  @ApiModelProperty(value = "A map of IP addresses to their current reverse DNS hostnames.")
  @JsonProperty("ips")
  @NotNull

  public Map<String, String> getIps() {
    return ips;
  }
  public void setIps(Map<String, String> ips) {
    this.ips = ips;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20026 inlineResponse20026 = (InlineResponse20026) o;
    return Objects.equals(ips, inlineResponse20026.ips);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ips);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20026 {\n");
    
    sb.append("    ips: ").append(toIndentedString(ips)).append("\n");
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

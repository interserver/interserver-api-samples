package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponse20026
 */
@Validated
@Introspected

public class InlineResponse20026   {
  @JsonProperty("ips")
  @Valid
  private Map<String, String> ips = null;

  public InlineResponse20026 ips(Map<String, String> ips) {
    this.ips = ips;
    return this;
  }

  public InlineResponse20026 putIpsItem(String key, String ipsItem) {
    if (this.ips == null) {
      this.ips = new HashMap<String, String>();
    }
    this.ips.put(key, ipsItem);
    return this;
  }

  /**
   * A map of IP addresses to their current reverse DNS hostnames.
   * @return ips
  **/
  @Schema(description = "A map of IP addresses to their current reverse DNS hostnames.")
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
    return Objects.equals(this.ips, inlineResponse20026.ips);
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

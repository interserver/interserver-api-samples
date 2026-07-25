package io.swagger.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class InlineResponse20026   {
  
  @Schema(description = "A map of IP addresses to their current reverse DNS hostnames.")
 /**
   * A map of IP addresses to their current reverse DNS hostnames.  
  **/
  private Map<String, String> ips = null;
 /**
   * A map of IP addresses to their current reverse DNS hostnames.
   * @return ips
  **/
  @JsonProperty("ips")
  @NotNull
  public Map<String, String> getIps() {
    return ips;
  }

  public void setIps(Map<String, String> ips) {
    this.ips = ips;
  }

  public InlineResponse20026 ips(Map<String, String> ips) {
    this.ips = ips;
    return this;
  }

  public InlineResponse20026 putIpsItem(String key, String ipsItem) {
    this.ips.put(key, ipsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

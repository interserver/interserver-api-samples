package io.swagger.model;

import io.swagger.model.InlineResponse20013ExtraInfoTablesScrubIps;

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

public class InlineResponse20013ExtraInfoTables   {
  
  @Schema(description = "")
  private InlineResponse20013ExtraInfoTablesScrubIps scrubIps = null;
 /**
   * Get scrubIps
   * @return scrubIps
  **/
  @JsonProperty("scrub_ips")
  public InlineResponse20013ExtraInfoTablesScrubIps getScrubIps() {
    return scrubIps;
  }

  public void setScrubIps(InlineResponse20013ExtraInfoTablesScrubIps scrubIps) {
    this.scrubIps = scrubIps;
  }

  public InlineResponse20013ExtraInfoTables scrubIps(InlineResponse20013ExtraInfoTablesScrubIps scrubIps) {
    this.scrubIps = scrubIps;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

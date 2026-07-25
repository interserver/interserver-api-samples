package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.InlineResponse20013ExtraInfoTablesScrubIps;
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
 * InlineResponse20013ExtraInfoTables
 */
@Validated
@NotUndefined



public class InlineResponse20013ExtraInfoTables   {
  @JsonProperty("scrub_ips")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private InlineResponse20013ExtraInfoTablesScrubIps scrubIps = null;


  public InlineResponse20013ExtraInfoTables scrubIps(InlineResponse20013ExtraInfoTablesScrubIps scrubIps) { 

    this.scrubIps = scrubIps;
    return this;
  }

  /**
   * Get scrubIps
   * @return scrubIps
   **/
  
  @Schema(description = "")
  
@Valid
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
    return Objects.equals(this.scrubIps, inlineResponse20013ExtraInfoTables.scrubIps);
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

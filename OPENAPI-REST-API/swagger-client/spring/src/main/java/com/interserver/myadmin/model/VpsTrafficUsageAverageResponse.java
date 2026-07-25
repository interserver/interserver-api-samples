package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsTrafficUsageAverageSectionResponse;
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
 * VPS Traffic Usage Average Section
 */
@Schema(description = "VPS Traffic Usage Average Section")
@Validated
@NotUndefined



public class VpsTrafficUsageAverageResponse   {
  @JsonProperty("in")

  private VpsTrafficUsageAverageSectionResponse in = null;

  @JsonProperty("out")

  private VpsTrafficUsageAverageSectionResponse out = null;


  public VpsTrafficUsageAverageResponse in(VpsTrafficUsageAverageSectionResponse in) { 

    this.in = in;
    return this;
  }

  /**
   * Get in
   * @return in
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficUsageAverageSectionResponse getIn() {  
    return in;
  }



  public void setIn(VpsTrafficUsageAverageSectionResponse in) { 

    this.in = in;
  }

  public VpsTrafficUsageAverageResponse out(VpsTrafficUsageAverageSectionResponse out) { 

    this.out = out;
    return this;
  }

  /**
   * Get out
   * @return out
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficUsageAverageSectionResponse getOut() {  
    return out;
  }



  public void setOut(VpsTrafficUsageAverageSectionResponse out) { 

    this.out = out;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsTrafficUsageAverageResponse vpsTrafficUsageAverageResponse = (VpsTrafficUsageAverageResponse) o;
    return Objects.equals(this.in, vpsTrafficUsageAverageResponse.in) &&
        Objects.equals(this.out, vpsTrafficUsageAverageResponse.out);
  }

  @Override
  public int hashCode() {
    return Objects.hash(in, out);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsTrafficUsageAverageResponse {\n");
    
    sb.append("    in: ").append(toIndentedString(in)).append("\n");
    sb.append("    out: ").append(toIndentedString(out)).append("\n");
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

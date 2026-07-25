package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * QuickserverServiceExtra
 */
@Validated
@NotUndefined



public class QuickserverServiceExtra   {
  @JsonProperty("platform")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String platform = null;


  public QuickserverServiceExtra platform(String platform) { 

    this.platform = platform;
    return this;
  }

  /**
   * Platform information
   * @return platform
   **/
  
  @Schema(example = "kvm", description = "Platform information")
  
  public String getPlatform() {  
    return platform;
  }



  public void setPlatform(String platform) { 
    this.platform = platform;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QuickserverServiceExtra quickserverServiceExtra = (QuickserverServiceExtra) o;
    return Objects.equals(this.platform, quickserverServiceExtra.platform);
  }

  @Override
  public int hashCode() {
    return Objects.hash(platform);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverServiceExtra {\n");
    
    sb.append("    platform: ").append(toIndentedString(platform)).append("\n");
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

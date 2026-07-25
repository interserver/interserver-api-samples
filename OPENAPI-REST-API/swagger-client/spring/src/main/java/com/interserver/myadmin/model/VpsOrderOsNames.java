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
 * OS Names
 */
@Schema(description = "OS Names")
@Validated
@NotUndefined



public class VpsOrderOsNames   {
  @JsonProperty("opensuse")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String opensuse = null;

  @JsonProperty("ubuntu")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ubuntu = null;


  public VpsOrderOsNames opensuse(String opensuse) { 

    this.opensuse = opensuse;
    return this;
  }

  /**
   * Get opensuse
   * @return opensuse
   **/
  
  @Schema(example = "OpenSUSE", description = "")
  
  public String getOpensuse() {  
    return opensuse;
  }



  public void setOpensuse(String opensuse) { 
    this.opensuse = opensuse;
  }

  public VpsOrderOsNames ubuntu(String ubuntu) { 

    this.ubuntu = ubuntu;
    return this;
  }

  /**
   * Get ubuntu
   * @return ubuntu
   **/
  
  @Schema(example = "Ubuntu", description = "")
  
  public String getUbuntu() {  
    return ubuntu;
  }



  public void setUbuntu(String ubuntu) { 
    this.ubuntu = ubuntu;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsOrderOsNames vpsOrderOsNames = (VpsOrderOsNames) o;
    return Objects.equals(this.opensuse, vpsOrderOsNames.opensuse) &&
        Objects.equals(this.ubuntu, vpsOrderOsNames.ubuntu);
  }

  @Override
  public int hashCode() {
    return Objects.hash(opensuse, ubuntu);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderOsNames {\n");
    
    sb.append("    opensuse: ").append(toIndentedString(opensuse)).append("\n");
    sb.append("    ubuntu: ").append(toIndentedString(ubuntu)).append("\n");
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

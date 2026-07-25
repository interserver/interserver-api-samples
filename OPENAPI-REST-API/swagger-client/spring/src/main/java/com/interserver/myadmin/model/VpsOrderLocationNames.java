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
 * Location Names
 */
@Schema(description = "Location Names")
@Validated
@NotUndefined



public class VpsOrderLocationNames   {
  @JsonProperty("3")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _3 = null;


  public VpsOrderLocationNames _3(String _3) { 

    this._3 = _3;
    return this;
  }

  /**
   * Get _3
   * @return _3
   **/
  
  @Schema(example = "Equinix NY4", description = "")
  
  public String get3() {  
    return _3;
  }



  public void set3(String _3) { 
    this._3 = _3;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsOrderLocationNames vpsOrderLocationNames = (VpsOrderLocationNames) o;
    return Objects.equals(this._3, vpsOrderLocationNames._3);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_3);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderLocationNames {\n");
    
    sb.append("    _3: ").append(toIndentedString(_3)).append("\n");
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

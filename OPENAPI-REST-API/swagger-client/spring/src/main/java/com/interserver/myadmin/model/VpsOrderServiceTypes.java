package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsOrderServiceTypes32;
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
 * Service Types
 */
@Schema(description = "Service Types")
@Validated
@NotUndefined



public class VpsOrderServiceTypes   {
  @JsonProperty("32")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private VpsOrderServiceTypes32 _32 = null;


  public VpsOrderServiceTypes _32(VpsOrderServiceTypes32 _32) { 

    this._32 = _32;
    return this;
  }

  /**
   * Get _32
   * @return _32
   **/
  
  @Schema(description = "")
  
@Valid
  public VpsOrderServiceTypes32 get32() {  
    return _32;
  }



  public void set32(VpsOrderServiceTypes32 _32) { 
    this._32 = _32;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsOrderServiceTypes vpsOrderServiceTypes = (VpsOrderServiceTypes) o;
    return Objects.equals(this._32, vpsOrderServiceTypes._32);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_32);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderServiceTypes {\n");
    
    sb.append("    _32: ").append(toIndentedString(_32)).append("\n");
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

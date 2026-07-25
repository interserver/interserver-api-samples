package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsOrderLocationStock1;
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
 * Location Stock
 */
@Schema(description = "Location Stock")
@Validated
@NotUndefined



public class VpsOrderLocationStock   {
  @JsonProperty("1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private VpsOrderLocationStock1 _1 = null;


  public VpsOrderLocationStock _1(VpsOrderLocationStock1 _1) { 

    this._1 = _1;
    return this;
  }

  /**
   * Get _1
   * @return _1
   **/
  
  @Schema(description = "")
  
@Valid
  public VpsOrderLocationStock1 get1() {  
    return _1;
  }



  public void set1(VpsOrderLocationStock1 _1) { 
    this._1 = _1;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsOrderLocationStock vpsOrderLocationStock = (VpsOrderLocationStock) o;
    return Objects.equals(this._1, vpsOrderLocationStock._1);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_1);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderLocationStock {\n");
    
    sb.append("    _1: ").append(toIndentedString(_1)).append("\n");
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

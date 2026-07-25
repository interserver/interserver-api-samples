package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Package Costs
 */
@Schema(description = "Package Costs")
@Validated
@NotUndefined



public class VpsOrderPackageCosts   {
  @JsonProperty("57")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal _57 = null;


  public VpsOrderPackageCosts _57(BigDecimal _57) { 

    this._57 = _57;
    return this;
  }

  /**
   * Get _57
   * @return _57
   **/
  
  @Schema(example = "6", description = "")
  
@Valid
  public BigDecimal get57() {  
    return _57;
  }



  public void set57(BigDecimal _57) { 
    this._57 = _57;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsOrderPackageCosts vpsOrderPackageCosts = (VpsOrderPackageCosts) o;
    return Objects.equals(this._57, vpsOrderPackageCosts._57);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_57);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderPackageCosts {\n");
    
    sb.append("    _57: ").append(toIndentedString(_57)).append("\n");
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

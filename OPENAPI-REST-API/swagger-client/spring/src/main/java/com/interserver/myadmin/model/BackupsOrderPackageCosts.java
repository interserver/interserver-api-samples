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
 * BackupsOrderPackageCosts
 */
@Validated
@NotUndefined



public class BackupsOrderPackageCosts   {
  @JsonProperty("11006")

  private Integer _11006 = null;


  public BackupsOrderPackageCosts _11006(Integer _11006) { 

    this._11006 = _11006;
    return this;
  }

  /**
   * The cost associated with package 11006.
   * @return _11006
   **/
  
  @Schema(example = "84", required = true, description = "The cost associated with package 11006.")
  
  @NotNull
  public Integer get11006() {  
    return _11006;
  }



  public void set11006(Integer _11006) { 

    this._11006 = _11006;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BackupsOrderPackageCosts backupsOrderPackageCosts = (BackupsOrderPackageCosts) o;
    return Objects.equals(this._11006, backupsOrderPackageCosts._11006);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_11006);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupsOrderPackageCosts {\n");
    
    sb.append("    _11006: ").append(toIndentedString(_11006)).append("\n");
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

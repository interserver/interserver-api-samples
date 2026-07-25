package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.BackupsOrderServiceTypes;
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
 * BackupsOrderServiceTypes
 */
@Validated
@NotUndefined



public class BackupsOrderServiceTypes   {
  @JsonProperty("11006")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BackupsOrderServiceTypes _11006 = null;


  public BackupsOrderServiceTypes _11006(BackupsOrderServiceTypes _11006) { 

    this._11006 = _11006;
    return this;
  }

  /**
   * Get _11006
   * @return _11006
   **/
  
  @Schema(description = "")
  
@Valid
  public BackupsOrderServiceTypes get11006() {  
    return _11006;
  }



  public void set11006(BackupsOrderServiceTypes _11006) { 
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
    BackupsOrderServiceTypes backupsOrderServiceTypes = (BackupsOrderServiceTypes) o;
    return Objects.equals(this._11006, backupsOrderServiceTypes._11006);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_11006);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupsOrderServiceTypes {\n");
    
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

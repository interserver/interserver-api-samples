package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.QuickserverOrderServerDetails381;
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
 * Server details.
 */
@Schema(description = "Server details.")
@Validated
@NotUndefined



public class QuickserverOrderServerDetails   {
  @JsonProperty("381")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private QuickserverOrderServerDetails381 _381 = null;


  public QuickserverOrderServerDetails _381(QuickserverOrderServerDetails381 _381) { 

    this._381 = _381;
    return this;
  }

  /**
   * Get _381
   * @return _381
   **/
  
  @Schema(description = "")
  
@Valid
  public QuickserverOrderServerDetails381 get381() {  
    return _381;
  }



  public void set381(QuickserverOrderServerDetails381 _381) { 
    this._381 = _381;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QuickserverOrderServerDetails quickserverOrderServerDetails = (QuickserverOrderServerDetails) o;
    return Objects.equals(this._381, quickserverOrderServerDetails._381);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_381);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverOrderServerDetails {\n");
    
    sb.append("    _381: ").append(toIndentedString(_381)).append("\n");
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

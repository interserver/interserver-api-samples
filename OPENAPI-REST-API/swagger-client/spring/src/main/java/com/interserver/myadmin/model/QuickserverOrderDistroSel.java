package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.QuickserverOrderDistroSelUbuntu;
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
 * Distribution selection.
 */
@Schema(description = "Distribution selection.")
@Validated
@NotUndefined



public class QuickserverOrderDistroSel   {
  @JsonProperty("Ubuntu")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private QuickserverOrderDistroSelUbuntu ubuntu = null;


  public QuickserverOrderDistroSel ubuntu(QuickserverOrderDistroSelUbuntu ubuntu) { 

    this.ubuntu = ubuntu;
    return this;
  }

  /**
   * Get ubuntu
   * @return ubuntu
   **/
  
  @Schema(description = "")
  
@Valid
  public QuickserverOrderDistroSelUbuntu getUbuntu() {  
    return ubuntu;
  }



  public void setUbuntu(QuickserverOrderDistroSelUbuntu ubuntu) { 
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
    QuickserverOrderDistroSel quickserverOrderDistroSel = (QuickserverOrderDistroSel) o;
    return Objects.equals(this.ubuntu, quickserverOrderDistroSel.ubuntu);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ubuntu);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverOrderDistroSel {\n");
    
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

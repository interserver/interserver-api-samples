package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.LicensesOrderServiceTypes11482;
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
 * Types of license services
 */
@Schema(description = "Types of license services")
@Validated
@NotUndefined



public class LicensesOrderServiceTypes   {
  @JsonProperty("LicensesOrderServiceTypes11482")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private LicensesOrderServiceTypes11482 licensesOrderServiceTypes11482 = null;


  public LicensesOrderServiceTypes licensesOrderServiceTypes11482(LicensesOrderServiceTypes11482 licensesOrderServiceTypes11482) { 

    this.licensesOrderServiceTypes11482 = licensesOrderServiceTypes11482;
    return this;
  }

  /**
   * Get licensesOrderServiceTypes11482
   * @return licensesOrderServiceTypes11482
   **/
  
  @Schema(description = "")
  
@Valid
  public LicensesOrderServiceTypes11482 getLicensesOrderServiceTypes11482() {  
    return licensesOrderServiceTypes11482;
  }



  public void setLicensesOrderServiceTypes11482(LicensesOrderServiceTypes11482 licensesOrderServiceTypes11482) { 
    this.licensesOrderServiceTypes11482 = licensesOrderServiceTypes11482;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LicensesOrderServiceTypes licensesOrderServiceTypes = (LicensesOrderServiceTypes) o;
    return Objects.equals(this.licensesOrderServiceTypes11482, licensesOrderServiceTypes.licensesOrderServiceTypes11482);
  }

  @Override
  public int hashCode() {
    return Objects.hash(licensesOrderServiceTypes11482);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicensesOrderServiceTypes {\n");
    
    sb.append("    licensesOrderServiceTypes11482: ").append(toIndentedString(licensesOrderServiceTypes11482)).append("\n");
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

package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.LicensesOrderServiceCategories509;
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
 * License service categories
 */
@Schema(description = "License service categories")
@Validated
@NotUndefined



public class LicensesOrderServiceCategories   {
  @JsonProperty("LicensesOrderServiceCategories509")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private LicensesOrderServiceCategories509 licensesOrderServiceCategories509 = null;


  public LicensesOrderServiceCategories licensesOrderServiceCategories509(LicensesOrderServiceCategories509 licensesOrderServiceCategories509) { 

    this.licensesOrderServiceCategories509 = licensesOrderServiceCategories509;
    return this;
  }

  /**
   * Get licensesOrderServiceCategories509
   * @return licensesOrderServiceCategories509
   **/
  
  @Schema(description = "")
  
@Valid
  public LicensesOrderServiceCategories509 getLicensesOrderServiceCategories509() {  
    return licensesOrderServiceCategories509;
  }



  public void setLicensesOrderServiceCategories509(LicensesOrderServiceCategories509 licensesOrderServiceCategories509) { 
    this.licensesOrderServiceCategories509 = licensesOrderServiceCategories509;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LicensesOrderServiceCategories licensesOrderServiceCategories = (LicensesOrderServiceCategories) o;
    return Objects.equals(this.licensesOrderServiceCategories509, licensesOrderServiceCategories.licensesOrderServiceCategories509);
  }

  @Override
  public int hashCode() {
    return Objects.hash(licensesOrderServiceCategories509);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicensesOrderServiceCategories {\n");
    
    sb.append("    licensesOrderServiceCategories509: ").append(toIndentedString(licensesOrderServiceCategories509)).append("\n");
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

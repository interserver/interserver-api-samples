package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.LicensesOrderPackageCosts;
import com.interserver.myadmin.model.LicensesOrderServiceCategories;
import com.interserver.myadmin.model.LicensesOrderServiceTypes;
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
 * Available license packages and pricing for ordering a new software license.
 */
@Schema(description = "Available license packages and pricing for ordering a new software license.")
@Validated
@NotUndefined



public class LicensesOrder   {
  @JsonProperty("serviceCategories")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private LicensesOrderServiceCategories serviceCategories = null;

  @JsonProperty("packageCosts")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private LicensesOrderPackageCosts packageCosts = null;

  @JsonProperty("serviceTypes")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private LicensesOrderServiceTypes serviceTypes = null;


  public LicensesOrder serviceCategories(LicensesOrderServiceCategories serviceCategories) { 

    this.serviceCategories = serviceCategories;
    return this;
  }

  /**
   * Get serviceCategories
   * @return serviceCategories
   **/
  
  @Schema(description = "")
  
@Valid
  public LicensesOrderServiceCategories getServiceCategories() {  
    return serviceCategories;
  }



  public void setServiceCategories(LicensesOrderServiceCategories serviceCategories) { 
    this.serviceCategories = serviceCategories;
  }

  public LicensesOrder packageCosts(LicensesOrderPackageCosts packageCosts) { 

    this.packageCosts = packageCosts;
    return this;
  }

  /**
   * Get packageCosts
   * @return packageCosts
   **/
  
  @Schema(description = "")
  
@Valid
  public LicensesOrderPackageCosts getPackageCosts() {  
    return packageCosts;
  }



  public void setPackageCosts(LicensesOrderPackageCosts packageCosts) { 
    this.packageCosts = packageCosts;
  }

  public LicensesOrder serviceTypes(LicensesOrderServiceTypes serviceTypes) { 

    this.serviceTypes = serviceTypes;
    return this;
  }

  /**
   * Get serviceTypes
   * @return serviceTypes
   **/
  
  @Schema(description = "")
  
@Valid
  public LicensesOrderServiceTypes getServiceTypes() {  
    return serviceTypes;
  }



  public void setServiceTypes(LicensesOrderServiceTypes serviceTypes) { 
    this.serviceTypes = serviceTypes;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LicensesOrder licensesOrder = (LicensesOrder) o;
    return Objects.equals(this.serviceCategories, licensesOrder.serviceCategories) &&
        Objects.equals(this.packageCosts, licensesOrder.packageCosts) &&
        Objects.equals(this.serviceTypes, licensesOrder.serviceTypes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceCategories, packageCosts, serviceTypes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicensesOrder {\n");
    
    sb.append("    serviceCategories: ").append(toIndentedString(serviceCategories)).append("\n");
    sb.append("    packageCosts: ").append(toIndentedString(packageCosts)).append("\n");
    sb.append("    serviceTypes: ").append(toIndentedString(serviceTypes)).append("\n");
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

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
 * LicensesOrderServiceTypes11482
 */
@Validated
@NotUndefined



public class LicensesOrderServiceTypes11482   {
  @JsonProperty("services_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesId = null;

  @JsonProperty("services_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesName = null;

  @JsonProperty("services_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesCost = null;

  @JsonProperty("services_category")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesCategory = null;

  @JsonProperty("services_buyable")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesBuyable = null;

  @JsonProperty("services_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesType = null;

  @JsonProperty("services_field1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesField1 = null;

  @JsonProperty("services_field2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesField2 = null;

  @JsonProperty("services_module")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesModule = null;


  public LicensesOrderServiceTypes11482 servicesId(String servicesId) { 

    this.servicesId = servicesId;
    return this;
  }

  /**
   * Service ID
   * @return servicesId
   **/
  
  @Schema(example = "11482", description = "Service ID")
  
  public String getServicesId() {  
    return servicesId;
  }



  public void setServicesId(String servicesId) { 
    this.servicesId = servicesId;
  }

  public LicensesOrderServiceTypes11482 servicesName(String servicesName) { 

    this.servicesName = servicesName;
    return this;
  }

  /**
   * Service Name
   * @return servicesName
   **/
  
  @Schema(example = "DirectAdmin Standard", description = "Service Name")
  
  public String getServicesName() {  
    return servicesName;
  }



  public void setServicesName(String servicesName) { 
    this.servicesName = servicesName;
  }

  public LicensesOrderServiceTypes11482 servicesCost(String servicesCost) { 

    this.servicesCost = servicesCost;
    return this;
  }

  /**
   * Service Cost
   * @return servicesCost
   **/
  
  @Schema(example = "21.75", description = "Service Cost")
  
  public String getServicesCost() {  
    return servicesCost;
  }



  public void setServicesCost(String servicesCost) { 
    this.servicesCost = servicesCost;
  }

  public LicensesOrderServiceTypes11482 servicesCategory(String servicesCategory) { 

    this.servicesCategory = servicesCategory;
    return this;
  }

  /**
   * Service Category
   * @return servicesCategory
   **/
  
  @Schema(example = "506", description = "Service Category")
  
  public String getServicesCategory() {  
    return servicesCategory;
  }



  public void setServicesCategory(String servicesCategory) { 
    this.servicesCategory = servicesCategory;
  }

  public LicensesOrderServiceTypes11482 servicesBuyable(String servicesBuyable) { 

    this.servicesBuyable = servicesBuyable;
    return this;
  }

  /**
   * Buyable flag for Service
   * @return servicesBuyable
   **/
  
  @Schema(example = "1", description = "Buyable flag for Service")
  
  public String getServicesBuyable() {  
    return servicesBuyable;
  }



  public void setServicesBuyable(String servicesBuyable) { 
    this.servicesBuyable = servicesBuyable;
  }

  public LicensesOrderServiceTypes11482 servicesType(String servicesType) { 

    this.servicesType = servicesType;
    return this;
  }

  /**
   * Service Type
   * @return servicesType
   **/
  
  @Schema(example = "506", description = "Service Type")
  
  public String getServicesType() {  
    return servicesType;
  }



  public void setServicesType(String servicesType) { 
    this.servicesType = servicesType;
  }

  public LicensesOrderServiceTypes11482 servicesField1(String servicesField1) { 

    this.servicesField1 = servicesField1;
    return this;
  }

  /**
   * Field 1 of Service
   * @return servicesField1
   **/
  
  @Schema(example = "2704,Standard", description = "Field 1 of Service")
  
  public String getServicesField1() {  
    return servicesField1;
  }



  public void setServicesField1(String servicesField1) { 
    this.servicesField1 = servicesField1;
  }

  public LicensesOrderServiceTypes11482 servicesField2(String servicesField2) { 

    this.servicesField2 = servicesField2;
    return this;
  }

  /**
   * Field 2 of Service
   * @return servicesField2
   **/
  
  @Schema(example = "Unlimited Accounts & Domains<br><br>The DirectAdmin standard license is best for medium to large shared-hosting and/or reseller-hosting companies. No limit on accounts or domains.", description = "Field 2 of Service")
  
  public String getServicesField2() {  
    return servicesField2;
  }



  public void setServicesField2(String servicesField2) { 
    this.servicesField2 = servicesField2;
  }

  public LicensesOrderServiceTypes11482 servicesModule(String servicesModule) { 

    this.servicesModule = servicesModule;
    return this;
  }

  /**
   * Module of Service
   * @return servicesModule
   **/
  
  @Schema(example = "licenses", description = "Module of Service")
  
  public String getServicesModule() {  
    return servicesModule;
  }



  public void setServicesModule(String servicesModule) { 
    this.servicesModule = servicesModule;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LicensesOrderServiceTypes11482 licensesOrderServiceTypes11482 = (LicensesOrderServiceTypes11482) o;
    return Objects.equals(this.servicesId, licensesOrderServiceTypes11482.servicesId) &&
        Objects.equals(this.servicesName, licensesOrderServiceTypes11482.servicesName) &&
        Objects.equals(this.servicesCost, licensesOrderServiceTypes11482.servicesCost) &&
        Objects.equals(this.servicesCategory, licensesOrderServiceTypes11482.servicesCategory) &&
        Objects.equals(this.servicesBuyable, licensesOrderServiceTypes11482.servicesBuyable) &&
        Objects.equals(this.servicesType, licensesOrderServiceTypes11482.servicesType) &&
        Objects.equals(this.servicesField1, licensesOrderServiceTypes11482.servicesField1) &&
        Objects.equals(this.servicesField2, licensesOrderServiceTypes11482.servicesField2) &&
        Objects.equals(this.servicesModule, licensesOrderServiceTypes11482.servicesModule);
  }

  @Override
  public int hashCode() {
    return Objects.hash(servicesId, servicesName, servicesCost, servicesCategory, servicesBuyable, servicesType, servicesField1, servicesField2, servicesModule);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicensesOrderServiceTypes11482 {\n");
    
    sb.append("    servicesId: ").append(toIndentedString(servicesId)).append("\n");
    sb.append("    servicesName: ").append(toIndentedString(servicesName)).append("\n");
    sb.append("    servicesCost: ").append(toIndentedString(servicesCost)).append("\n");
    sb.append("    servicesCategory: ").append(toIndentedString(servicesCategory)).append("\n");
    sb.append("    servicesBuyable: ").append(toIndentedString(servicesBuyable)).append("\n");
    sb.append("    servicesType: ").append(toIndentedString(servicesType)).append("\n");
    sb.append("    servicesField1: ").append(toIndentedString(servicesField1)).append("\n");
    sb.append("    servicesField2: ").append(toIndentedString(servicesField2)).append("\n");
    sb.append("    servicesModule: ").append(toIndentedString(servicesModule)).append("\n");
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

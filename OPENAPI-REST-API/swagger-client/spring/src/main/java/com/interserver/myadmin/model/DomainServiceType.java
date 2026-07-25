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
 * Service type definition for a domain registration, including name, pricing, and category.
 */
@Schema(description = "Service type definition for a domain registration, including name, pricing, and category.")
@Validated
@NotUndefined



public class DomainServiceType   {
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


  public DomainServiceType servicesId(String servicesId) { 

    this.servicesId = servicesId;
    return this;
  }

  /**
   * Service type ID.
   * @return servicesId
   **/
  
  @Schema(description = "Service type ID.")
  
  public String getServicesId() {  
    return servicesId;
  }



  public void setServicesId(String servicesId) { 
    this.servicesId = servicesId;
  }

  public DomainServiceType servicesName(String servicesName) { 

    this.servicesName = servicesName;
    return this;
  }

  /**
   * Service type name (e.g., .com Registration).
   * @return servicesName
   **/
  
  @Schema(description = "Service type name (e.g., .com Registration).")
  
  public String getServicesName() {  
    return servicesName;
  }



  public void setServicesName(String servicesName) { 
    this.servicesName = servicesName;
  }

  public DomainServiceType servicesCost(String servicesCost) { 

    this.servicesCost = servicesCost;
    return this;
  }

  /**
   * Service cost per billing period.
   * @return servicesCost
   **/
  
  @Schema(description = "Service cost per billing period.")
  
  public String getServicesCost() {  
    return servicesCost;
  }



  public void setServicesCost(String servicesCost) { 
    this.servicesCost = servicesCost;
  }

  public DomainServiceType servicesCategory(String servicesCategory) { 

    this.servicesCategory = servicesCategory;
    return this;
  }

  /**
   * Service category ID.
   * @return servicesCategory
   **/
  
  @Schema(description = "Service category ID.")
  
  public String getServicesCategory() {  
    return servicesCategory;
  }



  public void setServicesCategory(String servicesCategory) { 
    this.servicesCategory = servicesCategory;
  }

  public DomainServiceType servicesBuyable(String servicesBuyable) { 

    this.servicesBuyable = servicesBuyable;
    return this;
  }

  /**
   * Whether this service type is available for purchase.
   * @return servicesBuyable
   **/
  
  @Schema(description = "Whether this service type is available for purchase.")
  
  public String getServicesBuyable() {  
    return servicesBuyable;
  }



  public void setServicesBuyable(String servicesBuyable) { 
    this.servicesBuyable = servicesBuyable;
  }

  public DomainServiceType servicesType(String servicesType) { 

    this.servicesType = servicesType;
    return this;
  }

  /**
   * Internal service type identifier.
   * @return servicesType
   **/
  
  @Schema(description = "Internal service type identifier.")
  
  public String getServicesType() {  
    return servicesType;
  }



  public void setServicesType(String servicesType) { 
    this.servicesType = servicesType;
  }

  public DomainServiceType servicesField1(String servicesField1) { 

    this.servicesField1 = servicesField1;
    return this;
  }

  /**
   * TLD or first configurable field for the service type.
   * @return servicesField1
   **/
  
  @Schema(description = "TLD or first configurable field for the service type.")
  
  public String getServicesField1() {  
    return servicesField1;
  }



  public void setServicesField1(String servicesField1) { 
    this.servicesField1 = servicesField1;
  }

  public DomainServiceType servicesField2(String servicesField2) { 

    this.servicesField2 = servicesField2;
    return this;
  }

  /**
   * Second configurable field for the service type.
   * @return servicesField2
   **/
  
  @Schema(description = "Second configurable field for the service type.")
  
  public String getServicesField2() {  
    return servicesField2;
  }



  public void setServicesField2(String servicesField2) { 
    this.servicesField2 = servicesField2;
  }

  public DomainServiceType servicesModule(String servicesModule) { 

    this.servicesModule = servicesModule;
    return this;
  }

  /**
   * Backend module handling this service type.
   * @return servicesModule
   **/
  
  @Schema(description = "Backend module handling this service type.")
  
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
    DomainServiceType domainServiceType = (DomainServiceType) o;
    return Objects.equals(this.servicesId, domainServiceType.servicesId) &&
        Objects.equals(this.servicesName, domainServiceType.servicesName) &&
        Objects.equals(this.servicesCost, domainServiceType.servicesCost) &&
        Objects.equals(this.servicesCategory, domainServiceType.servicesCategory) &&
        Objects.equals(this.servicesBuyable, domainServiceType.servicesBuyable) &&
        Objects.equals(this.servicesType, domainServiceType.servicesType) &&
        Objects.equals(this.servicesField1, domainServiceType.servicesField1) &&
        Objects.equals(this.servicesField2, domainServiceType.servicesField2) &&
        Objects.equals(this.servicesModule, domainServiceType.servicesModule);
  }

  @Override
  public int hashCode() {
    return Objects.hash(servicesId, servicesName, servicesCost, servicesCategory, servicesBuyable, servicesType, servicesField1, servicesField2, servicesModule);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainServiceType {\n");
    
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

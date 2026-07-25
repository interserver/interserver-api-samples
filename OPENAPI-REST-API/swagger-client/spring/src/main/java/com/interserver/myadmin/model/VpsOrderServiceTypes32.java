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
 * VpsOrderServiceTypes32
 */
@Validated
@NotUndefined



public class VpsOrderServiceTypes32   {
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


  public VpsOrderServiceTypes32 servicesId(String servicesId) { 

    this.servicesId = servicesId;
    return this;
  }

  /**
   * Get servicesId
   * @return servicesId
   **/
  
  @Schema(example = "32", description = "")
  
  public String getServicesId() {  
    return servicesId;
  }



  public void setServicesId(String servicesId) { 
    this.servicesId = servicesId;
  }

  public VpsOrderServiceTypes32 servicesName(String servicesName) { 

    this.servicesName = servicesName;
    return this;
  }

  /**
   * Get servicesName
   * @return servicesName
   **/
  
  @Schema(example = "KVM Windows VPS Slice", description = "")
  
  public String getServicesName() {  
    return servicesName;
  }



  public void setServicesName(String servicesName) { 
    this.servicesName = servicesName;
  }

  public VpsOrderServiceTypes32 servicesCost(String servicesCost) { 

    this.servicesCost = servicesCost;
    return this;
  }

  /**
   * Get servicesCost
   * @return servicesCost
   **/
  
  @Schema(example = "10.00", description = "")
  
  public String getServicesCost() {  
    return servicesCost;
  }



  public void setServicesCost(String servicesCost) { 
    this.servicesCost = servicesCost;
  }

  public VpsOrderServiceTypes32 servicesCategory(String servicesCategory) { 

    this.servicesCategory = servicesCategory;
    return this;
  }

  /**
   * Get servicesCategory
   * @return servicesCategory
   **/
  
  @Schema(example = "2", description = "")
  
  public String getServicesCategory() {  
    return servicesCategory;
  }



  public void setServicesCategory(String servicesCategory) { 
    this.servicesCategory = servicesCategory;
  }

  public VpsOrderServiceTypes32 servicesBuyable(String servicesBuyable) { 

    this.servicesBuyable = servicesBuyable;
    return this;
  }

  /**
   * Get servicesBuyable
   * @return servicesBuyable
   **/
  
  @Schema(example = "1", description = "")
  
  public String getServicesBuyable() {  
    return servicesBuyable;
  }



  public void setServicesBuyable(String servicesBuyable) { 
    this.servicesBuyable = servicesBuyable;
  }

  public VpsOrderServiceTypes32 servicesType(String servicesType) { 

    this.servicesType = servicesType;
    return this;
  }

  /**
   * Get servicesType
   * @return servicesType
   **/
  
  @Schema(example = "1", description = "")
  
  public String getServicesType() {  
    return servicesType;
  }



  public void setServicesType(String servicesType) { 
    this.servicesType = servicesType;
  }

  public VpsOrderServiceTypes32 servicesField1(String servicesField1) { 

    this.servicesField1 = servicesField1;
    return this;
  }

  /**
   * Get servicesField1
   * @return servicesField1
   **/
  
  @Schema(example = "slice", description = "")
  
  public String getServicesField1() {  
    return servicesField1;
  }



  public void setServicesField1(String servicesField1) { 
    this.servicesField1 = servicesField1;
  }

  public VpsOrderServiceTypes32 servicesField2(String servicesField2) { 

    this.servicesField2 = servicesField2;
    return this;
  }

  /**
   * Get servicesField2
   * @return servicesField2
   **/
  
  @Schema(description = "")
  
  public String getServicesField2() {  
    return servicesField2;
  }



  public void setServicesField2(String servicesField2) { 
    this.servicesField2 = servicesField2;
  }

  public VpsOrderServiceTypes32 servicesModule(String servicesModule) { 

    this.servicesModule = servicesModule;
    return this;
  }

  /**
   * Get servicesModule
   * @return servicesModule
   **/
  
  @Schema(example = "vps", description = "")
  
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
    VpsOrderServiceTypes32 vpsOrderServiceTypes32 = (VpsOrderServiceTypes32) o;
    return Objects.equals(this.servicesId, vpsOrderServiceTypes32.servicesId) &&
        Objects.equals(this.servicesName, vpsOrderServiceTypes32.servicesName) &&
        Objects.equals(this.servicesCost, vpsOrderServiceTypes32.servicesCost) &&
        Objects.equals(this.servicesCategory, vpsOrderServiceTypes32.servicesCategory) &&
        Objects.equals(this.servicesBuyable, vpsOrderServiceTypes32.servicesBuyable) &&
        Objects.equals(this.servicesType, vpsOrderServiceTypes32.servicesType) &&
        Objects.equals(this.servicesField1, vpsOrderServiceTypes32.servicesField1) &&
        Objects.equals(this.servicesField2, vpsOrderServiceTypes32.servicesField2) &&
        Objects.equals(this.servicesModule, vpsOrderServiceTypes32.servicesModule);
  }

  @Override
  public int hashCode() {
    return Objects.hash(servicesId, servicesName, servicesCost, servicesCategory, servicesBuyable, servicesType, servicesField1, servicesField2, servicesModule);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderServiceTypes32 {\n");
    
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

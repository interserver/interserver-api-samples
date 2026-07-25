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
 * Service type definition for a mail service, including name, pricing, and category.
 */
@Schema(description = "Service type definition for a mail service, including name, pricing, and category.")
@Validated
@NotUndefined



public class MailServiceType   {
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


  public MailServiceType servicesId(String servicesId) { 

    this.servicesId = servicesId;
    return this;
  }

  /**
   * The ID of the service type.
   * @return servicesId
   **/
  
  @Schema(example = "10880", description = "The ID of the service type.")
  
  public String getServicesId() {  
    return servicesId;
  }



  public void setServicesId(String servicesId) { 
    this.servicesId = servicesId;
  }

  public MailServiceType servicesName(String servicesName) { 

    this.servicesName = servicesName;
    return this;
  }

  /**
   * The name of the service type.
   * @return servicesName
   **/
  
  @Schema(example = "MailBaby Mail", description = "The name of the service type.")
  
  public String getServicesName() {  
    return servicesName;
  }



  public void setServicesName(String servicesName) { 
    this.servicesName = servicesName;
  }

  public MailServiceType servicesCost(String servicesCost) { 

    this.servicesCost = servicesCost;
    return this;
  }

  /**
   * The cost of the service type.
   * @return servicesCost
   **/
  
  @Schema(example = "1.00", description = "The cost of the service type.")
  
  public String getServicesCost() {  
    return servicesCost;
  }



  public void setServicesCost(String servicesCost) { 
    this.servicesCost = servicesCost;
  }

  public MailServiceType servicesCategory(String servicesCategory) { 

    this.servicesCategory = servicesCategory;
    return this;
  }

  /**
   * The category of the service type.
   * @return servicesCategory
   **/
  
  @Schema(example = "800", description = "The category of the service type.")
  
  public String getServicesCategory() {  
    return servicesCategory;
  }



  public void setServicesCategory(String servicesCategory) { 
    this.servicesCategory = servicesCategory;
  }

  public MailServiceType servicesBuyable(String servicesBuyable) { 

    this.servicesBuyable = servicesBuyable;
    return this;
  }

  /**
   * Whether the service type is buyable.
   * @return servicesBuyable
   **/
  
  @Schema(example = "1", description = "Whether the service type is buyable.")
  
  public String getServicesBuyable() {  
    return servicesBuyable;
  }



  public void setServicesBuyable(String servicesBuyable) { 
    this.servicesBuyable = servicesBuyable;
  }

  public MailServiceType servicesType(String servicesType) { 

    this.servicesType = servicesType;
    return this;
  }

  /**
   * The type of the service type.
   * @return servicesType
   **/
  
  @Schema(example = "800", description = "The type of the service type.")
  
  public String getServicesType() {  
    return servicesType;
  }



  public void setServicesType(String servicesType) { 
    this.servicesType = servicesType;
  }

  public MailServiceType servicesField1(String servicesField1) { 

    this.servicesField1 = servicesField1;
    return this;
  }

  /**
   * Additional field for the service type.
   * @return servicesField1
   **/
  
  @Schema(description = "Additional field for the service type.")
  
  public String getServicesField1() {  
    return servicesField1;
  }



  public void setServicesField1(String servicesField1) { 
    this.servicesField1 = servicesField1;
  }

  public MailServiceType servicesField2(String servicesField2) { 

    this.servicesField2 = servicesField2;
    return this;
  }

  /**
   * Additional field for the service type.
   * @return servicesField2
   **/
  
  @Schema(description = "Additional field for the service type.")
  
  public String getServicesField2() {  
    return servicesField2;
  }



  public void setServicesField2(String servicesField2) { 
    this.servicesField2 = servicesField2;
  }

  public MailServiceType servicesModule(String servicesModule) { 

    this.servicesModule = servicesModule;
    return this;
  }

  /**
   * The module of the service type.
   * @return servicesModule
   **/
  
  @Schema(example = "mail", description = "The module of the service type.")
  
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
    MailServiceType mailServiceType = (MailServiceType) o;
    return Objects.equals(this.servicesId, mailServiceType.servicesId) &&
        Objects.equals(this.servicesName, mailServiceType.servicesName) &&
        Objects.equals(this.servicesCost, mailServiceType.servicesCost) &&
        Objects.equals(this.servicesCategory, mailServiceType.servicesCategory) &&
        Objects.equals(this.servicesBuyable, mailServiceType.servicesBuyable) &&
        Objects.equals(this.servicesType, mailServiceType.servicesType) &&
        Objects.equals(this.servicesField1, mailServiceType.servicesField1) &&
        Objects.equals(this.servicesField2, mailServiceType.servicesField2) &&
        Objects.equals(this.servicesModule, mailServiceType.servicesModule);
  }

  @Override
  public int hashCode() {
    return Objects.hash(servicesId, servicesName, servicesCost, servicesCategory, servicesBuyable, servicesType, servicesField1, servicesField2, servicesModule);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailServiceType {\n");
    
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

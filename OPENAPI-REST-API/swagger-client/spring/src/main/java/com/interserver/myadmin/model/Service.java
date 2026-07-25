package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * An individual package tied to one of our services.
 */
@Schema(description = "An individual package tied to one of our services.")
@Validated
@NotUndefined



public class Service   {
  @JsonProperty("services_id")

  private Integer servicesId = null;

  @JsonProperty("services_name")

  private String servicesName = null;

  @JsonProperty("services_cost")

  private BigDecimal servicesCost = null;

  @JsonProperty("services_currency")

  private String servicesCurrency = null;

  @JsonProperty("services_category")

  private Integer servicesCategory = null;

  @JsonProperty("services_buyable")

  private Boolean servicesBuyable = null;

  @JsonProperty("services_type")

  private Integer servicesType = null;

  @JsonProperty("services_field1")

  private String servicesField1 = null;

  @JsonProperty("services_field2")

  private String servicesField2 = null;

  @JsonProperty("services_module")

  private String servicesModule = null;


  public Service servicesId(Integer servicesId) { 

    this.servicesId = servicesId;
    return this;
  }

  /**
   * Get servicesId
   * @return servicesId
   **/
  
  @Schema(example = "31", required = true, description = "")
  
  @NotNull
  public Integer getServicesId() {  
    return servicesId;
  }



  public void setServicesId(Integer servicesId) { 

    this.servicesId = servicesId;
  }

  public Service servicesName(String servicesName) { 

    this.servicesName = servicesName;
    return this;
  }

  /**
   * Get servicesName
   * @return servicesName
   **/
  
  @Schema(example = "OpenVZ VPS Slice", required = true, description = "")
  
  @NotNull
  public String getServicesName() {  
    return servicesName;
  }



  public void setServicesName(String servicesName) { 

    this.servicesName = servicesName;
  }

  public Service servicesCost(BigDecimal servicesCost) { 

    this.servicesCost = servicesCost;
    return this;
  }

  /**
   * Get servicesCost
   * @return servicesCost
   **/
  
  @Schema(example = "6", required = true, description = "")
  
@Valid
  @NotNull
  public BigDecimal getServicesCost() {  
    return servicesCost;
  }



  public void setServicesCost(BigDecimal servicesCost) { 

    this.servicesCost = servicesCost;
  }

  public Service servicesCurrency(String servicesCurrency) { 

    this.servicesCurrency = servicesCurrency;
    return this;
  }

  /**
   * Get servicesCurrency
   * @return servicesCurrency
   **/
  
  @Schema(example = "USD", required = true, description = "")
  
  @NotNull
  public String getServicesCurrency() {  
    return servicesCurrency;
  }



  public void setServicesCurrency(String servicesCurrency) { 

    this.servicesCurrency = servicesCurrency;
  }

  public Service servicesCategory(Integer servicesCategory) { 

    this.servicesCategory = servicesCategory;
    return this;
  }

  /**
   * Get servicesCategory
   * @return servicesCategory
   **/
  
  @Schema(example = "1", required = true, description = "")
  
  @NotNull
  public Integer getServicesCategory() {  
    return servicesCategory;
  }



  public void setServicesCategory(Integer servicesCategory) { 

    this.servicesCategory = servicesCategory;
  }

  public Service servicesBuyable(Boolean servicesBuyable) { 

    this.servicesBuyable = servicesBuyable;
    return this;
  }

  /**
   * Get servicesBuyable
   * @return servicesBuyable
   **/
  
  @Schema(example = "true", required = true, description = "")
  
  @NotNull
  public Boolean isServicesBuyable() {  
    return servicesBuyable;
  }



  public void setServicesBuyable(Boolean servicesBuyable) { 

    this.servicesBuyable = servicesBuyable;
  }

  public Service servicesType(Integer servicesType) { 

    this.servicesType = servicesType;
    return this;
  }

  /**
   * Get servicesType
   * @return servicesType
   **/
  
  @Schema(example = "6", required = true, description = "")
  
  @NotNull
  public Integer getServicesType() {  
    return servicesType;
  }



  public void setServicesType(Integer servicesType) { 

    this.servicesType = servicesType;
  }

  public Service servicesField1(String servicesField1) { 

    this.servicesField1 = servicesField1;
    return this;
  }

  /**
   * Get servicesField1
   * @return servicesField1
   **/
  
  @Schema(example = "slice", required = true, description = "")
  
  @NotNull
  public String getServicesField1() {  
    return servicesField1;
  }



  public void setServicesField1(String servicesField1) { 

    this.servicesField1 = servicesField1;
  }

  public Service servicesField2(String servicesField2) { 

    this.servicesField2 = servicesField2;
    return this;
  }

  /**
   * Get servicesField2
   * @return servicesField2
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getServicesField2() {  
    return servicesField2;
  }



  public void setServicesField2(String servicesField2) { 

    this.servicesField2 = servicesField2;
  }

  public Service servicesModule(String servicesModule) { 

    this.servicesModule = servicesModule;
    return this;
  }

  /**
   * Get servicesModule
   * @return servicesModule
   **/
  
  @Schema(example = "vps", required = true, description = "")
  
  @NotNull
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
    Service service = (Service) o;
    return Objects.equals(this.servicesId, service.servicesId) &&
        Objects.equals(this.servicesName, service.servicesName) &&
        Objects.equals(this.servicesCost, service.servicesCost) &&
        Objects.equals(this.servicesCurrency, service.servicesCurrency) &&
        Objects.equals(this.servicesCategory, service.servicesCategory) &&
        Objects.equals(this.servicesBuyable, service.servicesBuyable) &&
        Objects.equals(this.servicesType, service.servicesType) &&
        Objects.equals(this.servicesField1, service.servicesField1) &&
        Objects.equals(this.servicesField2, service.servicesField2) &&
        Objects.equals(this.servicesModule, service.servicesModule);
  }

  @Override
  public int hashCode() {
    return Objects.hash(servicesId, servicesName, servicesCost, servicesCurrency, servicesCategory, servicesBuyable, servicesType, servicesField1, servicesField2, servicesModule);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Service {\n");
    
    sb.append("    servicesId: ").append(toIndentedString(servicesId)).append("\n");
    sb.append("    servicesName: ").append(toIndentedString(servicesName)).append("\n");
    sb.append("    servicesCost: ").append(toIndentedString(servicesCost)).append("\n");
    sb.append("    servicesCurrency: ").append(toIndentedString(servicesCurrency)).append("\n");
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

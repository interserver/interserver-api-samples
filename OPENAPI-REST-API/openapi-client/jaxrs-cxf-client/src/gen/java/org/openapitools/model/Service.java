package org.openapitools.model;

import java.math.BigDecimal;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * An individual package tied to one of our services.
 */
@ApiModel(description="An individual package tied to one of our services.")

public class Service  {
  
  @ApiModelProperty(example = "31", required = true, value = "")

  private Integer servicesId;

  @ApiModelProperty(example = "OpenVZ VPS Slice", required = true, value = "")

  private String servicesName;

  @ApiModelProperty(example = "6", required = true, value = "")

  private BigDecimal servicesCost;

  @ApiModelProperty(example = "USD", required = true, value = "")

  private String servicesCurrency;

  @ApiModelProperty(example = "1", required = true, value = "")

  private Integer servicesCategory;

  @ApiModelProperty(example = "true", required = true, value = "")

  private Boolean servicesBuyable;

  @ApiModelProperty(example = "6", required = true, value = "")

  private Integer servicesType;

  @ApiModelProperty(example = "slice", required = true, value = "")

  private String servicesField1;

  @ApiModelProperty(required = true, value = "")

  private String servicesField2;

  @ApiModelProperty(example = "vps", required = true, value = "")

  private String servicesModule;
 /**
   * Get servicesId
   * @return servicesId
  **/
  @JsonProperty("services_id")
  public Integer getServicesId() {
    return servicesId;
  }

  public void setServicesId(Integer servicesId) {
    this.servicesId = servicesId;
  }

  public Service servicesId(Integer servicesId) {
    this.servicesId = servicesId;
    return this;
  }

 /**
   * Get servicesName
   * @return servicesName
  **/
  @JsonProperty("services_name")
  public String getServicesName() {
    return servicesName;
  }

  public void setServicesName(String servicesName) {
    this.servicesName = servicesName;
  }

  public Service servicesName(String servicesName) {
    this.servicesName = servicesName;
    return this;
  }

 /**
   * Get servicesCost
   * @return servicesCost
  **/
  @JsonProperty("services_cost")
  public BigDecimal getServicesCost() {
    return servicesCost;
  }

  public void setServicesCost(BigDecimal servicesCost) {
    this.servicesCost = servicesCost;
  }

  public Service servicesCost(BigDecimal servicesCost) {
    this.servicesCost = servicesCost;
    return this;
  }

 /**
   * Get servicesCurrency
   * @return servicesCurrency
  **/
  @JsonProperty("services_currency")
  public String getServicesCurrency() {
    return servicesCurrency;
  }

  public void setServicesCurrency(String servicesCurrency) {
    this.servicesCurrency = servicesCurrency;
  }

  public Service servicesCurrency(String servicesCurrency) {
    this.servicesCurrency = servicesCurrency;
    return this;
  }

 /**
   * Get servicesCategory
   * @return servicesCategory
  **/
  @JsonProperty("services_category")
  public Integer getServicesCategory() {
    return servicesCategory;
  }

  public void setServicesCategory(Integer servicesCategory) {
    this.servicesCategory = servicesCategory;
  }

  public Service servicesCategory(Integer servicesCategory) {
    this.servicesCategory = servicesCategory;
    return this;
  }

 /**
   * Get servicesBuyable
   * @return servicesBuyable
  **/
  @JsonProperty("services_buyable")
  public Boolean isServicesBuyable() {
    return servicesBuyable;
  }

  public void setServicesBuyable(Boolean servicesBuyable) {
    this.servicesBuyable = servicesBuyable;
  }

  public Service servicesBuyable(Boolean servicesBuyable) {
    this.servicesBuyable = servicesBuyable;
    return this;
  }

 /**
   * Get servicesType
   * @return servicesType
  **/
  @JsonProperty("services_type")
  public Integer getServicesType() {
    return servicesType;
  }

  public void setServicesType(Integer servicesType) {
    this.servicesType = servicesType;
  }

  public Service servicesType(Integer servicesType) {
    this.servicesType = servicesType;
    return this;
  }

 /**
   * Get servicesField1
   * @return servicesField1
  **/
  @JsonProperty("services_field1")
  public String getServicesField1() {
    return servicesField1;
  }

  public void setServicesField1(String servicesField1) {
    this.servicesField1 = servicesField1;
  }

  public Service servicesField1(String servicesField1) {
    this.servicesField1 = servicesField1;
    return this;
  }

 /**
   * Get servicesField2
   * @return servicesField2
  **/
  @JsonProperty("services_field2")
  public String getServicesField2() {
    return servicesField2;
  }

  public void setServicesField2(String servicesField2) {
    this.servicesField2 = servicesField2;
  }

  public Service servicesField2(String servicesField2) {
    this.servicesField2 = servicesField2;
    return this;
  }

 /**
   * Get servicesModule
   * @return servicesModule
  **/
  @JsonProperty("services_module")
  public String getServicesModule() {
    return servicesModule;
  }

  public void setServicesModule(String servicesModule) {
    this.servicesModule = servicesModule;
  }

  public Service servicesModule(String servicesModule) {
    this.servicesModule = servicesModule;
    return this;
  }

  @Override
  public boolean equals(Object o) {
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}


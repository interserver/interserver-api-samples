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
 * WebsitesOrderJsonServiceOffersItem
 */
@Validated
@NotUndefined



public class WebsitesOrderJsonServiceOffersItem   {
  @JsonProperty("service_offer_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceOfferId = null;

  @JsonProperty("service_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceId = null;

  @JsonProperty("intro_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer introCost = null;

  @JsonProperty("renewal_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer renewalCost = null;

  @JsonProperty("intro_frequency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String introFrequency = null;

  @JsonProperty("renewal_frequency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String renewalFrequency = null;

  @JsonProperty("allow_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String allowCoupon = null;

  @JsonProperty("service_module")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceModule = null;

  @JsonProperty("created_at")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String createdAt = null;

  @JsonProperty("updated_at")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String updatedAt = null;

  @JsonProperty("deleted_at")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String deletedAt = null;

  @JsonProperty("currencySymbol")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String currencySymbol = null;


  public WebsitesOrderJsonServiceOffersItem serviceOfferId(String serviceOfferId) { 

    this.serviceOfferId = serviceOfferId;
    return this;
  }

  /**
   * Service offer ID
   * @return serviceOfferId
   **/
  
  @Schema(example = "136", description = "Service offer ID")
  
  public String getServiceOfferId() {  
    return serviceOfferId;
  }



  public void setServiceOfferId(String serviceOfferId) { 
    this.serviceOfferId = serviceOfferId;
  }

  public WebsitesOrderJsonServiceOffersItem serviceId(String serviceId) { 

    this.serviceId = serviceId;
    return this;
  }

  /**
   * Service ID
   * @return serviceId
   **/
  
  @Schema(example = "1026", description = "Service ID")
  
  public String getServiceId() {  
    return serviceId;
  }



  public void setServiceId(String serviceId) { 
    this.serviceId = serviceId;
  }

  public WebsitesOrderJsonServiceOffersItem introCost(Integer introCost) { 

    this.introCost = introCost;
    return this;
  }

  /**
   * Introductory cost
   * @return introCost
   **/
  
  @Schema(example = "96", description = "Introductory cost")
  
  public Integer getIntroCost() {  
    return introCost;
  }



  public void setIntroCost(Integer introCost) { 
    this.introCost = introCost;
  }

  public WebsitesOrderJsonServiceOffersItem renewalCost(Integer renewalCost) { 

    this.renewalCost = renewalCost;
    return this;
  }

  /**
   * Renewal cost
   * @return renewalCost
   **/
  
  @Schema(example = "96", description = "Renewal cost")
  
  public Integer getRenewalCost() {  
    return renewalCost;
  }



  public void setRenewalCost(Integer renewalCost) { 
    this.renewalCost = renewalCost;
  }

  public WebsitesOrderJsonServiceOffersItem introFrequency(String introFrequency) { 

    this.introFrequency = introFrequency;
    return this;
  }

  /**
   * Introductory frequency
   * @return introFrequency
   **/
  
  @Schema(example = "12", description = "Introductory frequency")
  
  public String getIntroFrequency() {  
    return introFrequency;
  }



  public void setIntroFrequency(String introFrequency) { 
    this.introFrequency = introFrequency;
  }

  public WebsitesOrderJsonServiceOffersItem renewalFrequency(String renewalFrequency) { 

    this.renewalFrequency = renewalFrequency;
    return this;
  }

  /**
   * Renewal frequency
   * @return renewalFrequency
   **/
  
  @Schema(example = "12", description = "Renewal frequency")
  
  public String getRenewalFrequency() {  
    return renewalFrequency;
  }



  public void setRenewalFrequency(String renewalFrequency) { 
    this.renewalFrequency = renewalFrequency;
  }

  public WebsitesOrderJsonServiceOffersItem allowCoupon(String allowCoupon) { 

    this.allowCoupon = allowCoupon;
    return this;
  }

  /**
   * Allow coupon
   * @return allowCoupon
   **/
  
  @Schema(example = "1", description = "Allow coupon")
  
  public String getAllowCoupon() {  
    return allowCoupon;
  }



  public void setAllowCoupon(String allowCoupon) { 
    this.allowCoupon = allowCoupon;
  }

  public WebsitesOrderJsonServiceOffersItem serviceModule(String serviceModule) { 

    this.serviceModule = serviceModule;
    return this;
  }

  /**
   * Service module
   * @return serviceModule
   **/
  
  @Schema(example = "webhosting", description = "Service module")
  
  public String getServiceModule() {  
    return serviceModule;
  }



  public void setServiceModule(String serviceModule) { 
    this.serviceModule = serviceModule;
  }

  public WebsitesOrderJsonServiceOffersItem createdAt(String createdAt) { 

    this.createdAt = createdAt;
    return this;
  }

  /**
   * Creation date
   * @return createdAt
   **/
  
  @Schema(example = "2023-01-25T14:50:55.000Z", description = "Creation date")
  
  public String getCreatedAt() {  
    return createdAt;
  }



  public void setCreatedAt(String createdAt) { 
    this.createdAt = createdAt;
  }

  public WebsitesOrderJsonServiceOffersItem updatedAt(String updatedAt) { 

    this.updatedAt = updatedAt;
    return this;
  }

  /**
   * Update date
   * @return updatedAt
   **/
  
  @Schema(description = "Update date")
  
  public String getUpdatedAt() {  
    return updatedAt;
  }



  public void setUpdatedAt(String updatedAt) { 
    this.updatedAt = updatedAt;
  }

  public WebsitesOrderJsonServiceOffersItem deletedAt(String deletedAt) { 

    this.deletedAt = deletedAt;
    return this;
  }

  /**
   * Deletion date
   * @return deletedAt
   **/
  
  @Schema(description = "Deletion date")
  
  public String getDeletedAt() {  
    return deletedAt;
  }



  public void setDeletedAt(String deletedAt) { 
    this.deletedAt = deletedAt;
  }

  public WebsitesOrderJsonServiceOffersItem currencySymbol(String currencySymbol) { 

    this.currencySymbol = currencySymbol;
    return this;
  }

  /**
   * Currency symbol
   * @return currencySymbol
   **/
  
  @Schema(example = "$", description = "Currency symbol")
  
  public String getCurrencySymbol() {  
    return currencySymbol;
  }



  public void setCurrencySymbol(String currencySymbol) { 
    this.currencySymbol = currencySymbol;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WebsitesOrderJsonServiceOffersItem websitesOrderJsonServiceOffersItem = (WebsitesOrderJsonServiceOffersItem) o;
    return Objects.equals(this.serviceOfferId, websitesOrderJsonServiceOffersItem.serviceOfferId) &&
        Objects.equals(this.serviceId, websitesOrderJsonServiceOffersItem.serviceId) &&
        Objects.equals(this.introCost, websitesOrderJsonServiceOffersItem.introCost) &&
        Objects.equals(this.renewalCost, websitesOrderJsonServiceOffersItem.renewalCost) &&
        Objects.equals(this.introFrequency, websitesOrderJsonServiceOffersItem.introFrequency) &&
        Objects.equals(this.renewalFrequency, websitesOrderJsonServiceOffersItem.renewalFrequency) &&
        Objects.equals(this.allowCoupon, websitesOrderJsonServiceOffersItem.allowCoupon) &&
        Objects.equals(this.serviceModule, websitesOrderJsonServiceOffersItem.serviceModule) &&
        Objects.equals(this.createdAt, websitesOrderJsonServiceOffersItem.createdAt) &&
        Objects.equals(this.updatedAt, websitesOrderJsonServiceOffersItem.updatedAt) &&
        Objects.equals(this.deletedAt, websitesOrderJsonServiceOffersItem.deletedAt) &&
        Objects.equals(this.currencySymbol, websitesOrderJsonServiceOffersItem.currencySymbol);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceOfferId, serviceId, introCost, renewalCost, introFrequency, renewalFrequency, allowCoupon, serviceModule, createdAt, updatedAt, deletedAt, currencySymbol);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsitesOrderJsonServiceOffersItem {\n");
    
    sb.append("    serviceOfferId: ").append(toIndentedString(serviceOfferId)).append("\n");
    sb.append("    serviceId: ").append(toIndentedString(serviceId)).append("\n");
    sb.append("    introCost: ").append(toIndentedString(introCost)).append("\n");
    sb.append("    renewalCost: ").append(toIndentedString(renewalCost)).append("\n");
    sb.append("    introFrequency: ").append(toIndentedString(introFrequency)).append("\n");
    sb.append("    renewalFrequency: ").append(toIndentedString(renewalFrequency)).append("\n");
    sb.append("    allowCoupon: ").append(toIndentedString(allowCoupon)).append("\n");
    sb.append("    serviceModule: ").append(toIndentedString(serviceModule)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    updatedAt: ").append(toIndentedString(updatedAt)).append("\n");
    sb.append("    deletedAt: ").append(toIndentedString(deletedAt)).append("\n");
    sb.append("    currencySymbol: ").append(toIndentedString(currencySymbol)).append("\n");
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

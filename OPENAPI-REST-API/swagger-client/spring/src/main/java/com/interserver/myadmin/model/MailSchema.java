package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.MailBillingDetails;
import com.interserver.myadmin.model.MailClientLink;
import com.interserver.myadmin.model.MailSchemaExtraInfoTables;
import com.interserver.myadmin.model.MailServiceInfo;
import com.interserver.myadmin.model.MailServiceType;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * MailSchema
 */
@Validated
@NotUndefined



public class MailSchema   {
  @JsonProperty("serviceInfo")

  private MailServiceInfo serviceInfo = null;

  @JsonProperty("client_links")
  @Valid
  private List<MailClientLink> clientLinks = new ArrayList<>();
  @JsonProperty("billingDetails")

  private MailBillingDetails billingDetails = null;

  @JsonProperty("custCurrency")

  private String custCurrency = null;

  @JsonProperty("custCurrencySymbol")

  private String custCurrencySymbol = null;

  @JsonProperty("package")

  private String _package = null;

  @JsonProperty("serviceExtra")
  @Valid
  private List<String> serviceExtra = null;
  @JsonProperty("extraInfoTables")

  private MailSchemaExtraInfoTables extraInfoTables = null;

  @JsonProperty("serviceType")

  private MailServiceType serviceType = null;

  @JsonProperty("usage_count")

  private String usageCount = null;


  public MailSchema serviceInfo(MailServiceInfo serviceInfo) { 

    this.serviceInfo = serviceInfo;
    return this;
  }

  /**
   * Get serviceInfo
   * @return serviceInfo
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MailServiceInfo getServiceInfo() {  
    return serviceInfo;
  }



  public void setServiceInfo(MailServiceInfo serviceInfo) { 

    this.serviceInfo = serviceInfo;
  }

  public MailSchema clientLinks(List<MailClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
    return this;
  }

  public MailSchema addClientLinksItem(MailClientLink clientLinksItem) {
    this.clientLinks.add(clientLinksItem);
    return this;
  }

  /**
   * Links related to the mail service for clients.
   * @return clientLinks
   **/
  
  @Schema(required = true, description = "Links related to the mail service for clients.")
  
@Valid
  @NotNull
  public List<MailClientLink> getClientLinks() {  
    return clientLinks;
  }



  public void setClientLinks(List<MailClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
  }

  public MailSchema billingDetails(MailBillingDetails billingDetails) { 

    this.billingDetails = billingDetails;
    return this;
  }

  /**
   * Get billingDetails
   * @return billingDetails
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MailBillingDetails getBillingDetails() {  
    return billingDetails;
  }



  public void setBillingDetails(MailBillingDetails billingDetails) { 

    this.billingDetails = billingDetails;
  }

  public MailSchema custCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
    return this;
  }

  /**
   * The customer's currency.
   * @return custCurrency
   **/
  
  @Schema(example = "USD", required = true, description = "The customer's currency.")
  
  @NotNull
  public String getCustCurrency() {  
    return custCurrency;
  }



  public void setCustCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
  }

  public MailSchema custCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

  /**
   * The currency symbol for the customer.
   * @return custCurrencySymbol
   **/
  
  @Schema(example = "$", required = true, description = "The currency symbol for the customer.")
  
  @NotNull
  public String getCustCurrencySymbol() {  
    return custCurrencySymbol;
  }



  public void setCustCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
  }

  public MailSchema _package(String _package) { 

    this._package = _package;
    return this;
  }

  /**
   * The package of the mail service.
   * @return _package
   **/
  
  @Schema(example = "MailBaby Mail", required = true, description = "The package of the mail service.")
  
  @NotNull
  public String getPackage() {  
    return _package;
  }



  public void setPackage(String _package) { 

    this._package = _package;
  }

  public MailSchema serviceExtra(List<String> serviceExtra) { 

    this.serviceExtra = serviceExtra;
    return this;
  }

  public MailSchema addServiceExtraItem(String serviceExtraItem) {
    if (this.serviceExtra == null) {
      this.serviceExtra = new ArrayList<>();
    }
    this.serviceExtra.add(serviceExtraItem);
    return this;
  }

  /**
   * Extra information for the mail service.
   * @return serviceExtra
   **/
  
  @Schema(example = "[]", description = "Extra information for the mail service.")
  
  public List<String> getServiceExtra() {  
    return serviceExtra;
  }



  public void setServiceExtra(List<String> serviceExtra) { 
    this.serviceExtra = serviceExtra;
  }

  public MailSchema extraInfoTables(MailSchemaExtraInfoTables extraInfoTables) { 

    this.extraInfoTables = extraInfoTables;
    return this;
  }

  /**
   * Get extraInfoTables
   * @return extraInfoTables
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MailSchemaExtraInfoTables getExtraInfoTables() {  
    return extraInfoTables;
  }



  public void setExtraInfoTables(MailSchemaExtraInfoTables extraInfoTables) { 

    this.extraInfoTables = extraInfoTables;
  }

  public MailSchema serviceType(MailServiceType serviceType) { 

    this.serviceType = serviceType;
    return this;
  }

  /**
   * Get serviceType
   * @return serviceType
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MailServiceType getServiceType() {  
    return serviceType;
  }



  public void setServiceType(MailServiceType serviceType) { 

    this.serviceType = serviceType;
  }

  public MailSchema usageCount(String usageCount) { 

    this.usageCount = usageCount;
    return this;
  }

  /**
   * The usage count of the mail service.
   * @return usageCount
   **/
  
  @Schema(example = "0", required = true, description = "The usage count of the mail service.")
  
  @NotNull
  public String getUsageCount() {  
    return usageCount;
  }



  public void setUsageCount(String usageCount) { 

    this.usageCount = usageCount;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailSchema mailSchema = (MailSchema) o;
    return Objects.equals(this.serviceInfo, mailSchema.serviceInfo) &&
        Objects.equals(this.clientLinks, mailSchema.clientLinks) &&
        Objects.equals(this.billingDetails, mailSchema.billingDetails) &&
        Objects.equals(this.custCurrency, mailSchema.custCurrency) &&
        Objects.equals(this.custCurrencySymbol, mailSchema.custCurrencySymbol) &&
        Objects.equals(this._package, mailSchema._package) &&
        Objects.equals(this.serviceExtra, mailSchema.serviceExtra) &&
        Objects.equals(this.extraInfoTables, mailSchema.extraInfoTables) &&
        Objects.equals(this.serviceType, mailSchema.serviceType) &&
        Objects.equals(this.usageCount, mailSchema.usageCount);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceInfo, clientLinks, billingDetails, custCurrency, custCurrencySymbol, _package, serviceExtra, extraInfoTables, serviceType, usageCount);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailSchema {\n");
    
    sb.append("    serviceInfo: ").append(toIndentedString(serviceInfo)).append("\n");
    sb.append("    clientLinks: ").append(toIndentedString(clientLinks)).append("\n");
    sb.append("    billingDetails: ").append(toIndentedString(billingDetails)).append("\n");
    sb.append("    custCurrency: ").append(toIndentedString(custCurrency)).append("\n");
    sb.append("    custCurrencySymbol: ").append(toIndentedString(custCurrencySymbol)).append("\n");
    sb.append("    _package: ").append(toIndentedString(_package)).append("\n");
    sb.append("    serviceExtra: ").append(toIndentedString(serviceExtra)).append("\n");
    sb.append("    extraInfoTables: ").append(toIndentedString(extraInfoTables)).append("\n");
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
    sb.append("    usageCount: ").append(toIndentedString(usageCount)).append("\n");
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

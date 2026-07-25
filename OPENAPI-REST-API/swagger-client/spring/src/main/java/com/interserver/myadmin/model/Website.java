package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.WebsiteBillingDetails;
import com.interserver.myadmin.model.WebsiteClientLink;
import com.interserver.myadmin.model.WebsiteExtraInfoTables;
import com.interserver.myadmin.model.WebsiteServiceExtra;
import com.interserver.myadmin.model.WebsiteServiceInfo;
import com.interserver.myadmin.model.WebsiteServiceMaster;
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
 * Full detail view of a webhosting service including billing, service configuration, and panel access links.
 */
@Schema(description = "Full detail view of a webhosting service including billing, service configuration, and panel access links.")
@Validated
@NotUndefined



public class Website   {
  @JsonProperty("serviceInfo")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private WebsiteServiceInfo serviceInfo = null;

  @JsonProperty("client_links")
  @Valid
  private List<WebsiteClientLink> clientLinks = null;
  @JsonProperty("billingDetails")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private WebsiteBillingDetails billingDetails = null;

  @JsonProperty("custCurrency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String custCurrency = null;

  @JsonProperty("custCurrencySymbol")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String custCurrencySymbol = null;

  @JsonProperty("serviceMaster")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private WebsiteServiceMaster serviceMaster = null;

  @JsonProperty("package")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _package = null;

  @JsonProperty("serviceExtra")
  @Valid
  private List<WebsiteServiceExtra> serviceExtra = null;
  @JsonProperty("extraInfoTables")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private WebsiteExtraInfoTables extraInfoTables = null;


  public Website serviceInfo(WebsiteServiceInfo serviceInfo) { 

    this.serviceInfo = serviceInfo;
    return this;
  }

  /**
   * Get serviceInfo
   * @return serviceInfo
   **/
  
  @Schema(description = "")
  
@Valid
  public WebsiteServiceInfo getServiceInfo() {  
    return serviceInfo;
  }



  public void setServiceInfo(WebsiteServiceInfo serviceInfo) { 
    this.serviceInfo = serviceInfo;
  }

  public Website clientLinks(List<WebsiteClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
    return this;
  }

  public Website addClientLinksItem(WebsiteClientLink clientLinksItem) {
    if (this.clientLinks == null) {
      this.clientLinks = new ArrayList<>();
    }
    this.clientLinks.add(clientLinksItem);
    return this;
  }

  /**
   * Get clientLinks
   * @return clientLinks
   **/
  
  @Schema(description = "")
  @Valid
  public List<WebsiteClientLink> getClientLinks() {  
    return clientLinks;
  }



  public void setClientLinks(List<WebsiteClientLink> clientLinks) { 
    this.clientLinks = clientLinks;
  }

  public Website billingDetails(WebsiteBillingDetails billingDetails) { 

    this.billingDetails = billingDetails;
    return this;
  }

  /**
   * Get billingDetails
   * @return billingDetails
   **/
  
  @Schema(description = "")
  
@Valid
  public WebsiteBillingDetails getBillingDetails() {  
    return billingDetails;
  }



  public void setBillingDetails(WebsiteBillingDetails billingDetails) { 
    this.billingDetails = billingDetails;
  }

  public Website custCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
    return this;
  }

  /**
   * Customer's currency
   * @return custCurrency
   **/
  
  @Schema(example = "USD", description = "Customer's currency")
  
  public String getCustCurrency() {  
    return custCurrency;
  }



  public void setCustCurrency(String custCurrency) { 
    this.custCurrency = custCurrency;
  }

  public Website custCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

  /**
   * Customer currency symbol
   * @return custCurrencySymbol
   **/
  
  @Schema(example = "$", description = "Customer currency symbol")
  
  public String getCustCurrencySymbol() {  
    return custCurrencySymbol;
  }



  public void setCustCurrencySymbol(String custCurrencySymbol) { 
    this.custCurrencySymbol = custCurrencySymbol;
  }

  public Website serviceMaster(WebsiteServiceMaster serviceMaster) { 

    this.serviceMaster = serviceMaster;
    return this;
  }

  /**
   * Get serviceMaster
   * @return serviceMaster
   **/
  
  @Schema(description = "")
  
@Valid
  public WebsiteServiceMaster getServiceMaster() {  
    return serviceMaster;
  }



  public void setServiceMaster(WebsiteServiceMaster serviceMaster) { 
    this.serviceMaster = serviceMaster;
  }

  public Website _package(String _package) { 

    this._package = _package;
    return this;
  }

  /**
   * Package information
   * @return _package
   **/
  
  @Schema(example = "Web Hosting Direct Admin", description = "Package information")
  
  public String getPackage() {  
    return _package;
  }



  public void setPackage(String _package) { 
    this._package = _package;
  }

  public Website serviceExtra(List<WebsiteServiceExtra> serviceExtra) { 

    this.serviceExtra = serviceExtra;
    return this;
  }

  public Website addServiceExtraItem(WebsiteServiceExtra serviceExtraItem) {
    if (this.serviceExtra == null) {
      this.serviceExtra = new ArrayList<>();
    }
    this.serviceExtra.add(serviceExtraItem);
    return this;
  }

  /**
   * Get serviceExtra
   * @return serviceExtra
   **/
  
  @Schema(description = "")
  @Valid
  public List<WebsiteServiceExtra> getServiceExtra() {  
    return serviceExtra;
  }



  public void setServiceExtra(List<WebsiteServiceExtra> serviceExtra) { 
    this.serviceExtra = serviceExtra;
  }

  public Website extraInfoTables(WebsiteExtraInfoTables extraInfoTables) { 

    this.extraInfoTables = extraInfoTables;
    return this;
  }

  /**
   * Get extraInfoTables
   * @return extraInfoTables
   **/
  
  @Schema(description = "")
  
@Valid
  public WebsiteExtraInfoTables getExtraInfoTables() {  
    return extraInfoTables;
  }



  public void setExtraInfoTables(WebsiteExtraInfoTables extraInfoTables) { 
    this.extraInfoTables = extraInfoTables;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Website website = (Website) o;
    return Objects.equals(this.serviceInfo, website.serviceInfo) &&
        Objects.equals(this.clientLinks, website.clientLinks) &&
        Objects.equals(this.billingDetails, website.billingDetails) &&
        Objects.equals(this.custCurrency, website.custCurrency) &&
        Objects.equals(this.custCurrencySymbol, website.custCurrencySymbol) &&
        Objects.equals(this.serviceMaster, website.serviceMaster) &&
        Objects.equals(this._package, website._package) &&
        Objects.equals(this.serviceExtra, website.serviceExtra) &&
        Objects.equals(this.extraInfoTables, website.extraInfoTables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceInfo, clientLinks, billingDetails, custCurrency, custCurrencySymbol, serviceMaster, _package, serviceExtra, extraInfoTables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Website {\n");
    
    sb.append("    serviceInfo: ").append(toIndentedString(serviceInfo)).append("\n");
    sb.append("    clientLinks: ").append(toIndentedString(clientLinks)).append("\n");
    sb.append("    billingDetails: ").append(toIndentedString(billingDetails)).append("\n");
    sb.append("    custCurrency: ").append(toIndentedString(custCurrency)).append("\n");
    sb.append("    custCurrencySymbol: ").append(toIndentedString(custCurrencySymbol)).append("\n");
    sb.append("    serviceMaster: ").append(toIndentedString(serviceMaster)).append("\n");
    sb.append("    _package: ").append(toIndentedString(_package)).append("\n");
    sb.append("    serviceExtra: ").append(toIndentedString(serviceExtra)).append("\n");
    sb.append("    extraInfoTables: ").append(toIndentedString(extraInfoTables)).append("\n");
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

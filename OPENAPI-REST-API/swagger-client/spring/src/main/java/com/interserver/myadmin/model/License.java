package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.LicenseBillingDetails;
import com.interserver.myadmin.model.LicenseClientLink;
import com.interserver.myadmin.model.LicenseExtraInfoTables;
import com.interserver.myadmin.model.LicenseServiceInfo;
import com.interserver.myadmin.model.LicenseServiceType;
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
 * License
 */
@Validated
@NotUndefined



public class License   {
  @JsonProperty("serviceInfo")

  private LicenseServiceInfo serviceInfo = null;

  @JsonProperty("client_links")
  @Valid
  private List<LicenseClientLink> clientLinks = new ArrayList<>();
  @JsonProperty("billingDetails")

  private LicenseBillingDetails billingDetails = null;

  @JsonProperty("custCurrency")

  private String custCurrency = null;

  @JsonProperty("custCurrencySymbol")

  private String custCurrencySymbol = null;

  @JsonProperty("package")

  private String _package = null;

  @JsonProperty("serviceExtra")
  @Valid
  private List<String> serviceExtra = new ArrayList<>();
  @JsonProperty("extraInfoTables")

  private LicenseExtraInfoTables extraInfoTables = null;

  @JsonProperty("service_overview_extra")

  private String serviceOverviewExtra = null;

  @JsonProperty("serviceType")

  private LicenseServiceType serviceType = null;

  @JsonProperty("license_key")

  private String licenseKey = null;


  public License serviceInfo(LicenseServiceInfo serviceInfo) { 

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
  public LicenseServiceInfo getServiceInfo() {  
    return serviceInfo;
  }



  public void setServiceInfo(LicenseServiceInfo serviceInfo) { 

    this.serviceInfo = serviceInfo;
  }

  public License clientLinks(List<LicenseClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
    return this;
  }

  public License addClientLinksItem(LicenseClientLink clientLinksItem) {
    this.clientLinks.add(clientLinksItem);
    return this;
  }

  /**
   * Get clientLinks
   * @return clientLinks
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public List<LicenseClientLink> getClientLinks() {  
    return clientLinks;
  }



  public void setClientLinks(List<LicenseClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
  }

  public License billingDetails(LicenseBillingDetails billingDetails) { 

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
  public LicenseBillingDetails getBillingDetails() {  
    return billingDetails;
  }



  public void setBillingDetails(LicenseBillingDetails billingDetails) { 

    this.billingDetails = billingDetails;
  }

  public License custCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
    return this;
  }

  /**
   * Customer's currency
   * @return custCurrency
   **/
  
  @Schema(example = "USD", required = true, description = "Customer's currency")
  
  @NotNull
  public String getCustCurrency() {  
    return custCurrency;
  }



  public void setCustCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
  }

  public License custCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

  /**
   * Currency symbol for customer
   * @return custCurrencySymbol
   **/
  
  @Schema(example = "$", required = true, description = "Currency symbol for customer")
  
  @NotNull
  public String getCustCurrencySymbol() {  
    return custCurrencySymbol;
  }



  public void setCustCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
  }

  public License _package(String _package) { 

    this._package = _package;
    return this;
  }

  /**
   * Package name
   * @return _package
   **/
  
  @Schema(example = "KernelCare License", required = true, description = "Package name")
  
  @NotNull
  public String getPackage() {  
    return _package;
  }



  public void setPackage(String _package) { 

    this._package = _package;
  }

  public License serviceExtra(List<String> serviceExtra) { 

    this.serviceExtra = serviceExtra;
    return this;
  }

  public License addServiceExtraItem(String serviceExtraItem) {
    this.serviceExtra.add(serviceExtraItem);
    return this;
  }

  /**
   * Extra service information
   * @return serviceExtra
   **/
  
  @Schema(required = true, description = "Extra service information")
  
  @NotNull
  public List<String> getServiceExtra() {  
    return serviceExtra;
  }



  public void setServiceExtra(List<String> serviceExtra) { 

    this.serviceExtra = serviceExtra;
  }

  public License extraInfoTables(LicenseExtraInfoTables extraInfoTables) { 

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
  public LicenseExtraInfoTables getExtraInfoTables() {  
    return extraInfoTables;
  }



  public void setExtraInfoTables(LicenseExtraInfoTables extraInfoTables) { 

    this.extraInfoTables = extraInfoTables;
  }

  public License serviceOverviewExtra(String serviceOverviewExtra) { 

    this.serviceOverviewExtra = serviceOverviewExtra;
    return this;
  }

  /**
   * Extra service overview information
   * @return serviceOverviewExtra
   **/
  
  @Schema(required = true, description = "Extra service overview information")
  
  @NotNull
  public String getServiceOverviewExtra() {  
    return serviceOverviewExtra;
  }



  public void setServiceOverviewExtra(String serviceOverviewExtra) { 

    this.serviceOverviewExtra = serviceOverviewExtra;
  }

  public License serviceType(LicenseServiceType serviceType) { 

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
  public LicenseServiceType getServiceType() {  
    return serviceType;
  }



  public void setServiceType(LicenseServiceType serviceType) { 

    this.serviceType = serviceType;
  }

  public License licenseKey(String licenseKey) { 

    this.licenseKey = licenseKey;
    return this;
  }

  /**
   * License key
   * @return licenseKey
   **/
  
  @Schema(required = true, description = "License key")
  
  @NotNull
  public String getLicenseKey() {  
    return licenseKey;
  }



  public void setLicenseKey(String licenseKey) { 

    this.licenseKey = licenseKey;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    License license = (License) o;
    return Objects.equals(this.serviceInfo, license.serviceInfo) &&
        Objects.equals(this.clientLinks, license.clientLinks) &&
        Objects.equals(this.billingDetails, license.billingDetails) &&
        Objects.equals(this.custCurrency, license.custCurrency) &&
        Objects.equals(this.custCurrencySymbol, license.custCurrencySymbol) &&
        Objects.equals(this._package, license._package) &&
        Objects.equals(this.serviceExtra, license.serviceExtra) &&
        Objects.equals(this.extraInfoTables, license.extraInfoTables) &&
        Objects.equals(this.serviceOverviewExtra, license.serviceOverviewExtra) &&
        Objects.equals(this.serviceType, license.serviceType) &&
        Objects.equals(this.licenseKey, license.licenseKey);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceInfo, clientLinks, billingDetails, custCurrency, custCurrencySymbol, _package, serviceExtra, extraInfoTables, serviceOverviewExtra, serviceType, licenseKey);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class License {\n");
    
    sb.append("    serviceInfo: ").append(toIndentedString(serviceInfo)).append("\n");
    sb.append("    clientLinks: ").append(toIndentedString(clientLinks)).append("\n");
    sb.append("    billingDetails: ").append(toIndentedString(billingDetails)).append("\n");
    sb.append("    custCurrency: ").append(toIndentedString(custCurrency)).append("\n");
    sb.append("    custCurrencySymbol: ").append(toIndentedString(custCurrencySymbol)).append("\n");
    sb.append("    _package: ").append(toIndentedString(_package)).append("\n");
    sb.append("    serviceExtra: ").append(toIndentedString(serviceExtra)).append("\n");
    sb.append("    extraInfoTables: ").append(toIndentedString(extraInfoTables)).append("\n");
    sb.append("    serviceOverviewExtra: ").append(toIndentedString(serviceOverviewExtra)).append("\n");
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
    sb.append("    licenseKey: ").append(toIndentedString(licenseKey)).append("\n");
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

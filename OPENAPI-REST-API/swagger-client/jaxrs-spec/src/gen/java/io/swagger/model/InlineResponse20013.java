package io.swagger.model;

import io.swagger.model.InlineResponse20013BillingDetails;
import io.swagger.model.InlineResponse20013ClientLinks;
import io.swagger.model.InlineResponse20013ExtraInfoTables;
import io.swagger.model.InlineResponse20013FilterFirewall;
import io.swagger.model.InlineResponse20013ServiceInfo;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponse20013   {

  private @Valid InlineResponse20013ServiceInfo serviceInfo = null;

  private @Valid List<InlineResponse20013ClientLinks> clientLinks = new ArrayList<InlineResponse20013ClientLinks>();

  private @Valid InlineResponse20013BillingDetails billingDetails = null;

  private @Valid String custCurrency = null;

  private @Valid String custCurrencySymbol = null;

  private @Valid String _package = null;

  private @Valid InlineResponse20013ExtraInfoTables extraInfoTables = null;

  private @Valid InlineResponse20013FilterFirewall filterFirewall = null;

  /**
   **/
  public InlineResponse20013 serviceInfo(InlineResponse20013ServiceInfo serviceInfo) {
    this.serviceInfo = serviceInfo;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("serviceInfo")
  @NotNull

  public InlineResponse20013ServiceInfo getServiceInfo() {
    return serviceInfo;
  }
  public void setServiceInfo(InlineResponse20013ServiceInfo serviceInfo) {
    this.serviceInfo = serviceInfo;
  }

  /**
   **/
  public InlineResponse20013 clientLinks(List<InlineResponse20013ClientLinks> clientLinks) {
    this.clientLinks = clientLinks;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("client_links")
  @NotNull

  public List<InlineResponse20013ClientLinks> getClientLinks() {
    return clientLinks;
  }
  public void setClientLinks(List<InlineResponse20013ClientLinks> clientLinks) {
    this.clientLinks = clientLinks;
  }

  /**
   **/
  public InlineResponse20013 billingDetails(InlineResponse20013BillingDetails billingDetails) {
    this.billingDetails = billingDetails;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("billingDetails")
  @NotNull

  public InlineResponse20013BillingDetails getBillingDetails() {
    return billingDetails;
  }
  public void setBillingDetails(InlineResponse20013BillingDetails billingDetails) {
    this.billingDetails = billingDetails;
  }

  /**
   **/
  public InlineResponse20013 custCurrency(String custCurrency) {
    this.custCurrency = custCurrency;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("custCurrency")
  @NotNull

  public String getCustCurrency() {
    return custCurrency;
  }
  public void setCustCurrency(String custCurrency) {
    this.custCurrency = custCurrency;
  }

  /**
   **/
  public InlineResponse20013 custCurrencySymbol(String custCurrencySymbol) {
    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("custCurrencySymbol")
  @NotNull

  public String getCustCurrencySymbol() {
    return custCurrencySymbol;
  }
  public void setCustCurrencySymbol(String custCurrencySymbol) {
    this.custCurrencySymbol = custCurrencySymbol;
  }

  /**
   **/
  public InlineResponse20013 _package(String _package) {
    this._package = _package;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("package")
  @NotNull

  public String getPackage() {
    return _package;
  }
  public void setPackage(String _package) {
    this._package = _package;
  }

  /**
   **/
  public InlineResponse20013 extraInfoTables(InlineResponse20013ExtraInfoTables extraInfoTables) {
    this.extraInfoTables = extraInfoTables;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("extraInfoTables")
  @NotNull

  public InlineResponse20013ExtraInfoTables getExtraInfoTables() {
    return extraInfoTables;
  }
  public void setExtraInfoTables(InlineResponse20013ExtraInfoTables extraInfoTables) {
    this.extraInfoTables = extraInfoTables;
  }

  /**
   **/
  public InlineResponse20013 filterFirewall(InlineResponse20013FilterFirewall filterFirewall) {
    this.filterFirewall = filterFirewall;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("filter_firewall")
  @NotNull

  public InlineResponse20013FilterFirewall getFilterFirewall() {
    return filterFirewall;
  }
  public void setFilterFirewall(InlineResponse20013FilterFirewall filterFirewall) {
    this.filterFirewall = filterFirewall;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20013 inlineResponse20013 = (InlineResponse20013) o;
    return Objects.equals(serviceInfo, inlineResponse20013.serviceInfo) &&
        Objects.equals(clientLinks, inlineResponse20013.clientLinks) &&
        Objects.equals(billingDetails, inlineResponse20013.billingDetails) &&
        Objects.equals(custCurrency, inlineResponse20013.custCurrency) &&
        Objects.equals(custCurrencySymbol, inlineResponse20013.custCurrencySymbol) &&
        Objects.equals(_package, inlineResponse20013._package) &&
        Objects.equals(extraInfoTables, inlineResponse20013.extraInfoTables) &&
        Objects.equals(filterFirewall, inlineResponse20013.filterFirewall);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceInfo, clientLinks, billingDetails, custCurrency, custCurrencySymbol, _package, extraInfoTables, filterFirewall);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013 {\n");
    
    sb.append("    serviceInfo: ").append(toIndentedString(serviceInfo)).append("\n");
    sb.append("    clientLinks: ").append(toIndentedString(clientLinks)).append("\n");
    sb.append("    billingDetails: ").append(toIndentedString(billingDetails)).append("\n");
    sb.append("    custCurrency: ").append(toIndentedString(custCurrency)).append("\n");
    sb.append("    custCurrencySymbol: ").append(toIndentedString(custCurrencySymbol)).append("\n");
    sb.append("    _package: ").append(toIndentedString(_package)).append("\n");
    sb.append("    extraInfoTables: ").append(toIndentedString(extraInfoTables)).append("\n");
    sb.append("    filterFirewall: ").append(toIndentedString(filterFirewall)).append("\n");
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

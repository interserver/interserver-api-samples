package io.swagger.model;

import io.swagger.model.InlineResponse20013BillingDetails;
import io.swagger.model.InlineResponse20013ClientLinks;
import io.swagger.model.InlineResponse20013ExtraInfoTables;
import io.swagger.model.InlineResponse20013FilterFirewall;
import io.swagger.model.InlineResponse20013ServiceInfo;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class InlineResponse20013   {
  
  @Schema(description = "")
  private InlineResponse20013ServiceInfo serviceInfo = null;
  
  @Schema(description = "")
  private List<InlineResponse20013ClientLinks> clientLinks = null;
  
  @Schema(description = "")
  private InlineResponse20013BillingDetails billingDetails = null;
  
  @Schema(description = "")
  private String custCurrency = null;
  
  @Schema(description = "")
  private String custCurrencySymbol = null;
  
  @Schema(description = "")
  private String _package = null;
  
  @Schema(description = "")
  private InlineResponse20013ExtraInfoTables extraInfoTables = null;
  
  @Schema(description = "")
  private InlineResponse20013FilterFirewall filterFirewall = null;
 /**
   * Get serviceInfo
   * @return serviceInfo
  **/
  @JsonProperty("serviceInfo")
  @NotNull
  public InlineResponse20013ServiceInfo getServiceInfo() {
    return serviceInfo;
  }

  public void setServiceInfo(InlineResponse20013ServiceInfo serviceInfo) {
    this.serviceInfo = serviceInfo;
  }

  public InlineResponse20013 serviceInfo(InlineResponse20013ServiceInfo serviceInfo) {
    this.serviceInfo = serviceInfo;
    return this;
  }

 /**
   * Get clientLinks
   * @return clientLinks
  **/
  @JsonProperty("client_links")
  @NotNull
  public List<InlineResponse20013ClientLinks> getClientLinks() {
    return clientLinks;
  }

  public void setClientLinks(List<InlineResponse20013ClientLinks> clientLinks) {
    this.clientLinks = clientLinks;
  }

  public InlineResponse20013 clientLinks(List<InlineResponse20013ClientLinks> clientLinks) {
    this.clientLinks = clientLinks;
    return this;
  }

  public InlineResponse20013 addClientLinksItem(InlineResponse20013ClientLinks clientLinksItem) {
    this.clientLinks.add(clientLinksItem);
    return this;
  }

 /**
   * Get billingDetails
   * @return billingDetails
  **/
  @JsonProperty("billingDetails")
  @NotNull
  public InlineResponse20013BillingDetails getBillingDetails() {
    return billingDetails;
  }

  public void setBillingDetails(InlineResponse20013BillingDetails billingDetails) {
    this.billingDetails = billingDetails;
  }

  public InlineResponse20013 billingDetails(InlineResponse20013BillingDetails billingDetails) {
    this.billingDetails = billingDetails;
    return this;
  }

 /**
   * Get custCurrency
   * @return custCurrency
  **/
  @JsonProperty("custCurrency")
  @NotNull
  public String getCustCurrency() {
    return custCurrency;
  }

  public void setCustCurrency(String custCurrency) {
    this.custCurrency = custCurrency;
  }

  public InlineResponse20013 custCurrency(String custCurrency) {
    this.custCurrency = custCurrency;
    return this;
  }

 /**
   * Get custCurrencySymbol
   * @return custCurrencySymbol
  **/
  @JsonProperty("custCurrencySymbol")
  @NotNull
  public String getCustCurrencySymbol() {
    return custCurrencySymbol;
  }

  public void setCustCurrencySymbol(String custCurrencySymbol) {
    this.custCurrencySymbol = custCurrencySymbol;
  }

  public InlineResponse20013 custCurrencySymbol(String custCurrencySymbol) {
    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

 /**
   * Get _package
   * @return _package
  **/
  @JsonProperty("package")
  @NotNull
  public String getPackage() {
    return _package;
  }

  public void setPackage(String _package) {
    this._package = _package;
  }

  public InlineResponse20013 _package(String _package) {
    this._package = _package;
    return this;
  }

 /**
   * Get extraInfoTables
   * @return extraInfoTables
  **/
  @JsonProperty("extraInfoTables")
  @NotNull
  public InlineResponse20013ExtraInfoTables getExtraInfoTables() {
    return extraInfoTables;
  }

  public void setExtraInfoTables(InlineResponse20013ExtraInfoTables extraInfoTables) {
    this.extraInfoTables = extraInfoTables;
  }

  public InlineResponse20013 extraInfoTables(InlineResponse20013ExtraInfoTables extraInfoTables) {
    this.extraInfoTables = extraInfoTables;
    return this;
  }

 /**
   * Get filterFirewall
   * @return filterFirewall
  **/
  @JsonProperty("filter_firewall")
  @NotNull
  public InlineResponse20013FilterFirewall getFilterFirewall() {
    return filterFirewall;
  }

  public void setFilterFirewall(InlineResponse20013FilterFirewall filterFirewall) {
    this.filterFirewall = filterFirewall;
  }

  public InlineResponse20013 filterFirewall(InlineResponse20013FilterFirewall filterFirewall) {
    this.filterFirewall = filterFirewall;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.InlineResponse20013BillingDetails;
import io.swagger.model.InlineResponse20013ClientLinks;
import io.swagger.model.InlineResponse20013ExtraInfoTables;
import io.swagger.model.InlineResponse20013FilterFirewall;
import io.swagger.model.InlineResponse20013ServiceInfo;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;



public class InlineResponse20013   {
  private InlineResponse20013ServiceInfo serviceInfo = null;  private List<InlineResponse20013ClientLinks> clientLinks = new ArrayList<InlineResponse20013ClientLinks>();  private InlineResponse20013BillingDetails billingDetails = null;  private String custCurrency = null;  private String custCurrencySymbol = null;  private String _package = null;  private InlineResponse20013ExtraInfoTables extraInfoTables = null;  private InlineResponse20013FilterFirewall filterFirewall = null;

  /**
   **/
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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

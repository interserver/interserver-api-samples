package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.InlineResponse20013BillingDetails;
import com.interserver.myadmin.model.InlineResponse20013ClientLinks;
import com.interserver.myadmin.model.InlineResponse20013ExtraInfoTables;
import com.interserver.myadmin.model.InlineResponse20013FilterFirewall;
import com.interserver.myadmin.model.InlineResponse20013ServiceInfo;
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
 * InlineResponse20013
 */
@Validated
@NotUndefined



public class InlineResponse20013   {
  @JsonProperty("serviceInfo")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private InlineResponse20013ServiceInfo serviceInfo = null;

  @JsonProperty("client_links")
  @Valid
  private List<InlineResponse20013ClientLinks> clientLinks = null;
  @JsonProperty("billingDetails")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private InlineResponse20013BillingDetails billingDetails = null;

  @JsonProperty("custCurrency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String custCurrency = null;

  @JsonProperty("custCurrencySymbol")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String custCurrencySymbol = null;

  @JsonProperty("package")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _package = null;

  @JsonProperty("extraInfoTables")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private InlineResponse20013ExtraInfoTables extraInfoTables = null;

  @JsonProperty("filter_firewall")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private InlineResponse20013FilterFirewall filterFirewall = null;


  public InlineResponse20013 serviceInfo(InlineResponse20013ServiceInfo serviceInfo) { 

    this.serviceInfo = serviceInfo;
    return this;
  }

  /**
   * Get serviceInfo
   * @return serviceInfo
   **/
  
  @Schema(description = "")
  
@Valid
  public InlineResponse20013ServiceInfo getServiceInfo() {  
    return serviceInfo;
  }



  public void setServiceInfo(InlineResponse20013ServiceInfo serviceInfo) { 
    this.serviceInfo = serviceInfo;
  }

  public InlineResponse20013 clientLinks(List<InlineResponse20013ClientLinks> clientLinks) { 

    this.clientLinks = clientLinks;
    return this;
  }

  public InlineResponse20013 addClientLinksItem(InlineResponse20013ClientLinks clientLinksItem) {
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
  public List<InlineResponse20013ClientLinks> getClientLinks() {  
    return clientLinks;
  }



  public void setClientLinks(List<InlineResponse20013ClientLinks> clientLinks) { 
    this.clientLinks = clientLinks;
  }

  public InlineResponse20013 billingDetails(InlineResponse20013BillingDetails billingDetails) { 

    this.billingDetails = billingDetails;
    return this;
  }

  /**
   * Get billingDetails
   * @return billingDetails
   **/
  
  @Schema(description = "")
  
@Valid
  public InlineResponse20013BillingDetails getBillingDetails() {  
    return billingDetails;
  }



  public void setBillingDetails(InlineResponse20013BillingDetails billingDetails) { 
    this.billingDetails = billingDetails;
  }

  public InlineResponse20013 custCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
    return this;
  }

  /**
   * Get custCurrency
   * @return custCurrency
   **/
  
  @Schema(description = "")
  
  public String getCustCurrency() {  
    return custCurrency;
  }



  public void setCustCurrency(String custCurrency) { 
    this.custCurrency = custCurrency;
  }

  public InlineResponse20013 custCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

  /**
   * Get custCurrencySymbol
   * @return custCurrencySymbol
   **/
  
  @Schema(description = "")
  
  public String getCustCurrencySymbol() {  
    return custCurrencySymbol;
  }



  public void setCustCurrencySymbol(String custCurrencySymbol) { 
    this.custCurrencySymbol = custCurrencySymbol;
  }

  public InlineResponse20013 _package(String _package) { 

    this._package = _package;
    return this;
  }

  /**
   * Get _package
   * @return _package
   **/
  
  @Schema(description = "")
  
  public String getPackage() {  
    return _package;
  }



  public void setPackage(String _package) { 
    this._package = _package;
  }

  public InlineResponse20013 extraInfoTables(InlineResponse20013ExtraInfoTables extraInfoTables) { 

    this.extraInfoTables = extraInfoTables;
    return this;
  }

  /**
   * Get extraInfoTables
   * @return extraInfoTables
   **/
  
  @Schema(description = "")
  
@Valid
  public InlineResponse20013ExtraInfoTables getExtraInfoTables() {  
    return extraInfoTables;
  }



  public void setExtraInfoTables(InlineResponse20013ExtraInfoTables extraInfoTables) { 
    this.extraInfoTables = extraInfoTables;
  }

  public InlineResponse20013 filterFirewall(InlineResponse20013FilterFirewall filterFirewall) { 

    this.filterFirewall = filterFirewall;
    return this;
  }

  /**
   * Get filterFirewall
   * @return filterFirewall
   **/
  
  @Schema(description = "")
  
@Valid
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
    return Objects.equals(this.serviceInfo, inlineResponse20013.serviceInfo) &&
        Objects.equals(this.clientLinks, inlineResponse20013.clientLinks) &&
        Objects.equals(this.billingDetails, inlineResponse20013.billingDetails) &&
        Objects.equals(this.custCurrency, inlineResponse20013.custCurrency) &&
        Objects.equals(this.custCurrencySymbol, inlineResponse20013.custCurrencySymbol) &&
        Objects.equals(this._package, inlineResponse20013._package) &&
        Objects.equals(this.extraInfoTables, inlineResponse20013.extraInfoTables) &&
        Objects.equals(this.filterFirewall, inlineResponse20013.filterFirewall);
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

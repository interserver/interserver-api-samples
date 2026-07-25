package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServerBillingDetails;
import com.interserver.myadmin.model.ServerClientLink;
import com.interserver.myadmin.model.ServerExtraInfoTables;
import com.interserver.myadmin.model.ServerLocations;
import com.interserver.myadmin.model.ServerNetworkInfo;
import com.interserver.myadmin.model.ServerServiceInfo;
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
 * Server
 */
@Validated
@NotUndefined



public class Server   {
  @JsonProperty("ipmiAuth")

  private Boolean ipmiAuth = null;

  @JsonProperty("client_links")
  @Valid
  private List<ServerClientLink> clientLinks = new ArrayList<>();
  @JsonProperty("billingDetails")

  private ServerBillingDetails billingDetails = null;

  @JsonProperty("custCurrency")

  private String custCurrency = null;

  @JsonProperty("custCurrencySymbol")

  private String custCurrencySymbol = null;

  @JsonProperty("package")

  private String _package = null;

  @JsonProperty("serviceExtra")
  @Valid
  private List<String> serviceExtra = new ArrayList<>();
  @JsonProperty("locations")

  private ServerLocations locations = null;

  @JsonProperty("networkInfo")

  private ServerNetworkInfo networkInfo = null;

  @JsonProperty("extraInfoTables")

  private ServerExtraInfoTables extraInfoTables = null;

  @JsonProperty("serviceInfo")

  private ServerServiceInfo serviceInfo = null;


  public Server ipmiAuth(Boolean ipmiAuth) { 

    this.ipmiAuth = ipmiAuth;
    return this;
  }

  /**
   * Get ipmiAuth
   * @return ipmiAuth
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Boolean isIpmiAuth() {  
    return ipmiAuth;
  }



  public void setIpmiAuth(Boolean ipmiAuth) { 

    this.ipmiAuth = ipmiAuth;
  }

  public Server clientLinks(List<ServerClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
    return this;
  }

  public Server addClientLinksItem(ServerClientLink clientLinksItem) {
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
  public List<ServerClientLink> getClientLinks() {  
    return clientLinks;
  }



  public void setClientLinks(List<ServerClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
  }

  public Server billingDetails(ServerBillingDetails billingDetails) { 

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
  public ServerBillingDetails getBillingDetails() {  
    return billingDetails;
  }



  public void setBillingDetails(ServerBillingDetails billingDetails) { 

    this.billingDetails = billingDetails;
  }

  public Server custCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
    return this;
  }

  /**
   * Get custCurrency
   * @return custCurrency
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getCustCurrency() {  
    return custCurrency;
  }



  public void setCustCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
  }

  public Server custCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

  /**
   * Get custCurrencySymbol
   * @return custCurrencySymbol
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getCustCurrencySymbol() {  
    return custCurrencySymbol;
  }



  public void setCustCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
  }

  public Server _package(String _package) { 

    this._package = _package;
    return this;
  }

  /**
   * Get _package
   * @return _package
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getPackage() {  
    return _package;
  }



  public void setPackage(String _package) { 

    this._package = _package;
  }

  public Server serviceExtra(List<String> serviceExtra) { 

    this.serviceExtra = serviceExtra;
    return this;
  }

  public Server addServiceExtraItem(String serviceExtraItem) {
    this.serviceExtra.add(serviceExtraItem);
    return this;
  }

  /**
   * Get serviceExtra
   * @return serviceExtra
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public List<String> getServiceExtra() {  
    return serviceExtra;
  }



  public void setServiceExtra(List<String> serviceExtra) { 

    this.serviceExtra = serviceExtra;
  }

  public Server locations(ServerLocations locations) { 

    this.locations = locations;
    return this;
  }

  /**
   * Get locations
   * @return locations
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public ServerLocations getLocations() {  
    return locations;
  }



  public void setLocations(ServerLocations locations) { 

    this.locations = locations;
  }

  public Server networkInfo(ServerNetworkInfo networkInfo) { 

    this.networkInfo = networkInfo;
    return this;
  }

  /**
   * Get networkInfo
   * @return networkInfo
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public ServerNetworkInfo getNetworkInfo() {  
    return networkInfo;
  }



  public void setNetworkInfo(ServerNetworkInfo networkInfo) { 

    this.networkInfo = networkInfo;
  }

  public Server extraInfoTables(ServerExtraInfoTables extraInfoTables) { 

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
  public ServerExtraInfoTables getExtraInfoTables() {  
    return extraInfoTables;
  }



  public void setExtraInfoTables(ServerExtraInfoTables extraInfoTables) { 

    this.extraInfoTables = extraInfoTables;
  }

  public Server serviceInfo(ServerServiceInfo serviceInfo) { 

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
  public ServerServiceInfo getServiceInfo() {  
    return serviceInfo;
  }



  public void setServiceInfo(ServerServiceInfo serviceInfo) { 

    this.serviceInfo = serviceInfo;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Server server = (Server) o;
    return Objects.equals(this.ipmiAuth, server.ipmiAuth) &&
        Objects.equals(this.clientLinks, server.clientLinks) &&
        Objects.equals(this.billingDetails, server.billingDetails) &&
        Objects.equals(this.custCurrency, server.custCurrency) &&
        Objects.equals(this.custCurrencySymbol, server.custCurrencySymbol) &&
        Objects.equals(this._package, server._package) &&
        Objects.equals(this.serviceExtra, server.serviceExtra) &&
        Objects.equals(this.locations, server.locations) &&
        Objects.equals(this.networkInfo, server.networkInfo) &&
        Objects.equals(this.extraInfoTables, server.extraInfoTables) &&
        Objects.equals(this.serviceInfo, server.serviceInfo);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ipmiAuth, clientLinks, billingDetails, custCurrency, custCurrencySymbol, _package, serviceExtra, locations, networkInfo, extraInfoTables, serviceInfo);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Server {\n");
    
    sb.append("    ipmiAuth: ").append(toIndentedString(ipmiAuth)).append("\n");
    sb.append("    clientLinks: ").append(toIndentedString(clientLinks)).append("\n");
    sb.append("    billingDetails: ").append(toIndentedString(billingDetails)).append("\n");
    sb.append("    custCurrency: ").append(toIndentedString(custCurrency)).append("\n");
    sb.append("    custCurrencySymbol: ").append(toIndentedString(custCurrencySymbol)).append("\n");
    sb.append("    _package: ").append(toIndentedString(_package)).append("\n");
    sb.append("    serviceExtra: ").append(toIndentedString(serviceExtra)).append("\n");
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
    sb.append("    networkInfo: ").append(toIndentedString(networkInfo)).append("\n");
    sb.append("    extraInfoTables: ").append(toIndentedString(extraInfoTables)).append("\n");
    sb.append("    serviceInfo: ").append(toIndentedString(serviceInfo)).append("\n");
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

package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsBillingDetails;
import com.interserver.myadmin.model.VpsCPData;
import com.interserver.myadmin.model.VpsClientLink;
import com.interserver.myadmin.model.VpsDAData;
import com.interserver.myadmin.model.VpsExtraInfoTables;
import com.interserver.myadmin.model.VpsPlesk12Data;
import com.interserver.myadmin.model.VpsServiceAddons;
import com.interserver.myadmin.model.VpsServiceExtra;
import com.interserver.myadmin.model.VpsServiceInfo;
import com.interserver.myadmin.model.VpsServiceMaster;
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
 * Vps
 */
@Validated
@NotUndefined



public class Vps   {
  @JsonProperty("serviceInfo")

  private VpsServiceInfo serviceInfo = null;

  @JsonProperty("client_links")
  @Valid
  private List<VpsClientLink> clientLinks = new ArrayList<>();
  @JsonProperty("billingDetails")

  private VpsBillingDetails billingDetails = null;

  @JsonProperty("custCurrency")

  private String custCurrency = null;

  @JsonProperty("custCurrencySymbol")

  private String custCurrencySymbol = null;

  @JsonProperty("serviceMaster")

  private VpsServiceMaster serviceMaster = null;

  @JsonProperty("package")

  private String _package = null;

  @JsonProperty("os_template")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String osTemplate = null;

  @JsonProperty("serviceExtra")

  private VpsServiceExtra serviceExtra = null;

  @JsonProperty("extraInfoTables")

  private VpsExtraInfoTables extraInfoTables = null;

  @JsonProperty("cpu_graph_data")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Object cpuGraphData = null;

  @JsonProperty("module")

  private String module = null;

  @JsonProperty("token")

  private String token = null;

  @JsonProperty("da_link")

  private Integer daLink = null;

  @JsonProperty("sr_link")

  private Integer srLink = null;

  @JsonProperty("cp_data")

  private VpsCPData cpData = null;

  @JsonProperty("da_data")

  private VpsDAData daData = null;

  @JsonProperty("plesk12_data")

  private VpsPlesk12Data plesk12Data = null;

  @JsonProperty("serviceAddons")

  private VpsServiceAddons serviceAddons = null;


  public Vps serviceInfo(VpsServiceInfo serviceInfo) { 

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
  public VpsServiceInfo getServiceInfo() {  
    return serviceInfo;
  }



  public void setServiceInfo(VpsServiceInfo serviceInfo) { 

    this.serviceInfo = serviceInfo;
  }

  public Vps clientLinks(List<VpsClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
    return this;
  }

  public Vps addClientLinksItem(VpsClientLink clientLinksItem) {
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
  public List<VpsClientLink> getClientLinks() {  
    return clientLinks;
  }



  public void setClientLinks(List<VpsClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
  }

  public Vps billingDetails(VpsBillingDetails billingDetails) { 

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
  public VpsBillingDetails getBillingDetails() {  
    return billingDetails;
  }



  public void setBillingDetails(VpsBillingDetails billingDetails) { 

    this.billingDetails = billingDetails;
  }

  public Vps custCurrency(String custCurrency) { 

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

  public Vps custCurrencySymbol(String custCurrencySymbol) { 

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

  public Vps serviceMaster(VpsServiceMaster serviceMaster) { 

    this.serviceMaster = serviceMaster;
    return this;
  }

  /**
   * Get serviceMaster
   * @return serviceMaster
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsServiceMaster getServiceMaster() {  
    return serviceMaster;
  }



  public void setServiceMaster(VpsServiceMaster serviceMaster) { 

    this.serviceMaster = serviceMaster;
  }

  public Vps _package(String _package) { 

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

  public Vps osTemplate(String osTemplate) { 

    this.osTemplate = osTemplate;
    return this;
  }

  /**
   * Get osTemplate
   * @return osTemplate
   **/
  
  @Schema(description = "")
  
  public String getOsTemplate() {  
    return osTemplate;
  }



  public void setOsTemplate(String osTemplate) { 
    this.osTemplate = osTemplate;
  }

  public Vps serviceExtra(VpsServiceExtra serviceExtra) { 

    this.serviceExtra = serviceExtra;
    return this;
  }

  /**
   * Get serviceExtra
   * @return serviceExtra
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsServiceExtra getServiceExtra() {  
    return serviceExtra;
  }



  public void setServiceExtra(VpsServiceExtra serviceExtra) { 

    this.serviceExtra = serviceExtra;
  }

  public Vps extraInfoTables(VpsExtraInfoTables extraInfoTables) { 

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
  public VpsExtraInfoTables getExtraInfoTables() {  
    return extraInfoTables;
  }



  public void setExtraInfoTables(VpsExtraInfoTables extraInfoTables) { 

    this.extraInfoTables = extraInfoTables;
  }

  public Vps cpuGraphData(Object cpuGraphData) { 

    this.cpuGraphData = cpuGraphData;
    return this;
  }

  /**
   * Get cpuGraphData
   * @return cpuGraphData
   **/
  
  @Schema(description = "")
  
  public Object getCpuGraphData() {  
    return cpuGraphData;
  }



  public void setCpuGraphData(Object cpuGraphData) { 
    this.cpuGraphData = cpuGraphData;
  }

  public Vps module(String module) { 

    this.module = module;
    return this;
  }

  /**
   * Get module
   * @return module
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getModule() {  
    return module;
  }



  public void setModule(String module) { 

    this.module = module;
  }

  public Vps token(String token) { 

    this.token = token;
    return this;
  }

  /**
   * Get token
   * @return token
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getToken() {  
    return token;
  }



  public void setToken(String token) { 

    this.token = token;
  }

  public Vps daLink(Integer daLink) { 

    this.daLink = daLink;
    return this;
  }

  /**
   * Get daLink
   * @return daLink
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getDaLink() {  
    return daLink;
  }



  public void setDaLink(Integer daLink) { 

    this.daLink = daLink;
  }

  public Vps srLink(Integer srLink) { 

    this.srLink = srLink;
    return this;
  }

  /**
   * Get srLink
   * @return srLink
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getSrLink() {  
    return srLink;
  }



  public void setSrLink(Integer srLink) { 

    this.srLink = srLink;
  }

  public Vps cpData(VpsCPData cpData) { 

    this.cpData = cpData;
    return this;
  }

  /**
   * Get cpData
   * @return cpData
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsCPData getCpData() {  
    return cpData;
  }



  public void setCpData(VpsCPData cpData) { 

    this.cpData = cpData;
  }

  public Vps daData(VpsDAData daData) { 

    this.daData = daData;
    return this;
  }

  /**
   * Get daData
   * @return daData
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsDAData getDaData() {  
    return daData;
  }



  public void setDaData(VpsDAData daData) { 

    this.daData = daData;
  }

  public Vps plesk12Data(VpsPlesk12Data plesk12Data) { 

    this.plesk12Data = plesk12Data;
    return this;
  }

  /**
   * Get plesk12Data
   * @return plesk12Data
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsPlesk12Data getPlesk12Data() {  
    return plesk12Data;
  }



  public void setPlesk12Data(VpsPlesk12Data plesk12Data) { 

    this.plesk12Data = plesk12Data;
  }

  public Vps serviceAddons(VpsServiceAddons serviceAddons) { 

    this.serviceAddons = serviceAddons;
    return this;
  }

  /**
   * Get serviceAddons
   * @return serviceAddons
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsServiceAddons getServiceAddons() {  
    return serviceAddons;
  }



  public void setServiceAddons(VpsServiceAddons serviceAddons) { 

    this.serviceAddons = serviceAddons;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Vps vps = (Vps) o;
    return Objects.equals(this.serviceInfo, vps.serviceInfo) &&
        Objects.equals(this.clientLinks, vps.clientLinks) &&
        Objects.equals(this.billingDetails, vps.billingDetails) &&
        Objects.equals(this.custCurrency, vps.custCurrency) &&
        Objects.equals(this.custCurrencySymbol, vps.custCurrencySymbol) &&
        Objects.equals(this.serviceMaster, vps.serviceMaster) &&
        Objects.equals(this._package, vps._package) &&
        Objects.equals(this.osTemplate, vps.osTemplate) &&
        Objects.equals(this.serviceExtra, vps.serviceExtra) &&
        Objects.equals(this.extraInfoTables, vps.extraInfoTables) &&
        Objects.equals(this.cpuGraphData, vps.cpuGraphData) &&
        Objects.equals(this.module, vps.module) &&
        Objects.equals(this.token, vps.token) &&
        Objects.equals(this.daLink, vps.daLink) &&
        Objects.equals(this.srLink, vps.srLink) &&
        Objects.equals(this.cpData, vps.cpData) &&
        Objects.equals(this.daData, vps.daData) &&
        Objects.equals(this.plesk12Data, vps.plesk12Data) &&
        Objects.equals(this.serviceAddons, vps.serviceAddons);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceInfo, clientLinks, billingDetails, custCurrency, custCurrencySymbol, serviceMaster, _package, osTemplate, serviceExtra, extraInfoTables, cpuGraphData, module, token, daLink, srLink, cpData, daData, plesk12Data, serviceAddons);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Vps {\n");
    
    sb.append("    serviceInfo: ").append(toIndentedString(serviceInfo)).append("\n");
    sb.append("    clientLinks: ").append(toIndentedString(clientLinks)).append("\n");
    sb.append("    billingDetails: ").append(toIndentedString(billingDetails)).append("\n");
    sb.append("    custCurrency: ").append(toIndentedString(custCurrency)).append("\n");
    sb.append("    custCurrencySymbol: ").append(toIndentedString(custCurrencySymbol)).append("\n");
    sb.append("    serviceMaster: ").append(toIndentedString(serviceMaster)).append("\n");
    sb.append("    _package: ").append(toIndentedString(_package)).append("\n");
    sb.append("    osTemplate: ").append(toIndentedString(osTemplate)).append("\n");
    sb.append("    serviceExtra: ").append(toIndentedString(serviceExtra)).append("\n");
    sb.append("    extraInfoTables: ").append(toIndentedString(extraInfoTables)).append("\n");
    sb.append("    cpuGraphData: ").append(toIndentedString(cpuGraphData)).append("\n");
    sb.append("    module: ").append(toIndentedString(module)).append("\n");
    sb.append("    token: ").append(toIndentedString(token)).append("\n");
    sb.append("    daLink: ").append(toIndentedString(daLink)).append("\n");
    sb.append("    srLink: ").append(toIndentedString(srLink)).append("\n");
    sb.append("    cpData: ").append(toIndentedString(cpData)).append("\n");
    sb.append("    daData: ").append(toIndentedString(daData)).append("\n");
    sb.append("    plesk12Data: ").append(toIndentedString(plesk12Data)).append("\n");
    sb.append("    serviceAddons: ").append(toIndentedString(serviceAddons)).append("\n");
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

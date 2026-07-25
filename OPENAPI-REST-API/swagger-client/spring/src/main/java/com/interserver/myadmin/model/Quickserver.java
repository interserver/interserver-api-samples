package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.QuickserverBillingDetails;
import com.interserver.myadmin.model.QuickserverClientLink;
import com.interserver.myadmin.model.QuickserverExtraInfoTables;
import com.interserver.myadmin.model.QuickserverServiceExtra;
import com.interserver.myadmin.model.QuickserverServiceInfo;
import com.interserver.myadmin.model.QuickserverServiceMaster;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
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
 * Quickserver
 */
@Validated
@NotUndefined



public class Quickserver   {
  @JsonProperty("serviceInfo")

  private QuickserverServiceInfo serviceInfo = null;

  @JsonProperty("client_links")
  @Valid
  private List<QuickserverClientLink> clientLinks = new ArrayList<>();
  @JsonProperty("billingDetails")

  private QuickserverBillingDetails billingDetails = null;

  @JsonProperty("custCurrency")

  private String custCurrency = null;

  @JsonProperty("custCurrencySymbol")

  private String custCurrencySymbol = null;

  @JsonProperty("serviceMaster")

  private QuickserverServiceMaster serviceMaster = null;

  @JsonProperty("package")

  private String _package = null;

  @JsonProperty("os_template")

  private String osTemplate = null;

  @JsonProperty("serviceExtra")

  private QuickserverServiceExtra serviceExtra = null;

  @JsonProperty("extraInfoTables")

  private QuickserverExtraInfoTables extraInfoTables = null;

  @JsonProperty("cpu_graph_data")

  private String cpuGraphData = null;

  @JsonProperty("bandwidth_xaxis")

  private String bandwidthXaxis = null;

  @JsonProperty("bandwidth_yaxis")

  private String bandwidthYaxis = null;

  @JsonProperty("module")

  private String module = null;

  @JsonProperty("token")

  private String token = null;

  @JsonProperty("service_disk_used")

  private String serviceDiskUsed = null;

  @JsonProperty("service_disk_total")

  private String serviceDiskTotal = null;

  @JsonProperty("disk_percentage")

  private BigDecimal diskPercentage = null;

  @JsonProperty("memory")

  private String memory = null;

  @JsonProperty("hdd")

  private String hdd = null;

  @JsonProperty("service_overview_extra")
  @Valid
  private List<String> serviceOverviewExtra = new ArrayList<>();

  public Quickserver serviceInfo(QuickserverServiceInfo serviceInfo) { 

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
  public QuickserverServiceInfo getServiceInfo() {  
    return serviceInfo;
  }



  public void setServiceInfo(QuickserverServiceInfo serviceInfo) { 

    this.serviceInfo = serviceInfo;
  }

  public Quickserver clientLinks(List<QuickserverClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
    return this;
  }

  public Quickserver addClientLinksItem(QuickserverClientLink clientLinksItem) {
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
  public List<QuickserverClientLink> getClientLinks() {  
    return clientLinks;
  }



  public void setClientLinks(List<QuickserverClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
  }

  public Quickserver billingDetails(QuickserverBillingDetails billingDetails) { 

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
  public QuickserverBillingDetails getBillingDetails() {  
    return billingDetails;
  }



  public void setBillingDetails(QuickserverBillingDetails billingDetails) { 

    this.billingDetails = billingDetails;
  }

  public Quickserver custCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
    return this;
  }

  /**
   * Currency of the customer
   * @return custCurrency
   **/
  
  @Schema(example = "USD", required = true, description = "Currency of the customer")
  
  @NotNull
  public String getCustCurrency() {  
    return custCurrency;
  }



  public void setCustCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
  }

  public Quickserver custCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

  /**
   * Currency symbol of the customer
   * @return custCurrencySymbol
   **/
  
  @Schema(example = "$", required = true, description = "Currency symbol of the customer")
  
  @NotNull
  public String getCustCurrencySymbol() {  
    return custCurrencySymbol;
  }



  public void setCustCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
  }

  public Quickserver serviceMaster(QuickserverServiceMaster serviceMaster) { 

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
  public QuickserverServiceMaster getServiceMaster() {  
    return serviceMaster;
  }



  public void setServiceMaster(QuickserverServiceMaster serviceMaster) { 

    this.serviceMaster = serviceMaster;
  }

  public Quickserver _package(String _package) { 

    this._package = _package;
    return this;
  }

  /**
   * Package name
   * @return _package
   **/
  
  @Schema(example = "Rapid Deploy Server", required = true, description = "Package name")
  
  @NotNull
  public String getPackage() {  
    return _package;
  }



  public void setPackage(String _package) { 

    this._package = _package;
  }

  public Quickserver osTemplate(String osTemplate) { 

    this.osTemplate = osTemplate;
    return this;
  }

  /**
   * Operating system template
   * @return osTemplate
   **/
  
  @Schema(example = "Ubuntu 22.04", required = true, description = "Operating system template")
  
  @NotNull
  public String getOsTemplate() {  
    return osTemplate;
  }



  public void setOsTemplate(String osTemplate) { 

    this.osTemplate = osTemplate;
  }

  public Quickserver serviceExtra(QuickserverServiceExtra serviceExtra) { 

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
  public QuickserverServiceExtra getServiceExtra() {  
    return serviceExtra;
  }



  public void setServiceExtra(QuickserverServiceExtra serviceExtra) { 

    this.serviceExtra = serviceExtra;
  }

  public Quickserver extraInfoTables(QuickserverExtraInfoTables extraInfoTables) { 

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
  public QuickserverExtraInfoTables getExtraInfoTables() {  
    return extraInfoTables;
  }



  public void setExtraInfoTables(QuickserverExtraInfoTables extraInfoTables) { 

    this.extraInfoTables = extraInfoTables;
  }

  public Quickserver cpuGraphData(String cpuGraphData) { 

    this.cpuGraphData = cpuGraphData;
    return this;
  }

  /**
   * CPU graph data
   * @return cpuGraphData
   **/
  
  @Schema(example = "{\"labels\":[],\"value\":[]}", required = true, description = "CPU graph data")
  
  @NotNull
  public String getCpuGraphData() {  
    return cpuGraphData;
  }



  public void setCpuGraphData(String cpuGraphData) { 

    this.cpuGraphData = cpuGraphData;
  }

  public Quickserver bandwidthXaxis(String bandwidthXaxis) { 

    this.bandwidthXaxis = bandwidthXaxis;
    return this;
  }

  /**
   * Bandwidth x-axis data
   * @return bandwidthXaxis
   **/
  
  @Schema(example = "[]", required = true, description = "Bandwidth x-axis data")
  
  @NotNull
  public String getBandwidthXaxis() {  
    return bandwidthXaxis;
  }



  public void setBandwidthXaxis(String bandwidthXaxis) { 

    this.bandwidthXaxis = bandwidthXaxis;
  }

  public Quickserver bandwidthYaxis(String bandwidthYaxis) { 

    this.bandwidthYaxis = bandwidthYaxis;
    return this;
  }

  /**
   * Bandwidth y-axis data
   * @return bandwidthYaxis
   **/
  
  @Schema(example = "[]", required = true, description = "Bandwidth y-axis data")
  
  @NotNull
  public String getBandwidthYaxis() {  
    return bandwidthYaxis;
  }



  public void setBandwidthYaxis(String bandwidthYaxis) { 

    this.bandwidthYaxis = bandwidthYaxis;
  }

  public Quickserver module(String module) { 

    this.module = module;
    return this;
  }

  /**
   * Module information
   * @return module
   **/
  
  @Schema(example = "quickservers", required = true, description = "Module information")
  
  @NotNull
  public String getModule() {  
    return module;
  }



  public void setModule(String module) { 

    this.module = module;
  }

  public Quickserver token(String token) { 

    this.token = token;
    return this;
  }

  /**
   * Authentication token
   * @return token
   **/
  
  @Schema(example = "%3Ftoken%3DAKLFIJOAQIRFOPIEWQRURQOIURWQOI", required = true, description = "Authentication token")
  
  @NotNull
  public String getToken() {  
    return token;
  }



  public void setToken(String token) { 

    this.token = token;
  }

  public Quickserver serviceDiskUsed(String serviceDiskUsed) { 

    this.serviceDiskUsed = serviceDiskUsed;
    return this;
  }

  /**
   * Used disk space
   * @return serviceDiskUsed
   **/
  
  @Schema(example = "0.00 GB", required = true, description = "Used disk space")
  
  @NotNull
  public String getServiceDiskUsed() {  
    return serviceDiskUsed;
  }



  public void setServiceDiskUsed(String serviceDiskUsed) { 

    this.serviceDiskUsed = serviceDiskUsed;
  }

  public Quickserver serviceDiskTotal(String serviceDiskTotal) { 

    this.serviceDiskTotal = serviceDiskTotal;
    return this;
  }

  /**
   * Total disk space
   * @return serviceDiskTotal
   **/
  
  @Schema(example = "0.00 GB", required = true, description = "Total disk space")
  
  @NotNull
  public String getServiceDiskTotal() {  
    return serviceDiskTotal;
  }



  public void setServiceDiskTotal(String serviceDiskTotal) { 

    this.serviceDiskTotal = serviceDiskTotal;
  }

  public Quickserver diskPercentage(BigDecimal diskPercentage) { 

    this.diskPercentage = diskPercentage;
    return this;
  }

  /**
   * Disk usage percentage
   * @return diskPercentage
   **/
  
  @Schema(example = "32.27", required = true, description = "Disk usage percentage")
  
@Valid
  @NotNull
  public BigDecimal getDiskPercentage() {  
    return diskPercentage;
  }



  public void setDiskPercentage(BigDecimal diskPercentage) { 

    this.diskPercentage = diskPercentage;
  }

  public Quickserver memory(String memory) { 

    this.memory = memory;
    return this;
  }

  /**
   * Memory information
   * @return memory
   **/
  
  @Schema(example = "0GB", required = true, description = "Memory information")
  
  @NotNull
  public String getMemory() {  
    return memory;
  }



  public void setMemory(String memory) { 

    this.memory = memory;
  }

  public Quickserver hdd(String hdd) { 

    this.hdd = hdd;
    return this;
  }

  /**
   * HDD information
   * @return hdd
   **/
  
  @Schema(example = "0GB", required = true, description = "HDD information")
  
  @NotNull
  public String getHdd() {  
    return hdd;
  }



  public void setHdd(String hdd) { 

    this.hdd = hdd;
  }

  public Quickserver serviceOverviewExtra(List<String> serviceOverviewExtra) { 

    this.serviceOverviewExtra = serviceOverviewExtra;
    return this;
  }

  public Quickserver addServiceOverviewExtraItem(String serviceOverviewExtraItem) {
    this.serviceOverviewExtra.add(serviceOverviewExtraItem);
    return this;
  }

  /**
   * Get serviceOverviewExtra
   * @return serviceOverviewExtra
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public List<String> getServiceOverviewExtra() {  
    return serviceOverviewExtra;
  }



  public void setServiceOverviewExtra(List<String> serviceOverviewExtra) { 

    this.serviceOverviewExtra = serviceOverviewExtra;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Quickserver quickserver = (Quickserver) o;
    return Objects.equals(this.serviceInfo, quickserver.serviceInfo) &&
        Objects.equals(this.clientLinks, quickserver.clientLinks) &&
        Objects.equals(this.billingDetails, quickserver.billingDetails) &&
        Objects.equals(this.custCurrency, quickserver.custCurrency) &&
        Objects.equals(this.custCurrencySymbol, quickserver.custCurrencySymbol) &&
        Objects.equals(this.serviceMaster, quickserver.serviceMaster) &&
        Objects.equals(this._package, quickserver._package) &&
        Objects.equals(this.osTemplate, quickserver.osTemplate) &&
        Objects.equals(this.serviceExtra, quickserver.serviceExtra) &&
        Objects.equals(this.extraInfoTables, quickserver.extraInfoTables) &&
        Objects.equals(this.cpuGraphData, quickserver.cpuGraphData) &&
        Objects.equals(this.bandwidthXaxis, quickserver.bandwidthXaxis) &&
        Objects.equals(this.bandwidthYaxis, quickserver.bandwidthYaxis) &&
        Objects.equals(this.module, quickserver.module) &&
        Objects.equals(this.token, quickserver.token) &&
        Objects.equals(this.serviceDiskUsed, quickserver.serviceDiskUsed) &&
        Objects.equals(this.serviceDiskTotal, quickserver.serviceDiskTotal) &&
        Objects.equals(this.diskPercentage, quickserver.diskPercentage) &&
        Objects.equals(this.memory, quickserver.memory) &&
        Objects.equals(this.hdd, quickserver.hdd) &&
        Objects.equals(this.serviceOverviewExtra, quickserver.serviceOverviewExtra);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceInfo, clientLinks, billingDetails, custCurrency, custCurrencySymbol, serviceMaster, _package, osTemplate, serviceExtra, extraInfoTables, cpuGraphData, bandwidthXaxis, bandwidthYaxis, module, token, serviceDiskUsed, serviceDiskTotal, diskPercentage, memory, hdd, serviceOverviewExtra);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Quickserver {\n");
    
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
    sb.append("    bandwidthXaxis: ").append(toIndentedString(bandwidthXaxis)).append("\n");
    sb.append("    bandwidthYaxis: ").append(toIndentedString(bandwidthYaxis)).append("\n");
    sb.append("    module: ").append(toIndentedString(module)).append("\n");
    sb.append("    token: ").append(toIndentedString(token)).append("\n");
    sb.append("    serviceDiskUsed: ").append(toIndentedString(serviceDiskUsed)).append("\n");
    sb.append("    serviceDiskTotal: ").append(toIndentedString(serviceDiskTotal)).append("\n");
    sb.append("    diskPercentage: ").append(toIndentedString(diskPercentage)).append("\n");
    sb.append("    memory: ").append(toIndentedString(memory)).append("\n");
    sb.append("    hdd: ").append(toIndentedString(hdd)).append("\n");
    sb.append("    serviceOverviewExtra: ").append(toIndentedString(serviceOverviewExtra)).append("\n");
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

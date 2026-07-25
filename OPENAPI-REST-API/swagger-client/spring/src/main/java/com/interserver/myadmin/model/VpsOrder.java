package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsOrderLocationNames;
import com.interserver.myadmin.model.VpsOrderLocationStock;
import com.interserver.myadmin.model.VpsOrderOsNames;
import com.interserver.myadmin.model.VpsOrderPackageCosts;
import com.interserver.myadmin.model.VpsOrderPlatformNames;
import com.interserver.myadmin.model.VpsOrderPlatformPackages;
import com.interserver.myadmin.model.VpsOrderServiceTypes;
import com.interserver.myadmin.model.VpsOrderTemplates;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Pricing and configuration options for ordering a new VPS, including slice costs by platform and available OS templates.
 */
@Schema(description = "Pricing and configuration options for ordering a new VPS, including slice costs by platform and available OS templates.")
@Validated
@NotUndefined



public class VpsOrder   {
  @JsonProperty("vpsSliceSsdOvzCost")

  private BigDecimal vpsSliceSsdOvzCost = null;

  @JsonProperty("vpsSliceOvzCost")

  private BigDecimal vpsSliceOvzCost = null;

  @JsonProperty("vpsSliceSsdVirtuozzoCost")

  private BigDecimal vpsSliceSsdVirtuozzoCost = null;

  @JsonProperty("vpsSliceVirtuozzoCost")

  private BigDecimal vpsSliceVirtuozzoCost = null;

  @JsonProperty("vpsSliceHypervCost")

  private BigDecimal vpsSliceHypervCost = null;

  @JsonProperty("vpsSliceVmwareCost")

  private BigDecimal vpsSliceVmwareCost = null;

  @JsonProperty("vpsSliceLxcCost")

  private BigDecimal vpsSliceLxcCost = null;

  @JsonProperty("vpsSliceXenCost")

  private BigDecimal vpsSliceXenCost = null;

  @JsonProperty("vpsSliceKvmLCost")

  private BigDecimal vpsSliceKvmLCost = null;

  @JsonProperty("vpsSliceKvmStorageCost")

  private BigDecimal vpsSliceKvmStorageCost = null;

  @JsonProperty("vpsNyCost")

  private BigDecimal vpsNyCost = null;

  @JsonProperty("vpsSliceKvmWCost")

  private BigDecimal vpsSliceKvmWCost = null;

  @JsonProperty("cpanelCost")

  private BigDecimal cpanelCost = null;

  @JsonProperty("daCost")

  private BigDecimal daCost = null;

  @JsonProperty("ramSlice")

  private String ramSlice = null;

  @JsonProperty("hdSlice")

  private String hdSlice = null;

  @JsonProperty("hdStorageSlice")

  private String hdStorageSlice = null;

  @JsonProperty("bwSlice")

  private String bwSlice = null;

  @JsonProperty("bwType")

  private String bwType = null;

  @JsonProperty("bwTotal")

  private BigDecimal bwTotal = null;

  @JsonProperty("maxSlices")

  private String maxSlices = null;

  @JsonProperty("platformPackages")

  private VpsOrderPlatformPackages platformPackages = null;

  @JsonProperty("platformNames")

  private VpsOrderPlatformNames platformNames = null;

  @JsonProperty("packageCosts")

  private VpsOrderPackageCosts packageCosts = null;

  @JsonProperty("locationStock")

  private VpsOrderLocationStock locationStock = null;

  @JsonProperty("locationNames")

  private VpsOrderLocationNames locationNames = null;

  @JsonProperty("osNames")

  private VpsOrderOsNames osNames = null;

  @JsonProperty("templates")

  private VpsOrderTemplates templates = null;

  @JsonProperty("serviceTypes")

  private VpsOrderServiceTypes serviceTypes = null;

  @JsonProperty("currency")

  private String currency = null;

  @JsonProperty("currencySymbol")

  private String currencySymbol = null;


  public VpsOrder vpsSliceSsdOvzCost(BigDecimal vpsSliceSsdOvzCost) { 

    this.vpsSliceSsdOvzCost = vpsSliceSsdOvzCost;
    return this;
  }

  /**
   * Cost of VPS Slice SSD OVZ
   * @return vpsSliceSsdOvzCost
   **/
  
  @Schema(example = "9", required = true, description = "Cost of VPS Slice SSD OVZ")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceSsdOvzCost() {  
    return vpsSliceSsdOvzCost;
  }



  public void setVpsSliceSsdOvzCost(BigDecimal vpsSliceSsdOvzCost) { 

    this.vpsSliceSsdOvzCost = vpsSliceSsdOvzCost;
  }

  public VpsOrder vpsSliceOvzCost(BigDecimal vpsSliceOvzCost) { 

    this.vpsSliceOvzCost = vpsSliceOvzCost;
    return this;
  }

  /**
   * Cost of VPS Slice OVZ
   * @return vpsSliceOvzCost
   **/
  
  @Schema(example = "6", required = true, description = "Cost of VPS Slice OVZ")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceOvzCost() {  
    return vpsSliceOvzCost;
  }



  public void setVpsSliceOvzCost(BigDecimal vpsSliceOvzCost) { 

    this.vpsSliceOvzCost = vpsSliceOvzCost;
  }

  public VpsOrder vpsSliceSsdVirtuozzoCost(BigDecimal vpsSliceSsdVirtuozzoCost) { 

    this.vpsSliceSsdVirtuozzoCost = vpsSliceSsdVirtuozzoCost;
    return this;
  }

  /**
   * Cost of VPS Slice SSD Virtuozzo
   * @return vpsSliceSsdVirtuozzoCost
   **/
  
  @Schema(example = "9", required = true, description = "Cost of VPS Slice SSD Virtuozzo")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceSsdVirtuozzoCost() {  
    return vpsSliceSsdVirtuozzoCost;
  }



  public void setVpsSliceSsdVirtuozzoCost(BigDecimal vpsSliceSsdVirtuozzoCost) { 

    this.vpsSliceSsdVirtuozzoCost = vpsSliceSsdVirtuozzoCost;
  }

  public VpsOrder vpsSliceVirtuozzoCost(BigDecimal vpsSliceVirtuozzoCost) { 

    this.vpsSliceVirtuozzoCost = vpsSliceVirtuozzoCost;
    return this;
  }

  /**
   * Cost of VPS Slice Virtuozzo
   * @return vpsSliceVirtuozzoCost
   **/
  
  @Schema(example = "6", required = true, description = "Cost of VPS Slice Virtuozzo")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceVirtuozzoCost() {  
    return vpsSliceVirtuozzoCost;
  }



  public void setVpsSliceVirtuozzoCost(BigDecimal vpsSliceVirtuozzoCost) { 

    this.vpsSliceVirtuozzoCost = vpsSliceVirtuozzoCost;
  }

  public VpsOrder vpsSliceHypervCost(BigDecimal vpsSliceHypervCost) { 

    this.vpsSliceHypervCost = vpsSliceHypervCost;
    return this;
  }

  /**
   * Cost of VPS Slice HyperV
   * @return vpsSliceHypervCost
   **/
  
  @Schema(example = "10", required = true, description = "Cost of VPS Slice HyperV")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceHypervCost() {  
    return vpsSliceHypervCost;
  }



  public void setVpsSliceHypervCost(BigDecimal vpsSliceHypervCost) { 

    this.vpsSliceHypervCost = vpsSliceHypervCost;
  }

  public VpsOrder vpsSliceVmwareCost(BigDecimal vpsSliceVmwareCost) { 

    this.vpsSliceVmwareCost = vpsSliceVmwareCost;
    return this;
  }

  /**
   * Cost of VPS Slice VMware
   * @return vpsSliceVmwareCost
   **/
  
  @Schema(example = "10", required = true, description = "Cost of VPS Slice VMware")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceVmwareCost() {  
    return vpsSliceVmwareCost;
  }



  public void setVpsSliceVmwareCost(BigDecimal vpsSliceVmwareCost) { 

    this.vpsSliceVmwareCost = vpsSliceVmwareCost;
  }

  public VpsOrder vpsSliceLxcCost(BigDecimal vpsSliceLxcCost) { 

    this.vpsSliceLxcCost = vpsSliceLxcCost;
    return this;
  }

  /**
   * Cost of VPS Slice LXC
   * @return vpsSliceLxcCost
   **/
  
  @Schema(example = "6", required = true, description = "Cost of VPS Slice LXC")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceLxcCost() {  
    return vpsSliceLxcCost;
  }



  public void setVpsSliceLxcCost(BigDecimal vpsSliceLxcCost) { 

    this.vpsSliceLxcCost = vpsSliceLxcCost;
  }

  public VpsOrder vpsSliceXenCost(BigDecimal vpsSliceXenCost) { 

    this.vpsSliceXenCost = vpsSliceXenCost;
    return this;
  }

  /**
   * Cost of VPS Slice Xen
   * @return vpsSliceXenCost
   **/
  
  @Schema(example = "6", required = true, description = "Cost of VPS Slice Xen")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceXenCost() {  
    return vpsSliceXenCost;
  }



  public void setVpsSliceXenCost(BigDecimal vpsSliceXenCost) { 

    this.vpsSliceXenCost = vpsSliceXenCost;
  }

  public VpsOrder vpsSliceKvmLCost(BigDecimal vpsSliceKvmLCost) { 

    this.vpsSliceKvmLCost = vpsSliceKvmLCost;
    return this;
  }

  /**
   * Cost of VPS Slice KVM L
   * @return vpsSliceKvmLCost
   **/
  
  @Schema(example = "6", required = true, description = "Cost of VPS Slice KVM L")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceKvmLCost() {  
    return vpsSliceKvmLCost;
  }



  public void setVpsSliceKvmLCost(BigDecimal vpsSliceKvmLCost) { 

    this.vpsSliceKvmLCost = vpsSliceKvmLCost;
  }

  public VpsOrder vpsSliceKvmStorageCost(BigDecimal vpsSliceKvmStorageCost) { 

    this.vpsSliceKvmStorageCost = vpsSliceKvmStorageCost;
    return this;
  }

  /**
   * Cost of VPS Slice KVM Storage
   * @return vpsSliceKvmStorageCost
   **/
  
  @Schema(example = "6", required = true, description = "Cost of VPS Slice KVM Storage")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceKvmStorageCost() {  
    return vpsSliceKvmStorageCost;
  }



  public void setVpsSliceKvmStorageCost(BigDecimal vpsSliceKvmStorageCost) { 

    this.vpsSliceKvmStorageCost = vpsSliceKvmStorageCost;
  }

  public VpsOrder vpsNyCost(BigDecimal vpsNyCost) { 

    this.vpsNyCost = vpsNyCost;
    return this;
  }

  /**
   * Cost of VPS in NY
   * @return vpsNyCost
   **/
  
  @Schema(example = "3", required = true, description = "Cost of VPS in NY")
  
@Valid
  @NotNull
  public BigDecimal getVpsNyCost() {  
    return vpsNyCost;
  }



  public void setVpsNyCost(BigDecimal vpsNyCost) { 

    this.vpsNyCost = vpsNyCost;
  }

  public VpsOrder vpsSliceKvmWCost(BigDecimal vpsSliceKvmWCost) { 

    this.vpsSliceKvmWCost = vpsSliceKvmWCost;
    return this;
  }

  /**
   * Cost of VPS Slice KVM Windows
   * @return vpsSliceKvmWCost
   **/
  
  @Schema(example = "10", required = true, description = "Cost of VPS Slice KVM Windows")
  
@Valid
  @NotNull
  public BigDecimal getVpsSliceKvmWCost() {  
    return vpsSliceKvmWCost;
  }



  public void setVpsSliceKvmWCost(BigDecimal vpsSliceKvmWCost) { 

    this.vpsSliceKvmWCost = vpsSliceKvmWCost;
  }

  public VpsOrder cpanelCost(BigDecimal cpanelCost) { 

    this.cpanelCost = cpanelCost;
    return this;
  }

  /**
   * Cost of cPanel
   * @return cpanelCost
   **/
  
  @Schema(example = "22", required = true, description = "Cost of cPanel")
  
@Valid
  @NotNull
  public BigDecimal getCpanelCost() {  
    return cpanelCost;
  }



  public void setCpanelCost(BigDecimal cpanelCost) { 

    this.cpanelCost = cpanelCost;
  }

  public VpsOrder daCost(BigDecimal daCost) { 

    this.daCost = daCost;
    return this;
  }

  /**
   * Cost of DirectAdmin (DA)
   * @return daCost
   **/
  
  @Schema(example = "8", required = true, description = "Cost of DirectAdmin (DA)")
  
@Valid
  @NotNull
  public BigDecimal getDaCost() {  
    return daCost;
  }



  public void setDaCost(BigDecimal daCost) { 

    this.daCost = daCost;
  }

  public VpsOrder ramSlice(String ramSlice) { 

    this.ramSlice = ramSlice;
    return this;
  }

  /**
   * RAM for VPS Slice
   * @return ramSlice
   **/
  
  @Schema(example = "2048", required = true, description = "RAM for VPS Slice")
  
  @NotNull
  public String getRamSlice() {  
    return ramSlice;
  }



  public void setRamSlice(String ramSlice) { 

    this.ramSlice = ramSlice;
  }

  public VpsOrder hdSlice(String hdSlice) { 

    this.hdSlice = hdSlice;
    return this;
  }

  /**
   * Hard Disk for VPS Slice
   * @return hdSlice
   **/
  
  @Schema(example = "30", required = true, description = "Hard Disk for VPS Slice")
  
  @NotNull
  public String getHdSlice() {  
    return hdSlice;
  }



  public void setHdSlice(String hdSlice) { 

    this.hdSlice = hdSlice;
  }

  public VpsOrder hdStorageSlice(String hdStorageSlice) { 

    this.hdStorageSlice = hdStorageSlice;
    return this;
  }

  /**
   * Storage Hard Disk for VPS Slice
   * @return hdStorageSlice
   **/
  
  @Schema(example = "1000", required = true, description = "Storage Hard Disk for VPS Slice")
  
  @NotNull
  public String getHdStorageSlice() {  
    return hdStorageSlice;
  }



  public void setHdStorageSlice(String hdStorageSlice) { 

    this.hdStorageSlice = hdStorageSlice;
  }

  public VpsOrder bwSlice(String bwSlice) { 

    this.bwSlice = bwSlice;
    return this;
  }

  /**
   * Bandwidth for VPS Slice
   * @return bwSlice
   **/
  
  @Schema(example = "2000", required = true, description = "Bandwidth for VPS Slice")
  
  @NotNull
  public String getBwSlice() {  
    return bwSlice;
  }



  public void setBwSlice(String bwSlice) { 

    this.bwSlice = bwSlice;
  }

  public VpsOrder bwType(String bwType) { 

    this.bwType = bwType;
    return this;
  }

  /**
   * Bandwidth Type
   * @return bwType
   **/
  
  @Schema(example = "2", required = true, description = "Bandwidth Type")
  
  @NotNull
  public String getBwType() {  
    return bwType;
  }



  public void setBwType(String bwType) { 

    this.bwType = bwType;
  }

  public VpsOrder bwTotal(BigDecimal bwTotal) { 

    this.bwTotal = bwTotal;
    return this;
  }

  /**
   * Total Bandwidth
   * @return bwTotal
   **/
  
  @Schema(example = "2", required = true, description = "Total Bandwidth")
  
@Valid
  @NotNull
  public BigDecimal getBwTotal() {  
    return bwTotal;
  }



  public void setBwTotal(BigDecimal bwTotal) { 

    this.bwTotal = bwTotal;
  }

  public VpsOrder maxSlices(String maxSlices) { 

    this.maxSlices = maxSlices;
    return this;
  }

  /**
   * Maximum Slices
   * @return maxSlices
   **/
  
  @Schema(example = "16", required = true, description = "Maximum Slices")
  
  @NotNull
  public String getMaxSlices() {  
    return maxSlices;
  }



  public void setMaxSlices(String maxSlices) { 

    this.maxSlices = maxSlices;
  }

  public VpsOrder platformPackages(VpsOrderPlatformPackages platformPackages) { 

    this.platformPackages = platformPackages;
    return this;
  }

  /**
   * Get platformPackages
   * @return platformPackages
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsOrderPlatformPackages getPlatformPackages() {  
    return platformPackages;
  }



  public void setPlatformPackages(VpsOrderPlatformPackages platformPackages) { 

    this.platformPackages = platformPackages;
  }

  public VpsOrder platformNames(VpsOrderPlatformNames platformNames) { 

    this.platformNames = platformNames;
    return this;
  }

  /**
   * Get platformNames
   * @return platformNames
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsOrderPlatformNames getPlatformNames() {  
    return platformNames;
  }



  public void setPlatformNames(VpsOrderPlatformNames platformNames) { 

    this.platformNames = platformNames;
  }

  public VpsOrder packageCosts(VpsOrderPackageCosts packageCosts) { 

    this.packageCosts = packageCosts;
    return this;
  }

  /**
   * Get packageCosts
   * @return packageCosts
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsOrderPackageCosts getPackageCosts() {  
    return packageCosts;
  }



  public void setPackageCosts(VpsOrderPackageCosts packageCosts) { 

    this.packageCosts = packageCosts;
  }

  public VpsOrder locationStock(VpsOrderLocationStock locationStock) { 

    this.locationStock = locationStock;
    return this;
  }

  /**
   * Get locationStock
   * @return locationStock
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsOrderLocationStock getLocationStock() {  
    return locationStock;
  }



  public void setLocationStock(VpsOrderLocationStock locationStock) { 

    this.locationStock = locationStock;
  }

  public VpsOrder locationNames(VpsOrderLocationNames locationNames) { 

    this.locationNames = locationNames;
    return this;
  }

  /**
   * Get locationNames
   * @return locationNames
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsOrderLocationNames getLocationNames() {  
    return locationNames;
  }



  public void setLocationNames(VpsOrderLocationNames locationNames) { 

    this.locationNames = locationNames;
  }

  public VpsOrder osNames(VpsOrderOsNames osNames) { 

    this.osNames = osNames;
    return this;
  }

  /**
   * Get osNames
   * @return osNames
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsOrderOsNames getOsNames() {  
    return osNames;
  }



  public void setOsNames(VpsOrderOsNames osNames) { 

    this.osNames = osNames;
  }

  public VpsOrder templates(VpsOrderTemplates templates) { 

    this.templates = templates;
    return this;
  }

  /**
   * Get templates
   * @return templates
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsOrderTemplates getTemplates() {  
    return templates;
  }



  public void setTemplates(VpsOrderTemplates templates) { 

    this.templates = templates;
  }

  public VpsOrder serviceTypes(VpsOrderServiceTypes serviceTypes) { 

    this.serviceTypes = serviceTypes;
    return this;
  }

  /**
   * Get serviceTypes
   * @return serviceTypes
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsOrderServiceTypes getServiceTypes() {  
    return serviceTypes;
  }



  public void setServiceTypes(VpsOrderServiceTypes serviceTypes) { 

    this.serviceTypes = serviceTypes;
  }

  public VpsOrder currency(String currency) { 

    this.currency = currency;
    return this;
  }

  /**
   * Currency
   * @return currency
   **/
  
  @Schema(example = "USD", required = true, description = "Currency")
  
  @NotNull
  public String getCurrency() {  
    return currency;
  }



  public void setCurrency(String currency) { 

    this.currency = currency;
  }

  public VpsOrder currencySymbol(String currencySymbol) { 

    this.currencySymbol = currencySymbol;
    return this;
  }

  /**
   * Currency Symbol
   * @return currencySymbol
   **/
  
  @Schema(example = "$", required = true, description = "Currency Symbol")
  
  @NotNull
  public String getCurrencySymbol() {  
    return currencySymbol;
  }



  public void setCurrencySymbol(String currencySymbol) { 

    this.currencySymbol = currencySymbol;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsOrder vpsOrder = (VpsOrder) o;
    return Objects.equals(this.vpsSliceSsdOvzCost, vpsOrder.vpsSliceSsdOvzCost) &&
        Objects.equals(this.vpsSliceOvzCost, vpsOrder.vpsSliceOvzCost) &&
        Objects.equals(this.vpsSliceSsdVirtuozzoCost, vpsOrder.vpsSliceSsdVirtuozzoCost) &&
        Objects.equals(this.vpsSliceVirtuozzoCost, vpsOrder.vpsSliceVirtuozzoCost) &&
        Objects.equals(this.vpsSliceHypervCost, vpsOrder.vpsSliceHypervCost) &&
        Objects.equals(this.vpsSliceVmwareCost, vpsOrder.vpsSliceVmwareCost) &&
        Objects.equals(this.vpsSliceLxcCost, vpsOrder.vpsSliceLxcCost) &&
        Objects.equals(this.vpsSliceXenCost, vpsOrder.vpsSliceXenCost) &&
        Objects.equals(this.vpsSliceKvmLCost, vpsOrder.vpsSliceKvmLCost) &&
        Objects.equals(this.vpsSliceKvmStorageCost, vpsOrder.vpsSliceKvmStorageCost) &&
        Objects.equals(this.vpsNyCost, vpsOrder.vpsNyCost) &&
        Objects.equals(this.vpsSliceKvmWCost, vpsOrder.vpsSliceKvmWCost) &&
        Objects.equals(this.cpanelCost, vpsOrder.cpanelCost) &&
        Objects.equals(this.daCost, vpsOrder.daCost) &&
        Objects.equals(this.ramSlice, vpsOrder.ramSlice) &&
        Objects.equals(this.hdSlice, vpsOrder.hdSlice) &&
        Objects.equals(this.hdStorageSlice, vpsOrder.hdStorageSlice) &&
        Objects.equals(this.bwSlice, vpsOrder.bwSlice) &&
        Objects.equals(this.bwType, vpsOrder.bwType) &&
        Objects.equals(this.bwTotal, vpsOrder.bwTotal) &&
        Objects.equals(this.maxSlices, vpsOrder.maxSlices) &&
        Objects.equals(this.platformPackages, vpsOrder.platformPackages) &&
        Objects.equals(this.platformNames, vpsOrder.platformNames) &&
        Objects.equals(this.packageCosts, vpsOrder.packageCosts) &&
        Objects.equals(this.locationStock, vpsOrder.locationStock) &&
        Objects.equals(this.locationNames, vpsOrder.locationNames) &&
        Objects.equals(this.osNames, vpsOrder.osNames) &&
        Objects.equals(this.templates, vpsOrder.templates) &&
        Objects.equals(this.serviceTypes, vpsOrder.serviceTypes) &&
        Objects.equals(this.currency, vpsOrder.currency) &&
        Objects.equals(this.currencySymbol, vpsOrder.currencySymbol);
  }

  @Override
  public int hashCode() {
    return Objects.hash(vpsSliceSsdOvzCost, vpsSliceOvzCost, vpsSliceSsdVirtuozzoCost, vpsSliceVirtuozzoCost, vpsSliceHypervCost, vpsSliceVmwareCost, vpsSliceLxcCost, vpsSliceXenCost, vpsSliceKvmLCost, vpsSliceKvmStorageCost, vpsNyCost, vpsSliceKvmWCost, cpanelCost, daCost, ramSlice, hdSlice, hdStorageSlice, bwSlice, bwType, bwTotal, maxSlices, platformPackages, platformNames, packageCosts, locationStock, locationNames, osNames, templates, serviceTypes, currency, currencySymbol);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrder {\n");
    
    sb.append("    vpsSliceSsdOvzCost: ").append(toIndentedString(vpsSliceSsdOvzCost)).append("\n");
    sb.append("    vpsSliceOvzCost: ").append(toIndentedString(vpsSliceOvzCost)).append("\n");
    sb.append("    vpsSliceSsdVirtuozzoCost: ").append(toIndentedString(vpsSliceSsdVirtuozzoCost)).append("\n");
    sb.append("    vpsSliceVirtuozzoCost: ").append(toIndentedString(vpsSliceVirtuozzoCost)).append("\n");
    sb.append("    vpsSliceHypervCost: ").append(toIndentedString(vpsSliceHypervCost)).append("\n");
    sb.append("    vpsSliceVmwareCost: ").append(toIndentedString(vpsSliceVmwareCost)).append("\n");
    sb.append("    vpsSliceLxcCost: ").append(toIndentedString(vpsSliceLxcCost)).append("\n");
    sb.append("    vpsSliceXenCost: ").append(toIndentedString(vpsSliceXenCost)).append("\n");
    sb.append("    vpsSliceKvmLCost: ").append(toIndentedString(vpsSliceKvmLCost)).append("\n");
    sb.append("    vpsSliceKvmStorageCost: ").append(toIndentedString(vpsSliceKvmStorageCost)).append("\n");
    sb.append("    vpsNyCost: ").append(toIndentedString(vpsNyCost)).append("\n");
    sb.append("    vpsSliceKvmWCost: ").append(toIndentedString(vpsSliceKvmWCost)).append("\n");
    sb.append("    cpanelCost: ").append(toIndentedString(cpanelCost)).append("\n");
    sb.append("    daCost: ").append(toIndentedString(daCost)).append("\n");
    sb.append("    ramSlice: ").append(toIndentedString(ramSlice)).append("\n");
    sb.append("    hdSlice: ").append(toIndentedString(hdSlice)).append("\n");
    sb.append("    hdStorageSlice: ").append(toIndentedString(hdStorageSlice)).append("\n");
    sb.append("    bwSlice: ").append(toIndentedString(bwSlice)).append("\n");
    sb.append("    bwType: ").append(toIndentedString(bwType)).append("\n");
    sb.append("    bwTotal: ").append(toIndentedString(bwTotal)).append("\n");
    sb.append("    maxSlices: ").append(toIndentedString(maxSlices)).append("\n");
    sb.append("    platformPackages: ").append(toIndentedString(platformPackages)).append("\n");
    sb.append("    platformNames: ").append(toIndentedString(platformNames)).append("\n");
    sb.append("    packageCosts: ").append(toIndentedString(packageCosts)).append("\n");
    sb.append("    locationStock: ").append(toIndentedString(locationStock)).append("\n");
    sb.append("    locationNames: ").append(toIndentedString(locationNames)).append("\n");
    sb.append("    osNames: ").append(toIndentedString(osNames)).append("\n");
    sb.append("    templates: ").append(toIndentedString(templates)).append("\n");
    sb.append("    serviceTypes: ").append(toIndentedString(serviceTypes)).append("\n");
    sb.append("    currency: ").append(toIndentedString(currency)).append("\n");
    sb.append("    currencySymbol: ").append(toIndentedString(currencySymbol)).append("\n");
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

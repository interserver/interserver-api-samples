package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsOrderLocationNames;
import com.interserver.model.VpsOrderLocationStock;
import com.interserver.model.VpsOrderOsNames;
import com.interserver.model.VpsOrderPackageCosts;
import com.interserver.model.VpsOrderPlatformNames;
import com.interserver.model.VpsOrderPlatformPackages;
import com.interserver.model.VpsOrderServiceTypes;
import com.interserver.model.VpsOrderTemplates;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class VpsOrder {
    /* Cost of VPS Slice SSD OVZ */
    BigDecimal vpsSliceSsdOvzCost
    /* Cost of VPS Slice OVZ */
    BigDecimal vpsSliceOvzCost
    /* Cost of VPS Slice SSD Virtuozzo */
    BigDecimal vpsSliceSsdVirtuozzoCost
    /* Cost of VPS Slice Virtuozzo */
    BigDecimal vpsSliceVirtuozzoCost
    /* Cost of VPS Slice HyperV */
    BigDecimal vpsSliceHypervCost
    /* Cost of VPS Slice VMware */
    BigDecimal vpsSliceVmwareCost
    /* Cost of VPS Slice LXC */
    BigDecimal vpsSliceLxcCost
    /* Cost of VPS Slice Xen */
    BigDecimal vpsSliceXenCost
    /* Cost of VPS Slice KVM L */
    BigDecimal vpsSliceKvmLCost
    /* Cost of VPS Slice KVM Storage */
    BigDecimal vpsSliceKvmStorageCost
    /* Cost of VPS in NY */
    BigDecimal vpsNyCost
    /* Cost of VPS Slice KVM Windows */
    BigDecimal vpsSliceKvmWCost
    /* Cost of cPanel */
    BigDecimal cpanelCost
    /* Cost of DirectAdmin (DA) */
    BigDecimal daCost
    /* RAM for VPS Slice */
    String ramSlice
    /* Hard Disk for VPS Slice */
    String hdSlice
    /* Storage Hard Disk for VPS Slice */
    String hdStorageSlice
    /* Bandwidth for VPS Slice */
    String bwSlice
    /* Bandwidth Type */
    String bwType
    /* Total Bandwidth */
    BigDecimal bwTotal
    /* Maximum Slices */
    String maxSlices
    
    VpsOrderPlatformPackages platformPackages
    
    VpsOrderPlatformNames platformNames
    
    VpsOrderPackageCosts packageCosts
    
    VpsOrderLocationStock locationStock
    
    VpsOrderLocationNames locationNames
    
    VpsOrderOsNames osNames
    
    VpsOrderTemplates templates
    
    VpsOrderServiceTypes serviceTypes
    /* Currency */
    String currency
    /* Currency Symbol */
    String currencySymbol
}

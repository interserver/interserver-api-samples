# interserverapi::VpsOrder

Pricing and configuration options for ordering a new VPS, including slice costs by platform and available OS templates.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vpsSliceSsdOvzCost** | **numeric** | Cost of VPS Slice SSD OVZ | 
**vpsSliceOvzCost** | **numeric** | Cost of VPS Slice OVZ | 
**vpsSliceSsdVirtuozzoCost** | **numeric** | Cost of VPS Slice SSD Virtuozzo | 
**vpsSliceVirtuozzoCost** | **numeric** | Cost of VPS Slice Virtuozzo | 
**vpsSliceHypervCost** | **numeric** | Cost of VPS Slice HyperV | 
**vpsSliceVmwareCost** | **numeric** | Cost of VPS Slice VMware | 
**vpsSliceLxcCost** | **numeric** | Cost of VPS Slice LXC | 
**vpsSliceXenCost** | **numeric** | Cost of VPS Slice Xen | 
**vpsSliceKvmLCost** | **numeric** | Cost of VPS Slice KVM L | 
**vpsSliceKvmStorageCost** | **numeric** | Cost of VPS Slice KVM Storage | 
**vpsNyCost** | **numeric** | Cost of VPS in NY | 
**vpsSliceKvmWCost** | **numeric** | Cost of VPS Slice KVM Windows | 
**cpanelCost** | **numeric** | Cost of cPanel | 
**daCost** | **numeric** | Cost of DirectAdmin (DA) | 
**ramSlice** | **character** | RAM for VPS Slice | 
**hdSlice** | **character** | Hard Disk for VPS Slice | 
**hdStorageSlice** | **character** | Storage Hard Disk for VPS Slice | 
**bwSlice** | **character** | Bandwidth for VPS Slice | 
**bwType** | **character** | Bandwidth Type | 
**bwTotal** | **numeric** | Total Bandwidth | 
**maxSlices** | **character** | Maximum Slices | 
**platformPackages** | [**VpsOrderPlatformPackages**](VpsOrder_platformPackages.md) |  | 
**platformNames** | [**VpsOrderPlatformNames**](VpsOrder_platformNames.md) |  | 
**packageCosts** | [**VpsOrderPackageCosts**](VpsOrder_packageCosts.md) |  | 
**locationStock** | [**VpsOrderLocationStock**](VpsOrder_locationStock.md) |  | 
**locationNames** | [**VpsOrderLocationNames**](VpsOrder_locationNames.md) |  | 
**osNames** | [**VpsOrderOsNames**](VpsOrder_osNames.md) |  | 
**templates** | [**VpsOrderTemplates**](VpsOrder_templates.md) |  | 
**serviceTypes** | [**VpsOrderServiceTypes**](VpsOrder_serviceTypes.md) |  | 
**currency** | **character** | Currency | 
**currencySymbol** | **character** | Currency Symbol | 



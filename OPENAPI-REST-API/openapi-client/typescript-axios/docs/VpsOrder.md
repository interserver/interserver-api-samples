# VpsOrder

Pricing and configuration options for ordering a new VPS, including slice costs by platform and available OS templates.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vpsSliceSsdOvzCost** | **number** | Cost of VPS Slice SSD OVZ | [default to undefined]
**vpsSliceOvzCost** | **number** | Cost of VPS Slice OVZ | [default to undefined]
**vpsSliceSsdVirtuozzoCost** | **number** | Cost of VPS Slice SSD Virtuozzo | [default to undefined]
**vpsSliceVirtuozzoCost** | **number** | Cost of VPS Slice Virtuozzo | [default to undefined]
**vpsSliceHypervCost** | **number** | Cost of VPS Slice HyperV | [default to undefined]
**vpsSliceVmwareCost** | **number** | Cost of VPS Slice VMware | [default to undefined]
**vpsSliceLxcCost** | **number** | Cost of VPS Slice LXC | [default to undefined]
**vpsSliceXenCost** | **number** | Cost of VPS Slice Xen | [default to undefined]
**vpsSliceKvmLCost** | **number** | Cost of VPS Slice KVM L | [default to undefined]
**vpsSliceKvmStorageCost** | **number** | Cost of VPS Slice KVM Storage | [default to undefined]
**vpsNyCost** | **number** | Cost of VPS in NY | [default to undefined]
**vpsSliceKvmWCost** | **number** | Cost of VPS Slice KVM Windows | [default to undefined]
**cpanelCost** | **number** | Cost of cPanel | [default to undefined]
**daCost** | **number** | Cost of DirectAdmin (DA) | [default to undefined]
**ramSlice** | **string** | RAM for VPS Slice | [default to undefined]
**hdSlice** | **string** | Hard Disk for VPS Slice | [default to undefined]
**hdStorageSlice** | **string** | Storage Hard Disk for VPS Slice | [default to undefined]
**bwSlice** | **string** | Bandwidth for VPS Slice | [default to undefined]
**bwType** | **string** | Bandwidth Type | [default to undefined]
**bwTotal** | **number** | Total Bandwidth | [default to undefined]
**maxSlices** | **string** | Maximum Slices | [default to undefined]
**platformPackages** | [**VpsOrderPlatformPackages**](VpsOrderPlatformPackages.md) |  | [default to undefined]
**platformNames** | [**VpsOrderPlatformNames**](VpsOrderPlatformNames.md) |  | [default to undefined]
**packageCosts** | [**VpsOrderPackageCosts**](VpsOrderPackageCosts.md) |  | [default to undefined]
**locationStock** | [**VpsOrderLocationStock**](VpsOrderLocationStock.md) |  | [default to undefined]
**locationNames** | [**VpsOrderLocationNames**](VpsOrderLocationNames.md) |  | [default to undefined]
**osNames** | [**VpsOrderOsNames**](VpsOrderOsNames.md) |  | [default to undefined]
**templates** | [**VpsOrderTemplates**](VpsOrderTemplates.md) |  | [default to undefined]
**serviceTypes** | [**VpsOrderServiceTypes**](VpsOrderServiceTypes.md) |  | [default to undefined]
**currency** | **string** | Currency | [default to undefined]
**currencySymbol** | **string** | Currency Symbol | [default to undefined]

## Example

```typescript
import { VpsOrder } from '@interserver/myadmin-client';

const instance: VpsOrder = {
    vpsSliceSsdOvzCost,
    vpsSliceOvzCost,
    vpsSliceSsdVirtuozzoCost,
    vpsSliceVirtuozzoCost,
    vpsSliceHypervCost,
    vpsSliceVmwareCost,
    vpsSliceLxcCost,
    vpsSliceXenCost,
    vpsSliceKvmLCost,
    vpsSliceKvmStorageCost,
    vpsNyCost,
    vpsSliceKvmWCost,
    cpanelCost,
    daCost,
    ramSlice,
    hdSlice,
    hdStorageSlice,
    bwSlice,
    bwType,
    bwTotal,
    maxSlices,
    platformPackages,
    platformNames,
    packageCosts,
    locationStock,
    locationNames,
    osNames,
    templates,
    serviceTypes,
    currency,
    currencySymbol,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# VpsOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VpsSliceSsdOvzCost** | **Decimal** | Cost of VPS Slice SSD OVZ | 
**VpsSliceOvzCost** | **Decimal** | Cost of VPS Slice OVZ | 
**VpsSliceSsdVirtuozzoCost** | **Decimal** | Cost of VPS Slice SSD Virtuozzo | 
**VpsSliceVirtuozzoCost** | **Decimal** | Cost of VPS Slice Virtuozzo | 
**VpsSliceHypervCost** | **Decimal** | Cost of VPS Slice HyperV | 
**VpsSliceVmwareCost** | **Decimal** | Cost of VPS Slice VMware | 
**VpsSliceLxcCost** | **Decimal** | Cost of VPS Slice LXC | 
**VpsSliceXenCost** | **Decimal** | Cost of VPS Slice Xen | 
**VpsSliceKvmLCost** | **Decimal** | Cost of VPS Slice KVM L | 
**VpsSliceKvmStorageCost** | **Decimal** | Cost of VPS Slice KVM Storage | 
**VpsNyCost** | **Decimal** | Cost of VPS in NY | 
**VpsSliceKvmWCost** | **Decimal** | Cost of VPS Slice KVM Windows | 
**CpanelCost** | **Decimal** | Cost of cPanel | 
**DaCost** | **Decimal** | Cost of DirectAdmin (DA) | 
**RamSlice** | **String** | RAM for VPS Slice | 
**HdSlice** | **String** | Hard Disk for VPS Slice | 
**HdStorageSlice** | **String** | Storage Hard Disk for VPS Slice | 
**BwSlice** | **String** | Bandwidth for VPS Slice | 
**BwType** | **String** | Bandwidth Type | 
**BwTotal** | **Decimal** | Total Bandwidth | 
**MaxSlices** | **String** | Maximum Slices | 
**PlatformPackages** | [**VpsOrderPlatformPackages**](VpsOrderPlatformPackages.md) |  | 
**PlatformNames** | [**VpsOrderPlatformNames**](VpsOrderPlatformNames.md) |  | 
**PackageCosts** | [**VpsOrderPackageCosts**](VpsOrderPackageCosts.md) |  | 
**LocationStock** | [**VpsOrderLocationStock**](VpsOrderLocationStock.md) |  | 
**LocationNames** | [**VpsOrderLocationNames**](VpsOrderLocationNames.md) |  | 
**OsNames** | [**VpsOrderOsNames**](VpsOrderOsNames.md) |  | 
**Templates** | [**VpsOrderTemplates**](VpsOrderTemplates.md) |  | 
**ServiceTypes** | [**VpsOrderServiceTypes**](VpsOrderServiceTypes.md) |  | 
**Currency** | **String** | Currency | 
**CurrencySymbol** | **String** | Currency Symbol | 

## Examples

- Prepare the resource
```powershell
$VpsOrder = Initialize-InterserverApiVpsOrder  -VpsSliceSsdOvzCost 9 `
 -VpsSliceOvzCost 6 `
 -VpsSliceSsdVirtuozzoCost 9 `
 -VpsSliceVirtuozzoCost 6 `
 -VpsSliceHypervCost 10 `
 -VpsSliceVmwareCost 10 `
 -VpsSliceLxcCost 6 `
 -VpsSliceXenCost 6 `
 -VpsSliceKvmLCost 6 `
 -VpsSliceKvmStorageCost 6 `
 -VpsNyCost 3 `
 -VpsSliceKvmWCost 10 `
 -CpanelCost 22 `
 -DaCost 8 `
 -RamSlice 2048 `
 -HdSlice 30 `
 -HdStorageSlice 1000 `
 -BwSlice 2000 `
 -BwType 2 `
 -BwTotal 2 `
 -MaxSlices 16 `
 -PlatformPackages null `
 -PlatformNames null `
 -PackageCosts null `
 -LocationStock null `
 -LocationNames null `
 -OsNames null `
 -Templates null `
 -ServiceTypes null `
 -Currency USD `
 -CurrencySymbol $
```

- Convert the resource to JSON
```powershell
$VpsOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


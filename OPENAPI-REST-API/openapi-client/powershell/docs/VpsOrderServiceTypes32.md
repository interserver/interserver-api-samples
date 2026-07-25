# VpsOrderServiceTypes32
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServicesId** | **String** |  | [optional] 
**ServicesName** | **String** |  | [optional] 
**ServicesCost** | **String** |  | [optional] 
**ServicesCategory** | **String** |  | [optional] 
**ServicesBuyable** | **String** |  | [optional] 
**ServicesType** | **String** |  | [optional] 
**ServicesField1** | **String** |  | [optional] 
**ServicesField2** | **String** |  | [optional] 
**ServicesModule** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsOrderServiceTypes32 = Initialize-InterserverApiVpsOrderServiceTypes32  -ServicesId 32 `
 -ServicesName KVM Windows VPS Slice `
 -ServicesCost 10.00 `
 -ServicesCategory 2 `
 -ServicesBuyable 1 `
 -ServicesType 1 `
 -ServicesField1 slice `
 -ServicesField2  `
 -ServicesModule vps
```

- Convert the resource to JSON
```powershell
$VpsOrderServiceTypes32 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


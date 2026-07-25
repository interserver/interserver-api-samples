# Service
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServicesId** | **Int32** |  | 
**ServicesName** | **String** |  | 
**ServicesCost** | **Decimal** |  | 
**ServicesCurrency** | **String** |  | 
**ServicesCategory** | **Int32** |  | 
**ServicesBuyable** | **Boolean** |  | 
**ServicesType** | **Int32** |  | 
**ServicesField1** | **String** |  | 
**ServicesField2** | **String** |  | 
**ServicesModule** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$Service = Initialize-InterserverApiService  -ServicesId 31 `
 -ServicesName OpenVZ VPS Slice `
 -ServicesCost 6 `
 -ServicesCurrency USD `
 -ServicesCategory 1 `
 -ServicesBuyable true `
 -ServicesType 6 `
 -ServicesField1 slice `
 -ServicesField2 null `
 -ServicesModule vps
```

- Convert the resource to JSON
```powershell
$Service | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


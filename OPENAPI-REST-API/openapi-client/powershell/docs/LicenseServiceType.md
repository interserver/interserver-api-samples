# LicenseServiceType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServicesId** | **String** | Service ID | [optional] 
**ServicesName** | **String** | Service name | [optional] 
**ServicesCost** | **String** | Service cost | [optional] 
**ServicesCategory** | **String** | Service category | [optional] 
**ServicesBuyable** | **String** | Buyable status | [optional] 
**ServicesType** | **String** | Service type | [optional] 
**ServicesField1** | **String** | Service field 1 | [optional] 
**ServicesField2** | **String** | Service field 2 | [optional] 
**ServicesModule** | **String** | Service module | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseServiceType = Initialize-InterserverApiLicenseServiceType  -ServicesId 5034 `
 -ServicesName KernelCare License `
 -ServicesCost 2.95 `
 -ServicesCategory 508 `
 -ServicesBuyable 1 `
 -ServicesType 508 `
 -ServicesField1 16 `
 -ServicesField2  `
 -ServicesModule licenses
```

- Convert the resource to JSON
```powershell
$LicenseServiceType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


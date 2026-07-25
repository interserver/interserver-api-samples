# ServiceType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StId** | **Int32** |  | 
**StName** | **String** |  | 
**StCategory** | **Int32** |  | 
**StModule** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ServiceType = Initialize-InterserverApiServiceType  -StId 600 `
 -StName Dedicated Server `
 -StCategory 600 `
 -StModule servers
```

- Convert the resource to JSON
```powershell
$ServiceType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


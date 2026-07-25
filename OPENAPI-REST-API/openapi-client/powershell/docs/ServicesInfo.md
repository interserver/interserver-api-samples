# ServicesInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Modules** | [**Modules**](Modules.md) |  | 
**Services** | [**Services**](Services.md) |  | 
**ServiceTypes** | [**ServiceTypes**](ServiceTypes.md) |  | 
**ServiceCategories** | [**ServiceCategories**](ServiceCategories.md) |  | 

## Examples

- Prepare the resource
```powershell
$ServicesInfo = Initialize-InterserverApiServicesInfo  -Modules null `
 -Services null `
 -ServiceTypes null `
 -ServiceCategories null
```

- Convert the resource to JSON
```powershell
$ServicesInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


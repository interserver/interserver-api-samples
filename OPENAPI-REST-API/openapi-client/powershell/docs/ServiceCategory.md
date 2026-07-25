# ServiceCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CategoryId** | **Int32** |  | 
**CategoryName** | **String** |  | 
**CategoryTag** | **String** |  | 
**CategoryModule** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ServiceCategory = Initialize-InterserverApiServiceCategory  -CategoryId 1 `
 -CategoryName OpenVZ Virtual Servers `
 -CategoryTag openvz `
 -CategoryModule vps
```

- Convert the resource to JSON
```powershell
$ServiceCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


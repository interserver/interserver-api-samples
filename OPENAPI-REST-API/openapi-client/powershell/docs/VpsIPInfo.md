# VpsIPInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Title of the table | [optional] 
**Rows** | [**VpsIPInfoRow[]**](VpsIPInfoRow.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsIPInfo = Initialize-InterserverApiVpsIPInfo  -Title IP Information `
 -Rows null
```

- Convert the resource to JSON
```powershell
$VpsIPInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


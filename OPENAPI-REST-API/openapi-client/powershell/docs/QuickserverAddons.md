# QuickserverAddons
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Table title | [optional] 
**Rows** | [**QuickserverAddonsRow[]**](QuickserverAddonsRow.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickserverAddons = Initialize-InterserverApiQuickserverAddons  -Title Addons `
 -Rows null
```

- Convert the resource to JSON
```powershell
$QuickserverAddons | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


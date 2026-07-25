# QuickserverIpInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Table title | [optional] 
**Rows** | [**QuickserverIpTableRow[]**](QuickserverIpTableRow.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickserverIpInfo = Initialize-InterserverApiQuickserverIpInfo  -Title IP Information `
 -Rows null
```

- Convert the resource to JSON
```powershell
$QuickserverIpInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


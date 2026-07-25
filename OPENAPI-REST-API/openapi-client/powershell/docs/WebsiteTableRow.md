# WebsiteTableRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Desc** | **String** | Description for the row | [optional] 
**Value** | **String** | Value for the row | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsiteTableRow = Initialize-InterserverApiWebsiteTableRow  -Desc null `
 -Value null
```

- Convert the resource to JSON
```powershell
$WebsiteTableRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


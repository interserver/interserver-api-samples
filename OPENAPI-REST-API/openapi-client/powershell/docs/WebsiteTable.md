# WebsiteTable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Title of the table | [optional] 
**Rows** | [**WebsiteTableRow[]**](WebsiteTableRow.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsiteTable = Initialize-InterserverApiWebsiteTable  -Title null `
 -Rows null
```

- Convert the resource to JSON
```powershell
$WebsiteTable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


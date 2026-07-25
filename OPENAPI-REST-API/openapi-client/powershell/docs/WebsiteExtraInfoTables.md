# WebsiteExtraInfoTables
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Links** | [**WebsiteTable**](WebsiteTable.md) |  | [optional] 
**Preview** | [**WebsiteTable**](WebsiteTable.md) |  | [optional] 
**Dns** | [**WebsiteTable**](WebsiteTable.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsiteExtraInfoTables = Initialize-InterserverApiWebsiteExtraInfoTables  -Links null `
 -Preview null `
 -Dns null
```

- Convert the resource to JSON
```powershell
$WebsiteExtraInfoTables | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


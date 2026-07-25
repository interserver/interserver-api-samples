# QuickserverClientLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | Link label | [optional] 
**Link** | **String** | Link | [optional] 
**Icon** | **String** | Icon class | [optional] 
**IconText** | **String** | Icon text | [optional] 
**HelpText** | **String** | Help text | [optional] 
**OtherAttr** | **String** | Other attribute | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickserverClientLink = Initialize-InterserverApiQuickserverClientLink  -Label Invoices `
 -Link invoices `
 -Icon fas fa-file-invoice-dollar fa-w-12 `
 -IconText  `
 -HelpText Invoice History `
 -OtherAttr null
```

- Convert the resource to JSON
```powershell
$QuickserverClientLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


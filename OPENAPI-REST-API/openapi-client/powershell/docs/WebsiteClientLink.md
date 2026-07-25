# WebsiteClientLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | Label for the link | [optional] 
**Link** | **String** | Link URL | [optional] 
**Icon** | **String** | Icon for the link | [optional] 
**IconText** | **String** | Icon text for the link | [optional] 
**HelpText** | **String** | Help text for the link | [optional] 
**OtherAttr** | **String** | Other attributes for the link | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsiteClientLink = Initialize-InterserverApiWebsiteClientLink  -Label null `
 -Link null `
 -Icon null `
 -IconText null `
 -HelpText null `
 -OtherAttr null
```

- Convert the resource to JSON
```powershell
$WebsiteClientLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


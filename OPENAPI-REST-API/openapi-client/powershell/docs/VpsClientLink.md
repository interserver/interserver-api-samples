# VpsClientLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | Display label for the link. | [optional] 
**Link** | **String** | URL or route for the action. | [optional] 
**Icon** | **String** | Icon class for the link. | [optional] 
**IconText** | **String** | Icon text label. | [optional] 
**HelpText** | **String** | Help tooltip text for the link. | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsClientLink = Initialize-InterserverApiVpsClientLink  -Label null `
 -Link null `
 -Icon null `
 -IconText null `
 -HelpText null
```

- Convert the resource to JSON
```powershell
$VpsClientLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


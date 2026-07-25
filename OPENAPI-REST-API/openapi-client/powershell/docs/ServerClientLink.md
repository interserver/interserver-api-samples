# ServerClientLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** |  | 
**Link** | **String** |  | 
**Icon** | **String** |  | [optional] 
**IconText** | **String** |  | [optional] 
**HelpText** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerClientLink = Initialize-InterserverApiServerClientLink  -Label null `
 -Link null `
 -Icon null `
 -IconText null `
 -HelpText null
```

- Convert the resource to JSON
```powershell
$ServerClientLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


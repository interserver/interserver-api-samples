# DomainClientLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** |  | [optional] 
**Link** | **String** |  | [optional] 
**Icon** | **String** |  | [optional] 
**IconText** | **String** |  | [optional] 
**HelpText** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainClientLink = Initialize-InterserverApiDomainClientLink  -Label null `
 -Link null `
 -Icon null `
 -IconText null `
 -HelpText null
```

- Convert the resource to JSON
```powershell
$DomainClientLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


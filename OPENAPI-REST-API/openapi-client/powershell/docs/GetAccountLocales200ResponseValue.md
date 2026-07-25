# GetAccountLocales200ResponseValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | English display name of the locale. | [optional] 
**LocalName** | **String** | Display name of the locale in its own language. | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAccountLocales200ResponseValue = Initialize-InterserverApiGetAccountLocales200ResponseValue  -Name null `
 -LocalName null
```

- Convert the resource to JSON
```powershell
$GetAccountLocales200ResponseValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


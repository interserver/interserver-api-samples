# AccountInfoOauthConfigProvidersValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**Linked** | **Boolean** |  | [optional] 
**Account** | **String** |  | [optional] 
**Url** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountInfoOauthConfigProvidersValue = Initialize-InterserverApiAccountInfoOauthConfigProvidersValue  -Enabled null `
 -Linked null `
 -Account null `
 -Url null
```

- Convert the resource to JSON
```powershell
$AccountInfoOauthConfigProvidersValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


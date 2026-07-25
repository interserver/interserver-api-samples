# AccountInfoOauthConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Callback** | **String** |  | 
**Providers** | [**AccountInfoOauthConfigProviders**](AccountInfoOauthConfigProviders.md) |  | 

## Examples

- Prepare the resource
```powershell
$AccountInfoOauthConfig = Initialize-InterserverApiAccountInfoOauthConfig  -Callback null `
 -Providers null
```

- Convert the resource to JSON
```powershell
$AccountInfoOauthConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# AccountInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Custid** | **String** |  | [optional] 
**Ima** | **String** |  | [optional] 
**VarData** | [**AccountInfoData**](AccountInfoData.md) |  | [optional] 
**Ip** | **String** |  | [optional] 
**Oauthproviders** | [**AccountInfoOauthproviders**](AccountInfoOauthproviders.md) |  | [optional] 
**Oauthconfig** | [**AccountInfoOauthConfig**](AccountInfoOauthConfig.md) |  | [optional] 
**Oauthadapters** | **String[]** |  | [optional] 
**Limits** | [**AccountInfoLimits**](AccountInfoLimits.md) |  | [optional] 
**Language** | **String** |  | [optional] 
**CountryCurrencies** | [**AccountInfoCountryCurrencies**](AccountInfoCountryCurrencies.md) |  | [optional] 
**EnableLocales** | **Boolean** |  | [optional] 
**EnableCurrencies** | **Boolean** |  | [optional] 
**Gravatar** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountInfo = Initialize-InterserverApiAccountInfo  -Custid null `
 -Ima null `
 -VarData null `
 -Ip null `
 -Oauthproviders null `
 -Oauthconfig null `
 -Oauthadapters null `
 -Limits null `
 -Language null `
 -CountryCurrencies null `
 -EnableLocales null `
 -EnableCurrencies null `
 -Gravatar null
```

- Convert the resource to JSON
```powershell
$AccountInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


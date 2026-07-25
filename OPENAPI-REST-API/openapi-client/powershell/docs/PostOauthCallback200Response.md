# PostOauthCallback200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Login** | **Boolean** | Whether the user was logged in to an existing account. | [optional] 
**Signup** | **Boolean** | Whether a new account was created. | [optional] 
**Linked** | **Boolean** | Whether the OAuth provider was linked to an existing account. | [optional] 
**AccountId** | **Int32** | The account ID associated with the OAuth login. | [optional] 
**ErrorCode** | **String** | Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;). | [optional] 

## Examples

- Prepare the resource
```powershell
$PostOauthCallback200Response = Initialize-InterserverApiPostOauthCallback200Response  -Login null `
 -Signup null `
 -Linked null `
 -AccountId null `
 -ErrorCode null
```

- Convert the resource to JSON
```powershell
$PostOauthCallback200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


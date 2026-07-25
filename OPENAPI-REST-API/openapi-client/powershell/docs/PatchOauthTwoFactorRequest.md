# PatchOauthTwoFactorRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **Int32** | The account ID returned from the POST callback. | 
**Code** | **String** | The 6-digit two-factor authentication code. | 

## Examples

- Prepare the resource
```powershell
$PatchOauthTwoFactorRequest = Initialize-InterserverApiPatchOauthTwoFactorRequest  -AccountId null `
 -Code null
```

- Convert the resource to JSON
```powershell
$PatchOauthTwoFactorRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


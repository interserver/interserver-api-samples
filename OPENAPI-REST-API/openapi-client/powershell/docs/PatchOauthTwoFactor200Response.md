# PatchOauthTwoFactor200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Login** | **Boolean** | Whether the 2FA verification succeeded and the user is now logged in. | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchOauthTwoFactor200Response = Initialize-InterserverApiPatchOauthTwoFactor200Response  -Login null
```

- Convert the resource to JSON
```powershell
$PatchOauthTwoFactor200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


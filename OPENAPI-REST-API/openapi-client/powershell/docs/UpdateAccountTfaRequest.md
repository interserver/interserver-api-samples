# UpdateAccountTfaRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Var2faGoogleCode** | **String** | The 6-digit verification code from your authenticator app. | 

## Examples

- Prepare the resource
```powershell
$UpdateAccountTfaRequest = Initialize-InterserverApiUpdateAccountTfaRequest  -Var2faGoogleCode null
```

- Convert the resource to JSON
```powershell
$UpdateAccountTfaRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


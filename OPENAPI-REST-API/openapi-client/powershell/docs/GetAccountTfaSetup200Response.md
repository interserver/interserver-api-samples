# GetAccountTfaSetup200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Var2faGoogleKey** | **String** | Base64-encoded secret key for TOTP setup. | [optional] 
**Var2faGoogleSplit** | **String** | Human-readable formatted key (chunks of 4 characters). | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAccountTfaSetup200Response = Initialize-InterserverApiGetAccountTfaSetup200Response  -Var2faGoogleKey null `
 -Var2faGoogleSplit null
```

- Convert the resource to JSON
```powershell
$GetAccountTfaSetup200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


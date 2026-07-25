# LoginSubmissionExample
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Login** | **String** |  | 
**Passwd** | **String** |  | 
**Remember** | **String** |  | [optional] 
**GRecaptchaResponse** | [**LoginSubmissionExampleGRecaptchaResponse**](LoginSubmissionExampleGRecaptchaResponse.md) |  | [optional] 
**Tfa** | **String** | Two Factor Authentication Response. | [optional] 

## Examples

- Prepare the resource
```powershell
$LoginSubmissionExample = Initialize-InterserverApiLoginSubmissionExample  -Login null `
 -Passwd null `
 -Remember null `
 -GRecaptchaResponse null `
 -Tfa null
```

- Convert the resource to JSON
```powershell
$LoginSubmissionExample | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


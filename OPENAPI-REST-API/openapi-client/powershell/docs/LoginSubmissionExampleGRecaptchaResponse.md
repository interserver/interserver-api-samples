# LoginSubmissionExampleGRecaptchaResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VIsShallow** | **Boolean** |  | [optional] 
**Dep** | [**LoginSubmissionExampleGRecaptchaResponseDep**](LoginSubmissionExampleGRecaptchaResponseDep.md) |  | [optional] 
**VIsRef** | **Boolean** |  | [optional] 
**RawValue** | **String** |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoginSubmissionExampleGRecaptchaResponse = Initialize-InterserverApiLoginSubmissionExampleGRecaptchaResponse  -VIsShallow null `
 -Dep null `
 -VIsRef null `
 -RawValue null `
 -Value null
```

- Convert the resource to JSON
```powershell
$LoginSubmissionExampleGRecaptchaResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


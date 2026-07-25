# CaptchaResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Captcha** | **String** | The base64 encoded captcha image. | 

## Examples

- Prepare the resource
```powershell
$CaptchaResponse = Initialize-InterserverApiCaptchaResponse  -Captcha data:image/jpeg;base64,/9j/4AAQ
```

- Convert the resource to JSON
```powershell
$CaptchaResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


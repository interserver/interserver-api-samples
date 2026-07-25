# LoginInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Captcha** | **String** | A base64 encoded image to use for rendering the alternateive captcha. | 
**Counts** | [**LoginServiceCounts**](LoginServiceCounts.md) |  | 
**Logo** | **String** | A logo image url. | [optional] 
**Language** | **String** | The desired langauge to render the site with. | [optional] 

## Examples

- Prepare the resource
```powershell
$LoginInfo = Initialize-InterserverApiLoginInfo  -Captcha data:image/jpeg;base64,/9j/ `
 -Counts null `
 -Logo //my.interserver.net/images/logos/mystaging.png `
 -Language en-US
```

- Convert the resource to JSON
```powershell
$LoginInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# LoginInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Logo** | **String** | A logo image url. | [optional] 
**Captcha** | **String** | A base64 encoded image to use for rendering the alternateive captcha. | 
**Language** | **String** | The desired langauge to render the site with. | [optional] 
**Counts** | [**LoginServiceCounts**](LoginServiceCounts.md) |  | 

## Examples

- Prepare the resource
```powershell
$LoginInfo = Initialize-InterserverApiLoginInfo  -Logo //my.interserver.net/images/logos/mystaging.png `
 -Captcha data:image/jpeg;base64,/9j/ `
 -Language en-US `
 -Counts null
```

- Convert the resource to JSON
```powershell
$LoginInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


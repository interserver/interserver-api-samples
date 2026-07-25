# MailAlertsResponseInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlertId** | **Int32** |  | [optional] 
**AlertType** | **String** |  | [optional] 
**AlertValue** | **String** |  | [optional] 
**AlertTo** | **String** |  | [optional] 
**AlertEnabled** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MailAlertsResponseInner = Initialize-InterserverApiMailAlertsResponseInner  -AlertId null `
 -AlertType null `
 -AlertValue null `
 -AlertTo null `
 -AlertEnabled null
```

- Convert the resource to JSON
```powershell
$MailAlertsResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


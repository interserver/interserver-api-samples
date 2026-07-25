# MailAlertUpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlertId** | **Int32** | Alert ID to update. | [optional] 
**Type** | **String** | Alert type identifier. | [optional] 
**Value** | **String** | Alert value or threshold. | [optional] 
**To** | **String** | Email address to notify. | [optional] 
**Enabled** | **String** | Whether the alert is enabled. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailAlertUpdateRequest = Initialize-InterserverApiMailAlertUpdateRequest  -AlertId null `
 -Type null `
 -Value null `
 -To null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$MailAlertUpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


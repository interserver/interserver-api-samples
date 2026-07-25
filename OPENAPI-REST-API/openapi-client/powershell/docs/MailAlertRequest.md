# MailAlertRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Alert type identifier. | [optional] 
**Value** | **String** | Alert value or threshold. | [optional] 
**To** | **String** | Email address to notify. | [optional] 
**Enabled** | **String** | Whether the alert is enabled. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailAlertRequest = Initialize-InterserverApiMailAlertRequest  -Type null `
 -Value null `
 -To null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$MailAlertRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


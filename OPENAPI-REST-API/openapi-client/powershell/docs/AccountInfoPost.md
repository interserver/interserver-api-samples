# AccountInfoPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Your name. | 
**Company** | **String** | Your company name. | [optional] 
**Address** | **String** | Your address. | 
**Address2** | **String** | Additional address information. | [optional] 
**City** | **String** | Your city. | 
**State** | **String** | Your state. | 
**Zip** | **String** | Your ZIP code. | 
**Country** | **String** | Your country. | 
**Phone** | **String** | Your phone number. | 
**Locale** | **String** | Your preferred locale. | [optional] 
**EmailInvoices** | **String** | Your email for invoice notifications. | [optional] 
**EmailAbuse** | **String** | Your email for abuse notifications. | [optional] 
**DisableReset** | **Boolean** | Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. | [optional] 
**DisableReinstall** | **Boolean** | Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. | [optional] 
**DisableServerNotifications** | **Boolean** | Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. | [optional] 
**DisableEmailNotifications** | **Boolean** | Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. | [optional] 
**Gstin** | **String** | Your GST identification number (if applicable). | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountInfoPost = Initialize-InterserverApiAccountInfoPost  -Name John Doe `
 -Company My Company `
 -Address 124 My St `
 -Address2 null `
 -City My Town `
 -State PA `
 -Zip 17522 `
 -Country US `
 -Phone 8675309 `
 -Locale null `
 -EmailInvoices null `
 -EmailAbuse null `
 -DisableReset null `
 -DisableReinstall null `
 -DisableServerNotifications null `
 -DisableEmailNotifications null `
 -Gstin null
```

- Convert the resource to JSON
```powershell
$AccountInfoPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# MailRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MailId** | **String** | The id of the mail. | [optional] 
**RepeatInvoicesCost** | **String** | The repeat invoices cost of the mail. | [optional] 
**MailUsername** | **String** | The username of the mail. | [optional] 
**MailStatus** | **String** | The status of the mail. | [optional] 
**ServicesName** | **String** | The services name of the mail. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailRow = Initialize-InterserverApiMailRow  -MailId 5652 `
 -RepeatInvoicesCost 5.99 `
 -MailUsername mb5652 `
 -MailStatus expired `
 -ServicesName MailBaby Mail
```

- Convert the resource to JSON
```powershell
$MailRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


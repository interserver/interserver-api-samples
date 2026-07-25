# MailServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MailId** | **String** | The ID of the mail service. | 
**MailType** | **String** | The type of mail service. | 
**MailCurrency** | **String** | The currency of the mail service. | 
**MailOrderDate** | **String** | The order date of the mail service. | 
**MailCustid** | **String** | The customer ID associated with the mail service. | 
**MailQuota** | **String** | The mail quota for the service. | 
**MailStatus** | **String** | The status of the mail service. | 
**MailInvoice** | **String** | The invoice ID of the mail service. | 
**MailUsername** | **String** | The username associated with the mail service. | [optional] 
**MailIp** | **String** | The IP address associated with the mail service. | [optional] 
**MailCoupon** | **String** | The coupon associated with the mail service. | [optional] 
**MailExtra** | **String** | Additional information for the mail service. | [optional] 
**MailServerStatus** | **String** | The server status of the mail service. | [optional] 
**MailComment** | **String** | Additional comments for the mail service. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailServiceInfo = Initialize-InterserverApiMailServiceInfo  -MailId 43171 `
 -MailType 10880 `
 -MailCurrency USD `
 -MailOrderDate 2023-07-16T00:55:05.000Z `
 -MailCustid 771282 `
 -MailQuota 0 `
 -MailStatus expired `
 -MailInvoice 20410322 `
 -MailUsername  `
 -MailIp  `
 -MailCoupon 0 `
 -MailExtra [] `
 -MailServerStatus  `
 -MailComment 
```

- Convert the resource to JSON
```powershell
$MailServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


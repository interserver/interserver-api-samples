# SendMail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**To** | **String** | The Contact whom is the primary recipient of this email. | 
**VarFrom** | **String** | The contact whom is the this email is from. | 
**Subject** | **String** | The subject or title of the email | 
**Body** | **String** | The main email contents. | 

## Examples

- Prepare the resource
```powershell
$SendMail = Initialize-InterserverApiSendMail  -To johndoe@company.com `
 -VarFrom janedoe@company.com `
 -Subject Attention Client `
 -Body This is an email to inform you that something noteworthy happened.
```

- Convert the resource to JSON
```powershell
$SendMail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


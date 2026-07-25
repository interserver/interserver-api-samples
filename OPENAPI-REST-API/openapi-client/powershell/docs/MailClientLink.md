# MailClientLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | The label of the client link. | [optional] 
**Link** | **String** | The link URL of the client link. | [optional] 
**Icon** | **String** | The icon class of the client link. | [optional] 
**IconText** | **String** | The text for the icon of the client link. | [optional] 
**HelpText** | **String** | Help text for the client link. | [optional] 
**OtherAttr** | **String** | Additional attributes for the client link. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailClientLink = Initialize-InterserverApiMailClientLink  -Label Invoices `
 -Link invoices `
 -Icon fas fa-file-invoice-dollar fa-w-12 `
 -IconText  `
 -HelpText Invoice History `
 -OtherAttr 
```

- Convert the resource to JSON
```powershell
$MailClientLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


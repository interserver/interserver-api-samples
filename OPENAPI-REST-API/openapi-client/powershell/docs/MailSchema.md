# MailSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**MailServiceInfo**](MailServiceInfo.md) |  | 
**ClientLinks** | [**MailClientLink[]**](MailClientLink.md) | Links related to the mail service for clients. | 
**BillingDetails** | [**MailBillingDetails**](MailBillingDetails.md) |  | 
**CustCurrency** | **String** | The customer&#39;s currency. | 
**CustCurrencySymbol** | **String** | The currency symbol for the customer. | 
**Package** | **String** | The package of the mail service. | 
**ServiceExtra** | **String[]** | Extra information for the mail service. | [optional] 
**ExtraInfoTables** | [**MailSchemaExtraInfoTables**](MailSchemaExtraInfoTables.md) |  | 
**ServiceType** | [**MailServiceType**](MailServiceType.md) |  | 
**UsageCount** | **String** | The usage count of the mail service. | 

## Examples

- Prepare the resource
```powershell
$MailSchema = Initialize-InterserverApiMailSchema  -ServiceInfo null `
 -ClientLinks null `
 -BillingDetails null `
 -CustCurrency USD `
 -CustCurrencySymbol $ `
 -Package MailBaby Mail `
 -ServiceExtra [] `
 -ExtraInfoTables null `
 -ServiceType null `
 -UsageCount 0
```

- Convert the resource to JSON
```powershell
$MailSchema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


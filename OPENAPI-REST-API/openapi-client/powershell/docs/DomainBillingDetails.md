# DomainBillingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceLastInvoiceDate** | **String** | Date of the last invoice for the domain. | [optional] 
**ServicePaymentStatus** | **String** | Current payment status (e.g., Paid, Unpaid). | [optional] 
**ServiceFrequency** | **String** | Billing frequency (e.g., Yearly, Monthly). | [optional] 
**NextDate** | **String** | Next billing date (ISO 8601). | [optional] 
**ServiceNextInvoiceDate** | **String** | Human-readable next invoice date. | [optional] 
**ServiceCurrency** | **String** | Billing currency code. | [optional] 
**ServiceCurrencySymbol** | **String** | Billing currency symbol. | [optional] 
**ServiceCostInfo** | **String** | Cost breakdown information. | [optional] 
**ServiceExtra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**ServiceExtraJson** | **String** | Raw JSON string of extra billing data. | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainBillingDetails = Initialize-InterserverApiDomainBillingDetails  -ServiceLastInvoiceDate null `
 -ServicePaymentStatus null `
 -ServiceFrequency null `
 -NextDate null `
 -ServiceNextInvoiceDate null `
 -ServiceCurrency null `
 -ServiceCurrencySymbol null `
 -ServiceCostInfo null `
 -ServiceExtra null `
 -ServiceExtraJson null
```

- Convert the resource to JSON
```powershell
$DomainBillingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


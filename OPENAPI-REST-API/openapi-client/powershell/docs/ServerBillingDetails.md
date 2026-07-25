# ServerBillingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceLastInvoiceDate** | **String** |  | [optional] 
**ServicePaymentStatus** | **String** |  | [optional] 
**ServiceFrequency** | **String** |  | [optional] 
**NextDate** | **String** |  | [optional] 
**ServiceNextInvoiceDate** | **String** |  | [optional] 
**ServiceCurrency** | **String** |  | [optional] 
**ServiceCurrencySymbol** | **String** |  | [optional] 
**ServiceCostInfo** | **String** |  | [optional] 
**ServiceExtra** | **String[]** |  | [optional] 
**ServiceExtraJson** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerBillingDetails = Initialize-InterserverApiServerBillingDetails  -ServiceLastInvoiceDate null `
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
$ServerBillingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


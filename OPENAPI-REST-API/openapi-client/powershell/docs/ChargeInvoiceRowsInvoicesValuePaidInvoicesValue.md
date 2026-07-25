# ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InvoicesId** | **String** |  | [optional] 
**InvoicesDescription** | **String** |  | [optional] 
**InvoicesAmount** | **Decimal** |  | [optional] 
**InvoicesDate** | **String** |  | [optional] 
**InvoicesCurrency** | **String** |  | [optional] 
**CurrencySymbol** | **String** |  | [optional] 
**InvoicesDateFormatted** | **String** |  | [optional] 
**PaymentType** | **String** |  | [optional] 
**RefundInvoices** | [**System.Collections.Hashtable**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.md) | This is optional when refund is present this will show | [optional] 

## Examples

- Prepare the resource
```powershell
$ChargeInvoiceRowsInvoicesValuePaidInvoicesValue = Initialize-InterserverApiChargeInvoiceRowsInvoicesValuePaidInvoicesValue  -InvoicesId null `
 -InvoicesDescription null `
 -InvoicesAmount null `
 -InvoicesDate null `
 -InvoicesCurrency null `
 -CurrencySymbol null `
 -InvoicesDateFormatted null `
 -PaymentType null `
 -RefundInvoices null
```

- Convert the resource to JSON
```powershell
$ChargeInvoiceRowsInvoicesValuePaidInvoicesValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ChargeInvoiceRowsInvoicesValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InvoicesId** | **Decimal** | Unique invoice ID. | [optional] 
**InvoicesDescription** | **String** | Description of the invoice charge. | [optional] 
**InvoicesAmount** | **Decimal** | Invoice amount. | [optional] 
**InvoicesDate** | **String** | Invoice date. | [optional] 
**InvoicesPaid** | **Decimal** |  | [optional] 
**InvoicesDueDate** | **String** |  | [optional] 
**InvoicesCurrency** | **String** |  | [optional] 
**CurrencySymbol** | **String** |  | [optional] 
**InvoicesDateFormatted** | **String** |  | [optional] 
**PaidInvoices** | [**System.Collections.Hashtable**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md) | This is optional when invoices_paid &#x3D; 1 this array will show | [optional] 

## Examples

- Prepare the resource
```powershell
$ChargeInvoiceRowsInvoicesValue = Initialize-InterserverApiChargeInvoiceRowsInvoicesValue  -InvoicesId null `
 -InvoicesDescription null `
 -InvoicesAmount null `
 -InvoicesDate null `
 -InvoicesPaid null `
 -InvoicesDueDate null `
 -InvoicesCurrency null `
 -CurrencySymbol null `
 -InvoicesDateFormatted null `
 -PaidInvoices null
```

- Convert the resource to JSON
```powershell
$ChargeInvoiceRowsInvoicesValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)




# ChargeInvoiceRowsInvoicesValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoicesId** | [**BigDecimal**](BigDecimal.md) | Unique invoice ID. |  [optional]
**invoicesDescription** | **String** | Description of the invoice charge. |  [optional]
**invoicesAmount** | [**BigDecimal**](BigDecimal.md) | Invoice amount. |  [optional]
**invoicesDate** | **String** | Invoice date. |  [optional]
**invoicesPaid** | [**InvoicesPaidEnum**](#InvoicesPaidEnum) |  |  [optional]
**invoicesDueDate** | **String** |  |  [optional]
**invoicesCurrency** | **String** |  |  [optional]
**currencySymbol** | **String** |  |  [optional]
**invoicesDateFormatted** | **String** |  |  [optional]
**paidInvoices** | [**Map&lt;String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue&gt;**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md) | This is optional when invoices_paid &#x3D; 1 this array will show |  [optional]


## Enum: InvoicesPaidEnum

Name | Value
---- | -----





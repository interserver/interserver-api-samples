

# ChargeInvoiceRowsInvoicesValue

The class is defined in **[ChargeInvoiceRowsInvoicesValue.java](../../src/main/java/org/openapitools/model/ChargeInvoiceRowsInvoicesValue.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoicesId** | `BigDecimal` | Unique invoice ID. |  [optional property]
**invoicesDescription** | `String` | Description of the invoice charge. |  [optional property]
**invoicesAmount** | `BigDecimal` | Invoice amount. |  [optional property]
**invoicesDate** | `String` | Invoice date. |  [optional property]
**invoicesPaid** | [**InvoicesPaidEnum**](#InvoicesPaidEnum) |  |  [optional property]
**invoicesDueDate** | `String` |  |  [optional property]
**invoicesCurrency** | `String` |  |  [optional property]
**currencySymbol** | `String` |  |  [optional property]
**invoicesDateFormatted** | `String` |  |  [optional property]
**paidInvoices** | [`Map&lt;String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue&gt;`](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md) | This is optional when invoices_paid &#x3D; 1 this array will show |  [optional property]





## InvoicesPaidEnum

Name | Value
---- | -----
NUMBER_0 | `new BigDecimal("0")`
NUMBER_1 | `new BigDecimal("1")`
NUMBER_unknown_default_open_api | `new BigDecimal("11184809")`








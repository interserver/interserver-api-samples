# ChargeInvoiceRowsInvoicesValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | Option<**f64**> | Unique invoice ID. | [optional]
**invoices_description** | Option<**String**> | Description of the invoice charge. | [optional]
**invoices_amount** | Option<**f64**> | Invoice amount. | [optional]
**invoices_date** | Option<**String**> | Invoice date. | [optional]
**invoices_paid** | Option<**InvoicesPaid**> |  (enum: 0, 1) | [optional]
**invoices_due_date** | Option<**String**> |  | [optional]
**invoices_currency** | Option<**String**> |  | [optional]
**currency_symbol** | Option<**String**> |  | [optional]
**invoices_date_formatted** | Option<**String**> |  | [optional]
**paid_invoices** | Option<[**std::collections::HashMap<String, models::ChargeInvoiceRowsInvoicesValuePaidInvoicesValue>**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md)> | This is optional when invoices_paid = 1 this array will show | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



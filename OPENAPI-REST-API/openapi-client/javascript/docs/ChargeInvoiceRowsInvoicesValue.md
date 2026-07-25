# InterserverApiClient.ChargeInvoiceRowsInvoicesValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | **Number** | Unique invoice ID. | [optional] 
**invoices_description** | **String** | Description of the invoice charge. | [optional] 
**invoices_amount** | **Number** | Invoice amount. | [optional] 
**invoices_date** | **String** | Invoice date. | [optional] 
**invoices_paid** | **Number** |  | [optional] 
**invoices_due_date** | **String** |  | [optional] 
**invoices_currency** | **String** |  | [optional] 
**currency_symbol** | **String** |  | [optional] 
**invoices_date_formatted** | **String** |  | [optional] 
**paid_invoices** | [**{String: ChargeInvoiceRowsInvoicesValuePaidInvoicesValue}**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md) | This is optional when invoices_paid &#x3D; 1 this array will show | [optional] 



## Enum: InvoicesPaidEnum


* `0` (value: `0`)

* `1` (value: `1`)

* `unknown_default_open_api` (value: `11184809`)





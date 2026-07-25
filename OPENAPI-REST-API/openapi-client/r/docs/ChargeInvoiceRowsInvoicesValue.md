# interserverapi::ChargeInvoiceRowsInvoicesValue


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | **numeric** | Unique invoice ID. | [optional] 
**invoices_description** | **character** | Description of the invoice charge. | [optional] 
**invoices_amount** | **numeric** | Invoice amount. | [optional] 
**invoices_date** | **character** | Invoice date. | [optional] 
**invoices_paid** | **numeric** |  | [optional] [Enum: [0, 1]] 
**invoices_due_date** | **character** |  | [optional] 
**invoices_currency** | **character** |  | [optional] 
**currency_symbol** | **character** |  | [optional] 
**invoices_date_formatted** | **character** |  | [optional] 
**paid_invoices** | [**map(ChargeInvoiceRowsInvoicesValuePaidInvoicesValue)**](ChargeInvoiceRows_invoices_value_paid_invoices_value.md) | This is optional when invoices_paid &#x3D; 1 this array will show | [optional] 



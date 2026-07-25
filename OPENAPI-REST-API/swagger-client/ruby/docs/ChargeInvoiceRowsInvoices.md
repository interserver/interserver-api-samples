# InterserverApiClient::ChargeInvoiceRowsInvoices

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | [**BigDecimal**](BigDecimal.md) | Unique invoice ID. | [optional] 
**invoices_description** | **String** | Description of the invoice charge. | [optional] 
**invoices_amount** | [**BigDecimal**](BigDecimal.md) | Invoice amount. | [optional] 
**invoices_date** | **String** | Invoice date. | [optional] 
**invoices_paid** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**invoices_due_date** | **String** |  | [optional] 
**invoices_currency** | **String** |  | [optional] 
**currency_symbol** | **String** |  | [optional] 
**invoices_date_formatted** | **String** |  | [optional] 
**paid_invoices** | [**Hash&lt;String, ChargeInvoiceRowsPaidInvoices&gt;**](ChargeInvoiceRowsPaidInvoices.md) | This is optional when invoices_paid &#x3D; 1 this array will show | [optional] 


# InterserverApiClient::ChargeInvoiceRowsPaidInvoices

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | **String** |  | [optional] 
**invoices_description** | **String** |  | [optional] 
**invoices_amount** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**invoices_date** | **String** |  | [optional] 
**invoices_currency** | **String** |  | [optional] 
**currency_symbol** | **String** |  | [optional] 
**invoices_date_formatted** | **String** |  | [optional] 
**payment_type** | **String** |  | [optional] 
**refund_invoices** | [**Hash&lt;String, ChargeInvoiceRowsRefundInvoices&gt;**](ChargeInvoiceRowsRefundInvoices.md) | This is optional when refund is present this will show | [optional] 


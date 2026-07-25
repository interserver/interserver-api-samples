# InterServerAPI::Object::ChargeInvoiceRowsInvoicesValue

## Load the model package
```perl
use InterServerAPI::Object::ChargeInvoiceRowsInvoicesValue;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | **double** | Unique invoice ID. | [optional] 
**invoices_description** | **string** | Description of the invoice charge. | [optional] 
**invoices_amount** | **double** | Invoice amount. | [optional] 
**invoices_date** | **string** | Invoice date. | [optional] 
**invoices_paid** | **double** |  | [optional] 
**invoices_due_date** | **string** |  | [optional] 
**invoices_currency** | **string** |  | [optional] 
**currency_symbol** | **string** |  | [optional] 
**invoices_date_formatted** | **string** |  | [optional] 
**paid_invoices** | [**HASH[string,ChargeInvoiceRowsInvoicesValuePaidInvoicesValue]**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md) | This is optional when invoices_paid &#x3D; 1 this array will show | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



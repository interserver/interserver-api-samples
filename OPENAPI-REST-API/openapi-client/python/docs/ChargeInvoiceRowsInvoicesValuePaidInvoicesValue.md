# ChargeInvoiceRowsInvoicesValuePaidInvoicesValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | **str** |  | [optional] 
**invoices_description** | **str** |  | [optional] 
**invoices_amount** | **float** |  | [optional] 
**invoices_date** | **str** |  | [optional] 
**invoices_currency** | **str** |  | [optional] 
**currency_symbol** | **str** |  | [optional] 
**invoices_date_formatted** | **str** |  | [optional] 
**payment_type** | **str** |  | [optional] 
**refund_invoices** | [**Dict[str, ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue]**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.md) | This is optional when refund is present this will show | [optional] 

## Example

```python
from interserver_api_client.models.charge_invoice_rows_invoices_value_paid_invoices_value import ChargeInvoiceRowsInvoicesValuePaidInvoicesValue

# TODO update the JSON string below
json = "{}"
# create an instance of ChargeInvoiceRowsInvoicesValuePaidInvoicesValue from a JSON string
charge_invoice_rows_invoices_value_paid_invoices_value_instance = ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.from_json(json)
# print the JSON string representation of the object
print(ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.to_json())

# convert the object into a dict
charge_invoice_rows_invoices_value_paid_invoices_value_dict = charge_invoice_rows_invoices_value_paid_invoices_value_instance.to_dict()
# create an instance of ChargeInvoiceRowsInvoicesValuePaidInvoicesValue from a dict
charge_invoice_rows_invoices_value_paid_invoices_value_from_dict = ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.from_dict(charge_invoice_rows_invoices_value_paid_invoices_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



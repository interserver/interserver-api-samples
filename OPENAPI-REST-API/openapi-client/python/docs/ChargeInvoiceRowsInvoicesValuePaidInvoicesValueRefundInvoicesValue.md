# ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | **float** |  | [optional] 
**invoices_description** | **str** |  | [optional] 
**invoices_amount** | **float** |  | [optional] 
**invoices_date** | **str** |  | [optional] 
**invoices_currency** | **str** |  | [optional] 
**currency_symbol** | **str** |  | [optional] 
**invoices_date_formatted** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value import ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue

# TODO update the JSON string below
json = "{}"
# create an instance of ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue from a JSON string
charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value_instance = ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.from_json(json)
# print the JSON string representation of the object
print(ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.to_json())

# convert the object into a dict
charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value_dict = charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value_instance.to_dict()
# create an instance of ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue from a dict
charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value_from_dict = ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.from_dict(charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



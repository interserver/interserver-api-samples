# ChargeInvoiceRowsInvoicesValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | **float** | Unique invoice ID. | [optional] 
**invoices_description** | **str** | Description of the invoice charge. | [optional] 
**invoices_amount** | **float** | Invoice amount. | [optional] 
**invoices_date** | **str** | Invoice date. | [optional] 
**invoices_paid** | **float** |  | [optional] 
**invoices_due_date** | **str** |  | [optional] 
**invoices_currency** | **str** |  | [optional] 
**currency_symbol** | **str** |  | [optional] 
**invoices_date_formatted** | **str** |  | [optional] 
**paid_invoices** | [**Dict[str, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue]**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md) | This is optional when invoices_paid &#x3D; 1 this array will show | [optional] 

## Example

```python
from interserver_api_client.models.charge_invoice_rows_invoices_value import ChargeInvoiceRowsInvoicesValue

# TODO update the JSON string below
json = "{}"
# create an instance of ChargeInvoiceRowsInvoicesValue from a JSON string
charge_invoice_rows_invoices_value_instance = ChargeInvoiceRowsInvoicesValue.from_json(json)
# print the JSON string representation of the object
print(ChargeInvoiceRowsInvoicesValue.to_json())

# convert the object into a dict
charge_invoice_rows_invoices_value_dict = charge_invoice_rows_invoices_value_instance.to_dict()
# create an instance of ChargeInvoiceRowsInvoicesValue from a dict
charge_invoice_rows_invoices_value_from_dict = ChargeInvoiceRowsInvoicesValue.from_dict(charge_invoice_rows_invoices_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



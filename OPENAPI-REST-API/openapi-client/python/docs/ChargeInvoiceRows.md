# ChargeInvoiceRows

Billing invoices associated with a service, including invoice IDs, descriptions, amounts, and payment status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Whether the invoice retrieval was successful. | [optional] 
**invoices** | [**Dict[str, ChargeInvoiceRowsInvoicesValue]**](ChargeInvoiceRowsInvoicesValue.md) | List of invoices for the service. | [optional] 

## Example

```python
from interserver_api_client.models.charge_invoice_rows import ChargeInvoiceRows

# TODO update the JSON string below
json = "{}"
# create an instance of ChargeInvoiceRows from a JSON string
charge_invoice_rows_instance = ChargeInvoiceRows.from_json(json)
# print the JSON string representation of the object
print(ChargeInvoiceRows.to_json())

# convert the object into a dict
charge_invoice_rows_dict = charge_invoice_rows_instance.to_dict()
# create an instance of ChargeInvoiceRows from a dict
charge_invoice_rows_from_dict = ChargeInvoiceRows.from_dict(charge_invoice_rows_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



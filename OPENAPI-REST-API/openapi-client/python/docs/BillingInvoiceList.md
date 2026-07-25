# BillingInvoiceList

Summary list of invoices for the account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rows** | **List[object]** | Invoice rows returned for the account. | [optional] 
**summary** | **object** | Totals and summary data for the invoices list. | [optional] 

## Example

```python
from interserver_api_client.models.billing_invoice_list import BillingInvoiceList

# TODO update the JSON string below
json = "{}"
# create an instance of BillingInvoiceList from a JSON string
billing_invoice_list_instance = BillingInvoiceList.from_json(json)
# print the JSON string representation of the object
print(BillingInvoiceList.to_json())

# convert the object into a dict
billing_invoice_list_dict = billing_invoice_list_instance.to_dict()
# create an instance of BillingInvoiceList from a dict
billing_invoice_list_from_dict = BillingInvoiceList.from_dict(billing_invoice_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



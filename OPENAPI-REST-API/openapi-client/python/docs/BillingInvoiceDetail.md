# BillingInvoiceDetail

Detailed invoice data payload returned for a single invoice.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from interserver_api_client.models.billing_invoice_detail import BillingInvoiceDetail

# TODO update the JSON string below
json = "{}"
# create an instance of BillingInvoiceDetail from a JSON string
billing_invoice_detail_instance = BillingInvoiceDetail.from_json(json)
# print the JSON string representation of the object
print(BillingInvoiceDetail.to_json())

# convert the object into a dict
billing_invoice_detail_dict = billing_invoice_detail_instance.to_dict()
# create an instance of BillingInvoiceDetail from a dict
billing_invoice_detail_from_dict = BillingInvoiceDetail.from_dict(billing_invoice_detail_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



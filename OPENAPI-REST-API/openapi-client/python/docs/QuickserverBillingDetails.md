# QuickserverBillingDetails

Billing information for a QuickServer service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **str** | Last invoice date | [optional] 
**service_payment_status** | **str** | Payment status | [optional] 
**service_frequency** | **str** | Service frequency | [optional] 
**next_date** | **str** | Next date | [optional] 
**service_next_invoice_date** | **str** | Next invoice date | [optional] 
**service_currency** | **str** | Currency | [optional] 
**service_currency_symbol** | **str** | Currency symbol | [optional] 
**service_cost_info** | **str** | Cost information | [optional] 
**service_extra** | [**QuickserverServiceExtra**](QuickserverServiceExtra.md) |  | [optional] 
**service_extra_json** | **str** | Extra information (JSON format) | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_billing_details import QuickserverBillingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverBillingDetails from a JSON string
quickserver_billing_details_instance = QuickserverBillingDetails.from_json(json)
# print the JSON string representation of the object
print(QuickserverBillingDetails.to_json())

# convert the object into a dict
quickserver_billing_details_dict = quickserver_billing_details_instance.to_dict()
# create an instance of QuickserverBillingDetails from a dict
quickserver_billing_details_from_dict = QuickserverBillingDetails.from_dict(quickserver_billing_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



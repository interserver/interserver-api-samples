# ServerBillingDetails

Billing information for a dedicated server service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **str** |  | [optional] 
**service_payment_status** | **str** |  | [optional] 
**service_frequency** | **str** |  | [optional] 
**next_date** | **str** |  | [optional] 
**service_next_invoice_date** | **str** |  | [optional] 
**service_currency** | **str** |  | [optional] 
**service_currency_symbol** | **str** |  | [optional] 
**service_cost_info** | **str** |  | [optional] 
**service_extra** | **List[str]** |  | [optional] 
**service_extra_json** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.server_billing_details import ServerBillingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of ServerBillingDetails from a JSON string
server_billing_details_instance = ServerBillingDetails.from_json(json)
# print the JSON string representation of the object
print(ServerBillingDetails.to_json())

# convert the object into a dict
server_billing_details_dict = server_billing_details_instance.to_dict()
# create an instance of ServerBillingDetails from a dict
server_billing_details_from_dict = ServerBillingDetails.from_dict(server_billing_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



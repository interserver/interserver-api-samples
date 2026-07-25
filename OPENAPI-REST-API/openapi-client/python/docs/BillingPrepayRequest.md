# BillingPrepayRequest

Request payload for creating a new prepay balance.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**module** | **str** | Module the prepay should be applied to (for example &#x60;default&#x60;). | [optional] 
**amount** | **float** | Amount to add to prepay balance. Minimum is $10. | [optional] 
**automatic_use** | **str** | Whether the prepay balance should be used automatically. | [optional] 

## Example

```python
from interserver_api_client.models.billing_prepay_request import BillingPrepayRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BillingPrepayRequest from a JSON string
billing_prepay_request_instance = BillingPrepayRequest.from_json(json)
# print the JSON string representation of the object
print(BillingPrepayRequest.to_json())

# convert the object into a dict
billing_prepay_request_dict = billing_prepay_request_instance.to_dict()
# create an instance of BillingPrepayRequest from a dict
billing_prepay_request_from_dict = BillingPrepayRequest.from_dict(billing_prepay_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



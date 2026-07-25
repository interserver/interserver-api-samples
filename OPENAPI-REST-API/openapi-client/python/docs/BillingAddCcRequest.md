# BillingAddCcRequest

Request to add a new creditcard into the system.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**address** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**country** | **str** |  | [optional] 
**zip** | **str** |  | [optional] 
**cc** | **str** |  | [optional] 
**cc_exp** | **str** |  | [optional] 
**cc_ccv2** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.billing_add_cc_request import BillingAddCcRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BillingAddCcRequest from a JSON string
billing_add_cc_request_instance = BillingAddCcRequest.from_json(json)
# print the JSON string representation of the object
print(BillingAddCcRequest.to_json())

# convert the object into a dict
billing_add_cc_request_dict = billing_add_cc_request_instance.to_dict()
# create an instance of BillingAddCcRequest from a dict
billing_add_cc_request_from_dict = BillingAddCcRequest.from_dict(billing_add_cc_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



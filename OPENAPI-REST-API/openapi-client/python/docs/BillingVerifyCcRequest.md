# BillingVerifyCcRequest

Payload for verifying a credit card through the verification flow.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idx** | **int** | Card index to verify. | [optional] 
**cc_ccv2** | **str** | CVV code for verification. | [optional] 
**cc_amount1** | **str** | First micro-charge amount for verification. | [optional] 
**cc_amount2** | **str** | Second micro-charge amount for verification. | [optional] 
**terms** | **bool** | Whether terms were accepted for verification. | [optional] 

## Example

```python
from interserver_api_client.models.billing_verify_cc_request import BillingVerifyCcRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BillingVerifyCcRequest from a JSON string
billing_verify_cc_request_instance = BillingVerifyCcRequest.from_json(json)
# print the JSON string representation of the object
print(BillingVerifyCcRequest.to_json())

# convert the object into a dict
billing_verify_cc_request_dict = billing_verify_cc_request_instance.to_dict()
# create an instance of BillingVerifyCcRequest from a dict
billing_verify_cc_request_from_dict = BillingVerifyCcRequest.from_dict(billing_verify_cc_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



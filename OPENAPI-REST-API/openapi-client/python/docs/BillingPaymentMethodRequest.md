# BillingPaymentMethodRequest

Payload for updating the default account payment method.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **str** | Payment method identifier (cc, paypal, or cc{index}). | [optional] 
**cc_auto** | **str** | Whether automatic credit card payments are enabled. | [optional] 

## Example

```python
from interserver_api_client.models.billing_payment_method_request import BillingPaymentMethodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BillingPaymentMethodRequest from a JSON string
billing_payment_method_request_instance = BillingPaymentMethodRequest.from_json(json)
# print the JSON string representation of the object
print(BillingPaymentMethodRequest.to_json())

# convert the object into a dict
billing_payment_method_request_dict = billing_payment_method_request_instance.to_dict()
# create an instance of BillingPaymentMethodRequest from a dict
billing_payment_method_request_from_dict = BillingPaymentMethodRequest.from_dict(billing_payment_method_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



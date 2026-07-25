# PatchBillingCreditCardVerifyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cc_ccv2** | **str** | The CVV/CVC code on the back of the credit card. | 

## Example

```python
from interserver_api_client.models.patch_billing_credit_card_verify_request import PatchBillingCreditCardVerifyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PatchBillingCreditCardVerifyRequest from a JSON string
patch_billing_credit_card_verify_request_instance = PatchBillingCreditCardVerifyRequest.from_json(json)
# print the JSON string representation of the object
print(PatchBillingCreditCardVerifyRequest.to_json())

# convert the object into a dict
patch_billing_credit_card_verify_request_dict = patch_billing_credit_card_verify_request_instance.to_dict()
# create an instance of PatchBillingCreditCardVerifyRequest from a dict
patch_billing_credit_card_verify_request_from_dict = PatchBillingCreditCardVerifyRequest.from_dict(patch_billing_credit_card_verify_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



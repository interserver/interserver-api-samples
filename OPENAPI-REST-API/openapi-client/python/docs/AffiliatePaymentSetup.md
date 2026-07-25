# AffiliatePaymentSetup

Affiliate Payment Setup.  Here you can set if you want the payments to go to `prepay` or `paypal` and the PayPal email address.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**affiliate_paypal** | **str** |  | [optional] 
**affiliate_payment_method** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.affiliate_payment_setup import AffiliatePaymentSetup

# TODO update the JSON string below
json = "{}"
# create an instance of AffiliatePaymentSetup from a JSON string
affiliate_payment_setup_instance = AffiliatePaymentSetup.from_json(json)
# print the JSON string representation of the object
print(AffiliatePaymentSetup.to_json())

# convert the object into a dict
affiliate_payment_setup_dict = affiliate_payment_setup_instance.to_dict()
# create an instance of AffiliatePaymentSetup from a dict
affiliate_payment_setup_from_dict = AffiliatePaymentSetup.from_dict(affiliate_payment_setup_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



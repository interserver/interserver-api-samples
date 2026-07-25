# MailOrderRequest

Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_type** | **int** | Mail plan service type id from getNewMail.serviceTypes (must be buyable). | 
**coupon** | **str** | Coupon code. | [optional] [default to '']
**comment** | **str** | Free-form note saved on the service row (used on addMail). | [optional] [default to '']

## Example

```python
from interserver_api_client.models.mail_order_request import MailOrderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MailOrderRequest from a JSON string
mail_order_request_instance = MailOrderRequest.from_json(json)
# print the JSON string representation of the object
print(MailOrderRequest.to_json())

# convert the object into a dict
mail_order_request_dict = mail_order_request_instance.to_dict()
# create an instance of MailOrderRequest from a dict
mail_order_request_from_dict = MailOrderRequest.from_dict(mail_order_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



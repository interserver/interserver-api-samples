# MailOrder

A mail order record

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The ID of the order. | 
**status** | **str** | The order status. | 
**username** | **str** | The username to use for this order. | 
**comment** | **str** | Optional order comment. | [optional] 

## Example

```python
from interserver_api_client.models.mail_order import MailOrder

# TODO update the JSON string below
json = "{}"
# create an instance of MailOrder from a JSON string
mail_order_instance = MailOrder.from_json(json)
# print the JSON string representation of the object
print(MailOrder.to_json())

# convert the object into a dict
mail_order_dict = mail_order_instance.to_dict()
# create an instance of MailOrder from a dict
mail_order_from_dict = MailOrder.from_dict(mail_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



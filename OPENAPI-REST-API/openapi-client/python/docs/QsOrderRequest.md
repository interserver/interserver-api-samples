# QsOrderRequest

Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **int** | QuickServer plan/server id from getNewQs. | 
**password** | **str** | Root password for the QuickServer. | 
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**os** | **str** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to '']
**comment** | **str** | Free-form note saved on the service row. | [optional] [default to '']

## Example

```python
from interserver_api_client.models.qs_order_request import QsOrderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of QsOrderRequest from a JSON string
qs_order_request_instance = QsOrderRequest.from_json(json)
# print the JSON string representation of the object
print(QsOrderRequest.to_json())

# convert the object into a dict
qs_order_request_dict = qs_order_request_instance.to_dict()
# create an instance of QsOrderRequest from a dict
qs_order_request_from_dict = QsOrderRequest.from_dict(qs_order_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



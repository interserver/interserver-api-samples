# PlaceBuyNowServerRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **float** | The ID of the buy-it-now server configuration to order. Use the server listing from &#x60;GET /servers/order/buy_now_server&#x60; to find valid IDs. | [optional] 
**server_hostname** | **str** | The fully-qualified hostname to assign to the server. | [optional] 
**server_root_password** | **str** | The root or administrator password to set on the server. | [optional] 

## Example

```python
from interserver_api_client.models.place_buy_now_server_request import PlaceBuyNowServerRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PlaceBuyNowServerRequest from a JSON string
place_buy_now_server_request_instance = PlaceBuyNowServerRequest.from_json(json)
# print the JSON string representation of the object
print(PlaceBuyNowServerRequest.to_json())

# convert the object into a dict
place_buy_now_server_request_dict = place_buy_now_server_request_instance.to_dict()
# create an instance of PlaceBuyNowServerRequest from a dict
place_buy_now_server_request_from_dict = PlaceBuyNowServerRequest.from_dict(place_buy_now_server_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



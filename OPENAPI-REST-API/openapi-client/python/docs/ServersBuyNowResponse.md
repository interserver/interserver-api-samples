# ServersBuyNowResponse

Success response after placing a buy-it-now dedicated server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Whether the order was placed successfully. | [optional] 
**text** | **str** | Human-readable status message. | [optional] 
**order_details** | [**ServersBuyNowResponseOrderDetails**](ServersBuyNowResponseOrderDetails.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.servers_buy_now_response import ServersBuyNowResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ServersBuyNowResponse from a JSON string
servers_buy_now_response_instance = ServersBuyNowResponse.from_json(json)
# print the JSON string representation of the object
print(ServersBuyNowResponse.to_json())

# convert the object into a dict
servers_buy_now_response_dict = servers_buy_now_response_instance.to_dict()
# create an instance of ServersBuyNowResponse from a dict
servers_buy_now_response_from_dict = ServersBuyNowResponse.from_dict(servers_buy_now_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ServersBuyNowResponseOrderDetails

Details of the placed order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_id** | **float** | The newly created service ID for the ordered server. | [optional] 
**invoice_id** | **float** | The invoice ID generated for the order. | [optional] 

## Example

```python
from interserver_api_client.models.servers_buy_now_response_order_details import ServersBuyNowResponseOrderDetails

# TODO update the JSON string below
json = "{}"
# create an instance of ServersBuyNowResponseOrderDetails from a JSON string
servers_buy_now_response_order_details_instance = ServersBuyNowResponseOrderDetails.from_json(json)
# print the JSON string representation of the object
print(ServersBuyNowResponseOrderDetails.to_json())

# convert the object into a dict
servers_buy_now_response_order_details_dict = servers_buy_now_response_order_details_instance.to_dict()
# create an instance of ServersBuyNowResponseOrderDetails from a dict
servers_buy_now_response_order_details_from_dict = ServersBuyNowResponseOrderDetails.from_dict(servers_buy_now_response_order_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



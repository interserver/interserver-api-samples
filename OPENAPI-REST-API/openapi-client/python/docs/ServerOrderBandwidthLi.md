# ServerOrderBandwidthLi

Bandwidth options for the server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_15** | [**ServerOrderBandwidth**](ServerOrderBandwidth.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.server_order_bandwidth_li import ServerOrderBandwidthLi

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderBandwidthLi from a JSON string
server_order_bandwidth_li_instance = ServerOrderBandwidthLi.from_json(json)
# print the JSON string representation of the object
print(ServerOrderBandwidthLi.to_json())

# convert the object into a dict
server_order_bandwidth_li_dict = server_order_bandwidth_li_instance.to_dict()
# create an instance of ServerOrderBandwidthLi from a dict
server_order_bandwidth_li_from_dict = ServerOrderBandwidthLi.from_dict(server_order_bandwidth_li_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ServerOrderBandwidth

A bandwidth option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Bandwidth ID. | [optional] 
**price** | **int** | Bandwidth price. | [optional] 
**img** | **str** | Bandwidth image. | [optional] 
**short_desc** | **str** | Short description of the bandwidth. | [optional] 
**long_desc** | **str** | Long description of the bandwidth. | [optional] 
**type** | **str** | Bandwidth type. | [optional] 
**qty** | **str** | Quantity of bandwidth. | [optional] 
**active** | **str** | Active status. | [optional] 
**monthly_price** | **int** | Monthly price. | [optional] 
**price_display** | **str** | Display of bandwidth price. | [optional] 
**monthly_price_display** | **str** | Display of monthly bandwidth price. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_bandwidth import ServerOrderBandwidth

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderBandwidth from a JSON string
server_order_bandwidth_instance = ServerOrderBandwidth.from_json(json)
# print the JSON string representation of the object
print(ServerOrderBandwidth.to_json())

# convert the object into a dict
server_order_bandwidth_dict = server_order_bandwidth_instance.to_dict()
# create an instance of ServerOrderBandwidth from a dict
server_order_bandwidth_from_dict = ServerOrderBandwidth.from_dict(server_order_bandwidth_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ServerOrderConfigIds

Configuration IDs for the server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**memory** | **int** | Memory configuration ID for the server order. | [optional] 
**bandwidth** | **str** | Bandwidth configuration ID for the server order. | [optional] 
**ips** | **str** | IPs configuration ID for the server order. | [optional] 
**os** | **str** | Operating System configuration ID for the server order. | [optional] 
**cp** | **int** | Control Panel configuration ID for the server order. | [optional] 
**raid** | **str** | RAID configuration ID for the server order. | [optional] 
**hd** | **str** | Hard Drives configuration ID for the server order. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_config_ids import ServerOrderConfigIds

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderConfigIds from a JSON string
server_order_config_ids_instance = ServerOrderConfigIds.from_json(json)
# print the JSON string representation of the object
print(ServerOrderConfigIds.to_json())

# convert the object into a dict
server_order_config_ids_dict = server_order_config_ids_instance.to_dict()
# create an instance of ServerOrderConfigIds from a dict
server_order_config_ids_from_dict = ServerOrderConfigIds.from_dict(server_order_config_ids_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



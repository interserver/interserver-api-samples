# ServerOrder

Object representing a server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**form_values** | [**ServerOrderFormValues**](ServerOrderFormValues.md) |  | [optional] 
**config_ids** | [**ServerOrderConfigIds**](ServerOrderConfigIds.md) |  | [optional] 
**cpu** | **int** | Number of CPUs for the server order. | [optional] 
**field_label** | [**ServerOrderFieldLabels**](ServerOrderFieldLabels.md) |  | [optional] 
**cpu_li** | [**ServerOrderCpuLi**](ServerOrderCpuLi.md) |  | [optional] 
**memory_li** | [**ServerOrderMemoryLi**](ServerOrderMemoryLi.md) |  | [optional] 
**bandwidth_li** | [**ServerOrderBandwidthLi**](ServerOrderBandwidthLi.md) |  | [optional] 
**ips_li** | [**ServerOrderIpsLi**](ServerOrderIpsLi.md) |  | [optional] 
**os_li** | [**ServerOrderOsLi**](ServerOrderOsLi.md) |  | [optional] 
**cp_li** | [**ServerOrderCpLi**](ServerOrderCpLi.md) |  | [optional] 
**raid_li** | [**List[ServerOrderRAID]**](ServerOrderRAID.md) | RAID options for the server order. | [optional] 

## Example

```python
from interserver_api_client.models.server_order import ServerOrder

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrder from a JSON string
server_order_instance = ServerOrder.from_json(json)
# print the JSON string representation of the object
print(ServerOrder.to_json())

# convert the object into a dict
server_order_dict = server_order_instance.to_dict()
# create an instance of ServerOrder from a dict
server_order_from_dict = ServerOrder.from_dict(server_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



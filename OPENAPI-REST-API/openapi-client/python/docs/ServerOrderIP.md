# ServerOrderIP

An IP block option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | IP ID. | [optional] 
**price** | **int** | IP price. | [optional] 
**img** | **str** | IP image. | [optional] 
**short_desc** | **str** | Short description of the IP. | [optional] 
**long_desc** | **str** | Long description of the IP. | [optional] 
**qty** | **str** | Quantity of IPs. | [optional] 
**monthly_price** | **int** | Monthly price. | [optional] 
**price_display** | **str** | Display of IP price. | [optional] 
**monthly_price_display** | **str** | Display of monthly IP price. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_ip import ServerOrderIP

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderIP from a JSON string
server_order_ip_instance = ServerOrderIP.from_json(json)
# print the JSON string representation of the object
print(ServerOrderIP.to_json())

# convert the object into a dict
server_order_ip_dict = server_order_ip_instance.to_dict()
# create an instance of ServerOrderIP from a dict
server_order_ip_from_dict = ServerOrderIP.from_dict(server_order_ip_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ServerOrderRAID

A RAID configuration option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | RAID ID. | [optional] 
**price** | **int** | RAID price. | [optional] 
**img** | **str** | RAID image. | [optional] 
**short_desc** | **str** | Short description of the RAID. | [optional] 
**long_desc** | **str** | Long description of the RAID. | [optional] 
**monthly_price** | **int** | Monthly price. | [optional] 
**active** | **str** | Active status. | [optional] 
**price_display** | **str** | Display of RAID price. | [optional] 
**monthly_price_display** | **str** | Display of monthly RAID price. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_raid import ServerOrderRAID

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderRAID from a JSON string
server_order_raid_instance = ServerOrderRAID.from_json(json)
# print the JSON string representation of the object
print(ServerOrderRAID.to_json())

# convert the object into a dict
server_order_raid_dict = server_order_raid_instance.to_dict()
# create an instance of ServerOrderRAID from a dict
server_order_raid_from_dict = ServerOrderRAID.from_dict(server_order_raid_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



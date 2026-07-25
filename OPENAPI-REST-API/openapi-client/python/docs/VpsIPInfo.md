# VpsIPInfo

IP address information table for a VPS service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | Title of the table | [optional] 
**rows** | [**List[VpsIPInfoRow]**](VpsIPInfoRow.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_ip_info import VpsIPInfo

# TODO update the JSON string below
json = "{}"
# create an instance of VpsIPInfo from a JSON string
vps_ip_info_instance = VpsIPInfo.from_json(json)
# print the JSON string representation of the object
print(VpsIPInfo.to_json())

# convert the object into a dict
vps_ip_info_dict = vps_ip_info_instance.to_dict()
# create an instance of VpsIPInfo from a dict
vps_ip_info_from_dict = VpsIPInfo.from_dict(vps_ip_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



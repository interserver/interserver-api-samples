# VpsOrderOsNames

OS Names

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**opensuse** | **str** |  | [optional] 
**ubuntu** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_order_os_names import VpsOrderOsNames

# TODO update the JSON string below
json = "{}"
# create an instance of VpsOrderOsNames from a JSON string
vps_order_os_names_instance = VpsOrderOsNames.from_json(json)
# print the JSON string representation of the object
print(VpsOrderOsNames.to_json())

# convert the object into a dict
vps_order_os_names_dict = vps_order_os_names_instance.to_dict()
# create an instance of VpsOrderOsNames from a dict
vps_order_os_names_from_dict = VpsOrderOsNames.from_dict(vps_order_os_names_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



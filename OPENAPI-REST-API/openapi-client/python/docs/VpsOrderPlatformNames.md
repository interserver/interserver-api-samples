# VpsOrderPlatformNames

Platform Names

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kvm** | **str** |  | [optional] 
**kvmstorage** | **str** |  | [optional] 
**hyperv** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_order_platform_names import VpsOrderPlatformNames

# TODO update the JSON string below
json = "{}"
# create an instance of VpsOrderPlatformNames from a JSON string
vps_order_platform_names_instance = VpsOrderPlatformNames.from_json(json)
# print the JSON string representation of the object
print(VpsOrderPlatformNames.to_json())

# convert the object into a dict
vps_order_platform_names_dict = vps_order_platform_names_instance.to_dict()
# create an instance of VpsOrderPlatformNames from a dict
vps_order_platform_names_from_dict = VpsOrderPlatformNames.from_dict(vps_order_platform_names_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



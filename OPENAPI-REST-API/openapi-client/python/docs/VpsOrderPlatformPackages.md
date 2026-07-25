# VpsOrderPlatformPackages

Platform Packages

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kvm** | **float** |  | [optional] 
**kvmstorage** | **float** |  | [optional] 
**hyperv** | **float** |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_order_platform_packages import VpsOrderPlatformPackages

# TODO update the JSON string below
json = "{}"
# create an instance of VpsOrderPlatformPackages from a JSON string
vps_order_platform_packages_instance = VpsOrderPlatformPackages.from_json(json)
# print the JSON string representation of the object
print(VpsOrderPlatformPackages.to_json())

# convert the object into a dict
vps_order_platform_packages_dict = vps_order_platform_packages_instance.to_dict()
# create an instance of VpsOrderPlatformPackages from a dict
vps_order_platform_packages_from_dict = VpsOrderPlatformPackages.from_dict(vps_order_platform_packages_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



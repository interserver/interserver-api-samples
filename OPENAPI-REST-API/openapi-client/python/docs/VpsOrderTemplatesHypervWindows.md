# VpsOrderTemplatesHypervWindows


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**windows2019_standard** | **str** |  | [optional] 
**windows2022** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_order_templates_hyperv_windows import VpsOrderTemplatesHypervWindows

# TODO update the JSON string below
json = "{}"
# create an instance of VpsOrderTemplatesHypervWindows from a JSON string
vps_order_templates_hyperv_windows_instance = VpsOrderTemplatesHypervWindows.from_json(json)
# print the JSON string representation of the object
print(VpsOrderTemplatesHypervWindows.to_json())

# convert the object into a dict
vps_order_templates_hyperv_windows_dict = vps_order_templates_hyperv_windows_instance.to_dict()
# create an instance of VpsOrderTemplatesHypervWindows from a dict
vps_order_templates_hyperv_windows_from_dict = VpsOrderTemplatesHypervWindows.from_dict(vps_order_templates_hyperv_windows_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



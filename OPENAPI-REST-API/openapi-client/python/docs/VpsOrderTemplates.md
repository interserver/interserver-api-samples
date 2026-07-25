# VpsOrderTemplates

Templates

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hyperv** | [**VpsOrderTemplatesHyperv**](VpsOrderTemplatesHyperv.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_order_templates import VpsOrderTemplates

# TODO update the JSON string below
json = "{}"
# create an instance of VpsOrderTemplates from a JSON string
vps_order_templates_instance = VpsOrderTemplates.from_json(json)
# print the JSON string representation of the object
print(VpsOrderTemplates.to_json())

# convert the object into a dict
vps_order_templates_dict = vps_order_templates_instance.to_dict()
# create an instance of VpsOrderTemplates from a dict
vps_order_templates_from_dict = VpsOrderTemplates.from_dict(vps_order_templates_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



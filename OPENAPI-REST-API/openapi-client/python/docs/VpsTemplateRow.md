# VpsTemplateRow

A VPS OS Template.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_id** | **str** |  | [optional] 
**template_type** | **str** |  | [optional] 
**template_os** | **str** |  | [optional] 
**template_version** | **str** |  | [optional] 
**template_bits** | **str** |  | [optional] 
**template_file** | **str** |  | [optional] 
**template_available** | **str** |  | [optional] 
**template_name** | **str** |  | [optional] 
**template_dir** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_template_row import VpsTemplateRow

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTemplateRow from a JSON string
vps_template_row_instance = VpsTemplateRow.from_json(json)
# print the JSON string representation of the object
print(VpsTemplateRow.to_json())

# convert the object into a dict
vps_template_row_dict = vps_template_row_instance.to_dict()
# create an instance of VpsTemplateRow from a dict
vps_template_row_from_dict = VpsTemplateRow.from_dict(vps_template_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



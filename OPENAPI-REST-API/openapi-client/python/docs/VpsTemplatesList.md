# VpsTemplatesList

A listing of the OS Templates available for use.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**templates** | [**List[VpsTemplateRow]**](VpsTemplateRow.md) | A listing of the templates. | 

## Example

```python
from interserver_api_client.models.vps_templates_list import VpsTemplatesList

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTemplatesList from a JSON string
vps_templates_list_instance = VpsTemplatesList.from_json(json)
# print the JSON string representation of the object
print(VpsTemplatesList.to_json())

# convert the object into a dict
vps_templates_list_dict = vps_templates_list_instance.to_dict()
# create an instance of VpsTemplatesList from a dict
vps_templates_list_from_dict = VpsTemplatesList.from_dict(vps_templates_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



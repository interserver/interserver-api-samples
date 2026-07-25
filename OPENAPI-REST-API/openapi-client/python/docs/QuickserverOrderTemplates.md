# QuickserverOrderTemplates

Templates details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ubuntu** | [**QuickserverOrderTemplatesUbuntu64**](QuickserverOrderTemplatesUbuntu64.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_order_templates import QuickserverOrderTemplates

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverOrderTemplates from a JSON string
quickserver_order_templates_instance = QuickserverOrderTemplates.from_json(json)
# print the JSON string representation of the object
print(QuickserverOrderTemplates.to_json())

# convert the object into a dict
quickserver_order_templates_dict = quickserver_order_templates_instance.to_dict()
# create an instance of QuickserverOrderTemplates from a dict
quickserver_order_templates_from_dict = QuickserverOrderTemplates.from_dict(quickserver_order_templates_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



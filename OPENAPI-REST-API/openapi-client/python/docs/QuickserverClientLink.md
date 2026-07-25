# QuickserverClientLink

A navigation link for QuickServer-related actions in the client portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** | Link label | [optional] 
**link** | **str** | Link | [optional] 
**icon** | **str** | Icon class | [optional] 
**icon_text** | **str** | Icon text | [optional] 
**help_text** | **str** | Help text | [optional] 
**other_attr** | **str** | Other attribute | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_client_link import QuickserverClientLink

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverClientLink from a JSON string
quickserver_client_link_instance = QuickserverClientLink.from_json(json)
# print the JSON string representation of the object
print(QuickserverClientLink.to_json())

# convert the object into a dict
quickserver_client_link_dict = quickserver_client_link_instance.to_dict()
# create an instance of QuickserverClientLink from a dict
quickserver_client_link_from_dict = QuickserverClientLink.from_dict(quickserver_client_link_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# WebsiteClientLink

A navigation link for webhosting-related actions in the client portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** | Label for the link | [optional] 
**link** | **str** | Link URL | [optional] 
**icon** | **str** | Icon for the link | [optional] 
**icon_text** | **str** | Icon text for the link | [optional] 
**help_text** | **str** | Help text for the link | [optional] 
**other_attr** | **str** | Other attributes for the link | [optional] 

## Example

```python
from interserver_api_client.models.website_client_link import WebsiteClientLink

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteClientLink from a JSON string
website_client_link_instance = WebsiteClientLink.from_json(json)
# print the JSON string representation of the object
print(WebsiteClientLink.to_json())

# convert the object into a dict
website_client_link_dict = website_client_link_instance.to_dict()
# create an instance of WebsiteClientLink from a dict
website_client_link_from_dict = WebsiteClientLink.from_dict(website_client_link_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



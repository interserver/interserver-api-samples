# VpsClientLink

A navigation link for VPS-related actions in the client portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** | Display label for the link. | [optional] 
**link** | **str** | URL or route for the action. | [optional] 
**icon** | **str** | Icon class for the link. | [optional] 
**icon_text** | **str** | Icon text label. | [optional] 
**help_text** | **str** | Help tooltip text for the link. | [optional] 

## Example

```python
from interserver_api_client.models.vps_client_link import VpsClientLink

# TODO update the JSON string below
json = "{}"
# create an instance of VpsClientLink from a JSON string
vps_client_link_instance = VpsClientLink.from_json(json)
# print the JSON string representation of the object
print(VpsClientLink.to_json())

# convert the object into a dict
vps_client_link_dict = vps_client_link_instance.to_dict()
# create an instance of VpsClientLink from a dict
vps_client_link_from_dict = VpsClientLink.from_dict(vps_client_link_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



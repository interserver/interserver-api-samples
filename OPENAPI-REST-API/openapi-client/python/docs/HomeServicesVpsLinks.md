# HomeServicesVpsLinks

Map of VPS service IDs to their hostnames for the account dashboard.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_465503** | **str** | Link to a VPS. | [optional] 
**var_2500081** | **str** | Link to a VPS. | [optional] 
**var_2578866** | **str** | Link to a VPS. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_vps_links import HomeServicesVpsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesVpsLinks from a JSON string
home_services_vps_links_instance = HomeServicesVpsLinks.from_json(json)
# print the JSON string representation of the object
print(HomeServicesVpsLinks.to_json())

# convert the object into a dict
home_services_vps_links_dict = home_services_vps_links_instance.to_dict()
# create an instance of HomeServicesVpsLinks from a dict
home_services_vps_links_from_dict = HomeServicesVpsLinks.from_dict(home_services_vps_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



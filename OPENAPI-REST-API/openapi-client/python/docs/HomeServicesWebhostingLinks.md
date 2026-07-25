# HomeServicesWebhostingLinks

Map of webhosting service IDs to their hostnames for the account dashboard.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_376359** | **str** | Link to a website. | [optional] 
**var_376473** | **str** | Link to a website. | [optional] 
**var_386218** | **str** | Link to a website. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_webhosting_links import HomeServicesWebhostingLinks

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesWebhostingLinks from a JSON string
home_services_webhosting_links_instance = HomeServicesWebhostingLinks.from_json(json)
# print the JSON string representation of the object
print(HomeServicesWebhostingLinks.to_json())

# convert the object into a dict
home_services_webhosting_links_dict = home_services_webhosting_links_instance.to_dict()
# create an instance of HomeServicesWebhostingLinks from a dict
home_services_webhosting_links_from_dict = HomeServicesWebhostingLinks.from_dict(home_services_webhosting_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



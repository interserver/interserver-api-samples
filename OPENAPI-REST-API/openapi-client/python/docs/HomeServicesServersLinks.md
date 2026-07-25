# HomeServicesServersLinks

Map of dedicated server service IDs to their hostnames for the account dashboard.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_16058** | **str** | Link to a server. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_servers_links import HomeServicesServersLinks

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesServersLinks from a JSON string
home_services_servers_links_instance = HomeServicesServersLinks.from_json(json)
# print the JSON string representation of the object
print(HomeServicesServersLinks.to_json())

# convert the object into a dict
home_services_servers_links_dict = home_services_servers_links_instance.to_dict()
# create an instance of HomeServicesServersLinks from a dict
home_services_servers_links_from_dict = HomeServicesServersLinks.from_dict(home_services_servers_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



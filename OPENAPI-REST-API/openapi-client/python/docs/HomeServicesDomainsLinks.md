# HomeServicesDomainsLinks

Map of domain service IDs to their hostnames for the account dashboard.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_376114** | **str** | Link to a domain. | [optional] 
**var_376503** | **str** | Link to a domain. | [optional] 
**var_592337** | **str** | Link to a domain. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_domains_links import HomeServicesDomainsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesDomainsLinks from a JSON string
home_services_domains_links_instance = HomeServicesDomainsLinks.from_json(json)
# print the JSON string representation of the object
print(HomeServicesDomainsLinks.to_json())

# convert the object into a dict
home_services_domains_links_dict = home_services_domains_links_instance.to_dict()
# create an instance of HomeServicesDomainsLinks from a dict
home_services_domains_links_from_dict = HomeServicesDomainsLinks.from_dict(home_services_domains_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# HomeServicesDomains


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**HomeServicesDomainsLinks**](HomeServicesDomainsLinks.md) |  | [optional] 
**count** | **int** | Number of domains. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_domains import HomeServicesDomains

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesDomains from a JSON string
home_services_domains_instance = HomeServicesDomains.from_json(json)
# print the JSON string representation of the object
print(HomeServicesDomains.to_json())

# convert the object into a dict
home_services_domains_dict = home_services_domains_instance.to_dict()
# create an instance of HomeServicesDomains from a dict
home_services_domains_from_dict = HomeServicesDomains.from_dict(home_services_domains_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



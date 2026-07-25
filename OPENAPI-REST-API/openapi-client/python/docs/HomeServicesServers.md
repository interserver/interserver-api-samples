# HomeServicesServers


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**HomeServicesServersLinks**](HomeServicesServersLinks.md) |  | [optional] 
**count** | **int** | Number of servers. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_servers import HomeServicesServers

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesServers from a JSON string
home_services_servers_instance = HomeServicesServers.from_json(json)
# print the JSON string representation of the object
print(HomeServicesServers.to_json())

# convert the object into a dict
home_services_servers_dict = home_services_servers_instance.to_dict()
# create an instance of HomeServicesServers from a dict
home_services_servers_from_dict = HomeServicesServers.from_dict(home_services_servers_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



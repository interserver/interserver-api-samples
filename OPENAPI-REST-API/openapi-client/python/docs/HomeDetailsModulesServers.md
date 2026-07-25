# HomeDetailsModulesServers

Dashboard module configuration for dedicated server services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**icon** | **str** | The icon for dedicated servers. | [optional] 
**view_link** | **str** | Link to view server. | [optional] 
**heading** | **str** | Heading for dedicated servers. | [optional] 
**buy_link** | **str** | Link to order server. | [optional] 
**list_link** | **str** | Link to view servers list. | [optional] 

## Example

```python
from interserver_api_client.models.home_details_modules_servers import HomeDetailsModulesServers

# TODO update the JSON string below
json = "{}"
# create an instance of HomeDetailsModulesServers from a JSON string
home_details_modules_servers_instance = HomeDetailsModulesServers.from_json(json)
# print the JSON string representation of the object
print(HomeDetailsModulesServers.to_json())

# convert the object into a dict
home_details_modules_servers_dict = home_details_modules_servers_instance.to_dict()
# create an instance of HomeDetailsModulesServers from a dict
home_details_modules_servers_from_dict = HomeDetailsModulesServers.from_dict(home_details_modules_servers_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



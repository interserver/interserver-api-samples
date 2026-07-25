# HomeDetailsModulesDomains

Dashboard module configuration for domain registration services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**icon** | **str** | The icon for domains. | [optional] 
**view_link** | **str** | Link to view domain. | [optional] 
**heading** | **str** | Heading for domains. | [optional] 
**buy_link** | **str** | Link to order domain. | [optional] 
**list_link** | **str** | Link to view domains list. | [optional] 

## Example

```python
from interserver_api_client.models.home_details_modules_domains import HomeDetailsModulesDomains

# TODO update the JSON string below
json = "{}"
# create an instance of HomeDetailsModulesDomains from a JSON string
home_details_modules_domains_instance = HomeDetailsModulesDomains.from_json(json)
# print the JSON string representation of the object
print(HomeDetailsModulesDomains.to_json())

# convert the object into a dict
home_details_modules_domains_dict = home_details_modules_domains_instance.to_dict()
# create an instance of HomeDetailsModulesDomains from a dict
home_details_modules_domains_from_dict = HomeDetailsModulesDomains.from_dict(home_details_modules_domains_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



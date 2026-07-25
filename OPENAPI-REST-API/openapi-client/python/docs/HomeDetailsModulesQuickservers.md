# HomeDetailsModulesQuickservers

Dashboard module configuration for QuickServer services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**icon** | **str** | The icon for quick servers. | [optional] 
**view_link** | **str** | Link to view quick servers. | [optional] 
**heading** | **str** | Heading for quick servers. | [optional] 
**buy_link** | **str** | Link to order quick server. | [optional] 
**list_link** | **str** | Link to view quick servers list. | [optional] 

## Example

```python
from interserver_api_client.models.home_details_modules_quickservers import HomeDetailsModulesQuickservers

# TODO update the JSON string below
json = "{}"
# create an instance of HomeDetailsModulesQuickservers from a JSON string
home_details_modules_quickservers_instance = HomeDetailsModulesQuickservers.from_json(json)
# print the JSON string representation of the object
print(HomeDetailsModulesQuickservers.to_json())

# convert the object into a dict
home_details_modules_quickservers_dict = home_details_modules_quickservers_instance.to_dict()
# create an instance of HomeDetailsModulesQuickservers from a dict
home_details_modules_quickservers_from_dict = HomeDetailsModulesQuickservers.from_dict(home_details_modules_quickservers_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



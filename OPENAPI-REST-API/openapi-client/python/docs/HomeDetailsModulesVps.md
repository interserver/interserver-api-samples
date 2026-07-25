# HomeDetailsModulesVps

Dashboard module configuration for VPS services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**icon** | **str** | The icon for VPS. | [optional] 
**view_link** | **str** | Link to view VPS. | [optional] 
**heading** | **str** | Heading for VPS. | [optional] 
**buy_link** | **str** | Link to order VPS. | [optional] 
**list_link** | **str** | Link to view VPS list. | [optional] 

## Example

```python
from interserver_api_client.models.home_details_modules_vps import HomeDetailsModulesVps

# TODO update the JSON string below
json = "{}"
# create an instance of HomeDetailsModulesVps from a JSON string
home_details_modules_vps_instance = HomeDetailsModulesVps.from_json(json)
# print the JSON string representation of the object
print(HomeDetailsModulesVps.to_json())

# convert the object into a dict
home_details_modules_vps_dict = home_details_modules_vps_instance.to_dict()
# create an instance of HomeDetailsModulesVps from a dict
home_details_modules_vps_from_dict = HomeDetailsModulesVps.from_dict(home_details_modules_vps_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



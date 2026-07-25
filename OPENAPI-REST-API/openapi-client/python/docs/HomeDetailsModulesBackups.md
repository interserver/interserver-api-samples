# HomeDetailsModulesBackups

Dashboard module configuration for backup storage services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**icon** | **str** | The icon for storages. | [optional] 
**view_link** | **str** | Link to view backup. | [optional] 
**heading** | **str** | Heading for storages. | [optional] 
**buy_link** | **str** | Link to order storage. | [optional] 
**list_link** | **str** | Link to view backups list. | [optional] 

## Example

```python
from interserver_api_client.models.home_details_modules_backups import HomeDetailsModulesBackups

# TODO update the JSON string below
json = "{}"
# create an instance of HomeDetailsModulesBackups from a JSON string
home_details_modules_backups_instance = HomeDetailsModulesBackups.from_json(json)
# print the JSON string representation of the object
print(HomeDetailsModulesBackups.to_json())

# convert the object into a dict
home_details_modules_backups_dict = home_details_modules_backups_instance.to_dict()
# create an instance of HomeDetailsModulesBackups from a dict
home_details_modules_backups_from_dict = HomeDetailsModulesBackups.from_dict(home_details_modules_backups_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



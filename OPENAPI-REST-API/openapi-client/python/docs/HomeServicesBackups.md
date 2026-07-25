# HomeServicesBackups


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | **List[str]** | List of backup links. | [optional] 
**count** | **int** | Number of backups. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_backups import HomeServicesBackups

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesBackups from a JSON string
home_services_backups_instance = HomeServicesBackups.from_json(json)
# print the JSON string representation of the object
print(HomeServicesBackups.to_json())

# convert the object into a dict
home_services_backups_dict = home_services_backups_instance.to_dict()
# create an instance of HomeServicesBackups from a dict
home_services_backups_from_dict = HomeServicesBackups.from_dict(home_services_backups_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



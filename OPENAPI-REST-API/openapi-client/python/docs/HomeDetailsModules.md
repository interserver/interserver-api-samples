# HomeDetailsModules


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domains** | [**HomeDetailsModulesDomains**](HomeDetailsModulesDomains.md) |  | [optional] 
**webhosting** | [**HomeDetailsModulesWebhosting**](HomeDetailsModulesWebhosting.md) |  | [optional] 
**vps** | [**HomeDetailsModulesVps**](HomeDetailsModulesVps.md) |  | [optional] 
**licenses** | [**HomeDetailsModulesLicenses**](HomeDetailsModulesLicenses.md) |  | [optional] 
**backups** | [**HomeDetailsModulesBackups**](HomeDetailsModulesBackups.md) |  | [optional] 
**servers** | [**HomeDetailsModulesServers**](HomeDetailsModulesServers.md) |  | [optional] 
**quickservers** | [**HomeDetailsModulesQuickservers**](HomeDetailsModulesQuickservers.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.home_details_modules import HomeDetailsModules

# TODO update the JSON string below
json = "{}"
# create an instance of HomeDetailsModules from a JSON string
home_details_modules_instance = HomeDetailsModules.from_json(json)
# print the JSON string representation of the object
print(HomeDetailsModules.to_json())

# convert the object into a dict
home_details_modules_dict = home_details_modules_instance.to_dict()
# create an instance of HomeDetailsModules from a dict
home_details_modules_from_dict = HomeDetailsModules.from_dict(home_details_modules_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



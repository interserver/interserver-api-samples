# HomeDetailsModulesLicenses

Dashboard module configuration for software license services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**icon** | **str** | The icon for licenses. | [optional] 
**view_link** | **str** | Link to view license. | [optional] 
**heading** | **str** | Heading for licenses. | [optional] 
**buy_link** | **str** | Link to order license. | [optional] 
**list_link** | **str** | Link to view licenses list. | [optional] 

## Example

```python
from interserver_api_client.models.home_details_modules_licenses import HomeDetailsModulesLicenses

# TODO update the JSON string below
json = "{}"
# create an instance of HomeDetailsModulesLicenses from a JSON string
home_details_modules_licenses_instance = HomeDetailsModulesLicenses.from_json(json)
# print the JSON string representation of the object
print(HomeDetailsModulesLicenses.to_json())

# convert the object into a dict
home_details_modules_licenses_dict = home_details_modules_licenses_instance.to_dict()
# create an instance of HomeDetailsModulesLicenses from a dict
home_details_modules_licenses_from_dict = HomeDetailsModulesLicenses.from_dict(home_details_modules_licenses_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



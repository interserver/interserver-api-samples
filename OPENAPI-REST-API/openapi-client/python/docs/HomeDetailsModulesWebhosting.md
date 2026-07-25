# HomeDetailsModulesWebhosting

Dashboard module configuration for webhosting services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**icon** | **str** | The icon for web hosting. | [optional] 
**view_link** | **str** | Link to view website. | [optional] 
**heading** | **str** | Heading for web hosting. | [optional] 
**buy_link** | **str** | Link to order website. | [optional] 
**list_link** | **str** | Link to view websites list. | [optional] 

## Example

```python
from interserver_api_client.models.home_details_modules_webhosting import HomeDetailsModulesWebhosting

# TODO update the JSON string below
json = "{}"
# create an instance of HomeDetailsModulesWebhosting from a JSON string
home_details_modules_webhosting_instance = HomeDetailsModulesWebhosting.from_json(json)
# print the JSON string representation of the object
print(HomeDetailsModulesWebhosting.to_json())

# convert the object into a dict
home_details_modules_webhosting_dict = home_details_modules_webhosting_instance.to_dict()
# create an instance of HomeDetailsModulesWebhosting from a dict
home_details_modules_webhosting_from_dict = HomeDetailsModulesWebhosting.from_dict(home_details_modules_webhosting_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



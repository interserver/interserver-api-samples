# WebsitesOrderPackagesInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **str** | The ID of the package. | 
**services_name** | **str** | The name of the package. | 
**services_cost** | **str** | The cost of the package. | 
**services_category** | **str** | The category of the package. | 
**services_buyable** | **str** | Indicates if the package is buyable (1 for yes, 0 for no). | 
**services_type** | **str** | The type of the package. | 
**services_field1** | **str** | Additional field 1 for the package. | [optional] 
**services_field2** | **str** | Additional field 2 for the package. | [optional] 
**services_module** | **str** | The module of the package. | 
**services_html** | **str** | HTML content for the package. | [optional] 
**services_description** | **str** | Description of the package. | 
**services_moreinfo_url** | **str** | URL for more information about the package. | [optional] 
**services_hidden** | **str** | Indicates if the package is hidden (1 for yes, 0 for no). | [optional] 

## Example

```python
from interserver_api_client.models.websites_order_packages_info import WebsitesOrderPackagesInfo

# TODO update the JSON string below
json = "{}"
# create an instance of WebsitesOrderPackagesInfo from a JSON string
websites_order_packages_info_instance = WebsitesOrderPackagesInfo.from_json(json)
# print the JSON string representation of the object
print(WebsitesOrderPackagesInfo.to_json())

# convert the object into a dict
websites_order_packages_info_dict = websites_order_packages_info_instance.to_dict()
# create an instance of WebsitesOrderPackagesInfo from a dict
websites_order_packages_info_from_dict = WebsitesOrderPackagesInfo.from_dict(websites_order_packages_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



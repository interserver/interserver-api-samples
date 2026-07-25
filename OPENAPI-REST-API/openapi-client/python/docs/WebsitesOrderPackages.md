# WebsitesOrderPackages

Schema for the packages field in WebsitesOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_11447** | **str** | Package description | 

## Example

```python
from interserver_api_client.models.websites_order_packages import WebsitesOrderPackages

# TODO update the JSON string below
json = "{}"
# create an instance of WebsitesOrderPackages from a JSON string
websites_order_packages_instance = WebsitesOrderPackages.from_json(json)
# print the JSON string representation of the object
print(WebsitesOrderPackages.to_json())

# convert the object into a dict
websites_order_packages_dict = websites_order_packages_instance.to_dict()
# create an instance of WebsitesOrderPackages from a dict
websites_order_packages_from_dict = WebsitesOrderPackages.from_dict(websites_order_packages_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



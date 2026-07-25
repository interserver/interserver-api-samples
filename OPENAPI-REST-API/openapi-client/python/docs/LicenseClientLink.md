# LicenseClientLink


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** | Link label | 
**link** | **str** | Link URL | 
**icon** | **str** | Link icon | 
**help_text** | **str** | Help text | 
**icon_text** | **str** | Icon text | [optional] 
**other_attr** | **str** | Other attributes | [optional] 

## Example

```python
from interserver_api_client.models.license_client_link import LicenseClientLink

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseClientLink from a JSON string
license_client_link_instance = LicenseClientLink.from_json(json)
# print the JSON string representation of the object
print(LicenseClientLink.to_json())

# convert the object into a dict
license_client_link_dict = license_client_link_instance.to_dict()
# create an instance of LicenseClientLink from a dict
license_client_link_from_dict = LicenseClientLink.from_dict(license_client_link_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



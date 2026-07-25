# HomeServicesLicensesLinks

Map of license service IDs to their IP addresses for the account dashboard.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_386522** | **str** | Link to a license. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_licenses_links import HomeServicesLicensesLinks

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesLicensesLinks from a JSON string
home_services_licenses_links_instance = HomeServicesLicensesLinks.from_json(json)
# print the JSON string representation of the object
print(HomeServicesLicensesLinks.to_json())

# convert the object into a dict
home_services_licenses_links_dict = home_services_licenses_links_instance.to_dict()
# create an instance of HomeServicesLicensesLinks from a dict
home_services_licenses_links_from_dict = HomeServicesLicensesLinks.from_dict(home_services_licenses_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



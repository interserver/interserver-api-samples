# HomeServicesLicenses


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**HomeServicesLicensesLinks**](HomeServicesLicensesLinks.md) |  | [optional] 
**count** | **int** | Number of licenses. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_licenses import HomeServicesLicenses

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesLicenses from a JSON string
home_services_licenses_instance = HomeServicesLicenses.from_json(json)
# print the JSON string representation of the object
print(HomeServicesLicenses.to_json())

# convert the object into a dict
home_services_licenses_dict = home_services_licenses_instance.to_dict()
# create an instance of HomeServicesLicenses from a dict
home_services_licenses_from_dict = HomeServicesLicenses.from_dict(home_services_licenses_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



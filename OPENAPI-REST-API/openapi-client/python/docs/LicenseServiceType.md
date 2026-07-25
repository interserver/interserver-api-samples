# LicenseServiceType

Service type definition for a software license, including name, pricing, and category.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **str** | Service ID | [optional] 
**services_name** | **str** | Service name | [optional] 
**services_cost** | **str** | Service cost | [optional] 
**services_category** | **str** | Service category | [optional] 
**services_buyable** | **str** | Buyable status | [optional] 
**services_type** | **str** | Service type | [optional] 
**services_field1** | **str** | Service field 1 | [optional] 
**services_field2** | **str** | Service field 2 | [optional] 
**services_module** | **str** | Service module | [optional] 

## Example

```python
from interserver_api_client.models.license_service_type import LicenseServiceType

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseServiceType from a JSON string
license_service_type_instance = LicenseServiceType.from_json(json)
# print the JSON string representation of the object
print(LicenseServiceType.to_json())

# convert the object into a dict
license_service_type_dict = license_service_type_instance.to_dict()
# create an instance of LicenseServiceType from a dict
license_service_type_from_dict = LicenseServiceType.from_dict(license_service_type_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



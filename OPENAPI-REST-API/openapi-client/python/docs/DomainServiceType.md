# DomainServiceType

Service type definition for a domain registration, including name, pricing, and category.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **str** | Service type ID. | [optional] 
**services_name** | **str** | Service type name (e.g., .com Registration). | [optional] 
**services_cost** | **str** | Service cost per billing period. | [optional] 
**services_category** | **str** | Service category ID. | [optional] 
**services_buyable** | **str** | Whether this service type is available for purchase. | [optional] 
**services_type** | **str** | Internal service type identifier. | [optional] 
**services_field1** | **str** | TLD or first configurable field for the service type. | [optional] 
**services_field2** | **str** | Second configurable field for the service type. | [optional] 
**services_module** | **str** | Backend module handling this service type. | [optional] 

## Example

```python
from interserver_api_client.models.domain_service_type import DomainServiceType

# TODO update the JSON string below
json = "{}"
# create an instance of DomainServiceType from a JSON string
domain_service_type_instance = DomainServiceType.from_json(json)
# print the JSON string representation of the object
print(DomainServiceType.to_json())

# convert the object into a dict
domain_service_type_dict = domain_service_type_instance.to_dict()
# create an instance of DomainServiceType from a dict
domain_service_type_from_dict = DomainServiceType.from_dict(domain_service_type_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



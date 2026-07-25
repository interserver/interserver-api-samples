# Service

An individual package tied to one of our services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **int** |  | 
**services_name** | **str** |  | 
**services_cost** | **float** |  | 
**services_currency** | **str** |  | 
**services_category** | **int** |  | 
**services_buyable** | **bool** |  | 
**services_type** | **int** |  | 
**services_field1** | **str** |  | 
**services_field2** | **str** |  | 
**services_module** | **str** |  | 

## Example

```python
from interserver_api_client.models.service import Service

# TODO update the JSON string below
json = "{}"
# create an instance of Service from a JSON string
service_instance = Service.from_json(json)
# print the JSON string representation of the object
print(Service.to_json())

# convert the object into a dict
service_dict = service_instance.to_dict()
# create an instance of Service from a dict
service_from_dict = Service.from_dict(service_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



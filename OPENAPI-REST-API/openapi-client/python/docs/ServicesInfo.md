# ServicesInfo

Contains the complete catalog of available modules, services, service types, and service categories.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**modules** | [**Modules**](Modules.md) |  | 
**services** | [**Services**](Services.md) |  | 
**service_types** | [**ServiceTypes**](ServiceTypes.md) |  | 
**service_categories** | [**ServiceCategories**](ServiceCategories.md) |  | 

## Example

```python
from interserver_api_client.models.services_info import ServicesInfo

# TODO update the JSON string below
json = "{}"
# create an instance of ServicesInfo from a JSON string
services_info_instance = ServicesInfo.from_json(json)
# print the JSON string representation of the object
print(ServicesInfo.to_json())

# convert the object into a dict
services_info_dict = services_info_instance.to_dict()
# create an instance of ServicesInfo from a dict
services_info_from_dict = ServicesInfo.from_dict(services_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



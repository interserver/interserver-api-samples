# ServiceCategory

A Category of Services.  This is the broadest grouping within a module.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category_id** | **int** |  | 
**category_name** | **str** |  | 
**category_tag** | **str** |  | 
**category_module** | **str** |  | 

## Example

```python
from interserver_api_client.models.service_category import ServiceCategory

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceCategory from a JSON string
service_category_instance = ServiceCategory.from_json(json)
# print the JSON string representation of the object
print(ServiceCategory.to_json())

# convert the object into a dict
service_category_dict = service_category_instance.to_dict()
# create an instance of ServiceCategory from a dict
service_category_from_dict = ServiceCategory.from_dict(service_category_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



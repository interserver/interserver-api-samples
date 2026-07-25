# CreateFilter

Create firewall rule for your ip

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filter_type** | **str** |  | 
**port** | **int** |  | 

## Example

```python
from interserver_api_client.models.create_filter import CreateFilter

# TODO update the JSON string below
json = "{}"
# create an instance of CreateFilter from a JSON string
create_filter_instance = CreateFilter.from_json(json)
# print the JSON string representation of the object
print(CreateFilter.to_json())

# convert the object into a dict
create_filter_dict = create_filter_instance.to_dict()
# create an instance of CreateFilter from a dict
create_filter_from_dict = CreateFilter.from_dict(create_filter_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# QuickserverAddonsRow

A single add-on item associated with a QuickServer service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **str** | Description | [optional] 
**value** | **str** | Value | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_addons_row import QuickserverAddonsRow

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverAddonsRow from a JSON string
quickserver_addons_row_instance = QuickserverAddonsRow.from_json(json)
# print the JSON string representation of the object
print(QuickserverAddonsRow.to_json())

# convert the object into a dict
quickserver_addons_row_dict = quickserver_addons_row_instance.to_dict()
# create an instance of QuickserverAddonsRow from a dict
quickserver_addons_row_from_dict = QuickserverAddonsRow.from_dict(quickserver_addons_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



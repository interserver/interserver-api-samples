# QuickserverAddons


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | Table title | [optional] 
**rows** | [**List[QuickserverAddonsRow]**](QuickserverAddonsRow.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_addons import QuickserverAddons

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverAddons from a JSON string
quickserver_addons_instance = QuickserverAddons.from_json(json)
# print the JSON string representation of the object
print(QuickserverAddons.to_json())

# convert the object into a dict
quickserver_addons_dict = quickserver_addons_instance.to_dict()
# create an instance of QuickserverAddons from a dict
quickserver_addons_from_dict = QuickserverAddons.from_dict(quickserver_addons_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



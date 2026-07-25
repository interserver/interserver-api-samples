# QuickserverOrderVersion

Version details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**centosstream_8** | [**QuickserverOrderVersionCentosstream8**](QuickserverOrderVersionCentosstream8.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_order_version import QuickserverOrderVersion

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverOrderVersion from a JSON string
quickserver_order_version_instance = QuickserverOrderVersion.from_json(json)
# print the JSON string representation of the object
print(QuickserverOrderVersion.to_json())

# convert the object into a dict
quickserver_order_version_dict = quickserver_order_version_instance.to_dict()
# create an instance of QuickserverOrderVersion from a dict
quickserver_order_version_from_dict = QuickserverOrderVersion.from_dict(quickserver_order_version_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



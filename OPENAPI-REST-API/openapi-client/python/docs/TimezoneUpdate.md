# TimezoneUpdate

The request to update the time zone of a vps.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timezone** | **str** | The time zone | 

## Example

```python
from interserver_api_client.models.timezone_update import TimezoneUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of TimezoneUpdate from a JSON string
timezone_update_instance = TimezoneUpdate.from_json(json)
# print the JSON string representation of the object
print(TimezoneUpdate.to_json())

# convert the object into a dict
timezone_update_dict = timezone_update_instance.to_dict()
# create an instance of TimezoneUpdate from a dict
timezone_update_from_dict = TimezoneUpdate.from_dict(timezone_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# IpLimitRange

The lower and upper bounds of an ip range.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start** | **str** | The begining (or first) IP address in the range. | 
**end** | **str** | The ending (or last) IP address in the range. | 

## Example

```python
from interserver_api_client.models.ip_limit_range import IpLimitRange

# TODO update the JSON string below
json = "{}"
# create an instance of IpLimitRange from a JSON string
ip_limit_range_instance = IpLimitRange.from_json(json)
# print the JSON string representation of the object
print(IpLimitRange.to_json())

# convert the object into a dict
ip_limit_range_dict = ip_limit_range_instance.to_dict()
# create an instance of IpLimitRange from a dict
ip_limit_range_from_dict = IpLimitRange.from_dict(ip_limit_range_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



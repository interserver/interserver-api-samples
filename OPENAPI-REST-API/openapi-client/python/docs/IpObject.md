# IpObject

IP Address

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip** | **str** | IP Address | 

## Example

```python
from interserver_api_client.models.ip_object import IpObject

# TODO update the JSON string below
json = "{}"
# create an instance of IpObject from a JSON string
ip_object_instance = IpObject.from_json(json)
# print the JSON string representation of the object
print(IpObject.to_json())

# convert the object into a dict
ip_object_dict = ip_object_instance.to_dict()
# create an instance of IpObject from a dict
ip_object_from_dict = IpObject.from_dict(ip_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



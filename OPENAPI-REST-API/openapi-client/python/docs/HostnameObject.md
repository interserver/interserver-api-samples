# HostnameObject

Request specifying the hostname.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.hostname_object import HostnameObject

# TODO update the JSON string below
json = "{}"
# create an instance of HostnameObject from a JSON string
hostname_object_instance = HostnameObject.from_json(json)
# print the JSON string representation of the object
print(HostnameObject.to_json())

# convert the object into a dict
hostname_object_dict = hostname_object_instance.to_dict()
# create an instance of HostnameObject from a dict
hostname_object_from_dict = HostnameObject.from_dict(hostname_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



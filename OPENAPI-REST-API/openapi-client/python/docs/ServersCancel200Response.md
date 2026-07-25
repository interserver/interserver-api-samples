# ServersCancel200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | 
**text** | **str** |  | 

## Example

```python
from interserver_api_client.models.servers_cancel200_response import ServersCancel200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ServersCancel200Response from a JSON string
servers_cancel200_response_instance = ServersCancel200Response.from_json(json)
# print the JSON string representation of the object
print(ServersCancel200Response.to_json())

# convert the object into a dict
servers_cancel200_response_dict = servers_cancel200_response_instance.to_dict()
# create an instance of ServersCancel200Response from a dict
servers_cancel200_response_from_dict = ServersCancel200Response.from_dict(servers_cancel200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



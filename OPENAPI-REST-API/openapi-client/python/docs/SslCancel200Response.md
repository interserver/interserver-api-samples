# SslCancel200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | 
**text** | **str** |  | 

## Example

```python
from interserver_api_client.models.ssl_cancel200_response import SslCancel200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SslCancel200Response from a JSON string
ssl_cancel200_response_instance = SslCancel200Response.from_json(json)
# print the JSON string representation of the object
print(SslCancel200Response.to_json())

# convert the object into a dict
ssl_cancel200_response_dict = ssl_cancel200_response_instance.to_dict()
# create an instance of SslCancel200Response from a dict
ssl_cancel200_response_from_dict = SslCancel200Response.from_dict(ssl_cancel200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



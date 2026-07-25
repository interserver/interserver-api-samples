# CancelDomain200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | 
**text** | **str** |  | 

## Example

```python
from interserver_api_client.models.cancel_domain200_response import CancelDomain200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CancelDomain200Response from a JSON string
cancel_domain200_response_instance = CancelDomain200Response.from_json(json)
# print the JSON string representation of the object
print(CancelDomain200Response.to_json())

# convert the object into a dict
cancel_domain200_response_dict = cancel_domain200_response_instance.to_dict()
# create an instance of CancelDomain200Response from a dict
cancel_domain200_response_from_dict = CancelDomain200Response.from_dict(cancel_domain200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



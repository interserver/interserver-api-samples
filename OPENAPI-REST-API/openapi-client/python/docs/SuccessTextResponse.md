# SuccessTextResponse

Response with success flag and text description.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Indicates whether or not the command was successful or not. | 
**text** | **str** | Text associated with the response. | [optional] 
**action** | **str** | Optional Action relating to the response. | [optional] 

## Example

```python
from interserver_api_client.models.success_text_response import SuccessTextResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SuccessTextResponse from a JSON string
success_text_response_instance = SuccessTextResponse.from_json(json)
# print the JSON string representation of the object
print(SuccessTextResponse.to_json())

# convert the object into a dict
success_text_response_dict = success_text_response_instance.to_dict()
# create an instance of SuccessTextResponse from a dict
success_text_response_from_dict = SuccessTextResponse.from_dict(success_text_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



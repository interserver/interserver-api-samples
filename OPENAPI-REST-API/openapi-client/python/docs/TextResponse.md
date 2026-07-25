# TextResponse

Text Response Object

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **str** | Response text | [optional] 
**message** | **str** | Response message | [optional] 

## Example

```python
from interserver_api_client.models.text_response import TextResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TextResponse from a JSON string
text_response_instance = TextResponse.from_json(json)
# print the JSON string representation of the object
print(TextResponse.to_json())

# convert the object into a dict
text_response_dict = text_response_instance.to_dict()
# create an instance of TextResponse from a dict
text_response_from_dict = TextResponse.from_dict(text_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



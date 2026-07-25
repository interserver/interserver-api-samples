# UrlRequest

URL

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.url_request import UrlRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UrlRequest from a JSON string
url_request_instance = UrlRequest.from_json(json)
# print the JSON string representation of the object
print(UrlRequest.to_json())

# convert the object into a dict
url_request_dict = url_request_instance.to_dict()
# create an instance of UrlRequest from a dict
url_request_from_dict = UrlRequest.from_dict(url_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# WebsiteLoginResponse

Response from a website login request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**location** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.website_login_response import WebsiteLoginResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteLoginResponse from a JSON string
website_login_response_instance = WebsiteLoginResponse.from_json(json)
# print the JSON string representation of the object
print(WebsiteLoginResponse.to_json())

# convert the object into a dict
website_login_response_dict = website_login_response_instance.to_dict()
# create an instance of WebsiteLoginResponse from a dict
website_login_response_from_dict = WebsiteLoginResponse.from_dict(website_login_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



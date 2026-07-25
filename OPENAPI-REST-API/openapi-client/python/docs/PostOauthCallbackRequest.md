# PostOauthCallbackRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **str** | The OAuth provider name (e.g. &#x60;Google&#x60;). | [optional] 

## Example

```python
from interserver_api_client.models.post_oauth_callback_request import PostOauthCallbackRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PostOauthCallbackRequest from a JSON string
post_oauth_callback_request_instance = PostOauthCallbackRequest.from_json(json)
# print the JSON string representation of the object
print(PostOauthCallbackRequest.to_json())

# convert the object into a dict
post_oauth_callback_request_dict = post_oauth_callback_request_instance.to_dict()
# create an instance of PostOauthCallbackRequest from a dict
post_oauth_callback_request_from_dict = PostOauthCallbackRequest.from_dict(post_oauth_callback_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



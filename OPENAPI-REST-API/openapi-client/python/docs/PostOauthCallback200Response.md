# PostOauthCallback200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **bool** | Whether the user was logged in to an existing account. | [optional] 
**signup** | **bool** | Whether a new account was created. | [optional] 
**linked** | **bool** | Whether the OAuth provider was linked to an existing account. | [optional] 
**account_id** | **int** | The account ID associated with the OAuth login. | [optional] 
**error_code** | **str** | Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;). | [optional] 

## Example

```python
from interserver_api_client.models.post_oauth_callback200_response import PostOauthCallback200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PostOauthCallback200Response from a JSON string
post_oauth_callback200_response_instance = PostOauthCallback200Response.from_json(json)
# print the JSON string representation of the object
print(PostOauthCallback200Response.to_json())

# convert the object into a dict
post_oauth_callback200_response_dict = post_oauth_callback200_response_instance.to_dict()
# create an instance of PostOauthCallback200Response from a dict
post_oauth_callback200_response_from_dict = PostOauthCallback200Response.from_dict(post_oauth_callback200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



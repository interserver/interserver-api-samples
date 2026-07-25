# PatchOauthTwoFactor200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **bool** | Whether the 2FA verification succeeded and the user is now logged in. | [optional] 

## Example

```python
from interserver_api_client.models.patch_oauth_two_factor200_response import PatchOauthTwoFactor200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PatchOauthTwoFactor200Response from a JSON string
patch_oauth_two_factor200_response_instance = PatchOauthTwoFactor200Response.from_json(json)
# print the JSON string representation of the object
print(PatchOauthTwoFactor200Response.to_json())

# convert the object into a dict
patch_oauth_two_factor200_response_dict = patch_oauth_two_factor200_response_instance.to_dict()
# create an instance of PatchOauthTwoFactor200Response from a dict
patch_oauth_two_factor200_response_from_dict = PatchOauthTwoFactor200Response.from_dict(patch_oauth_two_factor200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



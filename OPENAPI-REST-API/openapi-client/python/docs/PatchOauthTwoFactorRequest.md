# PatchOauthTwoFactorRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **int** | The account ID returned from the POST callback. | 
**code** | **str** | The 6-digit two-factor authentication code. | 

## Example

```python
from interserver_api_client.models.patch_oauth_two_factor_request import PatchOauthTwoFactorRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PatchOauthTwoFactorRequest from a JSON string
patch_oauth_two_factor_request_instance = PatchOauthTwoFactorRequest.from_json(json)
# print the JSON string representation of the object
print(PatchOauthTwoFactorRequest.to_json())

# convert the object into a dict
patch_oauth_two_factor_request_dict = patch_oauth_two_factor_request_instance.to_dict()
# create an instance of PatchOauthTwoFactorRequest from a dict
patch_oauth_two_factor_request_from_dict = PatchOauthTwoFactorRequest.from_dict(patch_oauth_two_factor_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



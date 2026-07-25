# UpdateAccountTfaRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_2fa_google_code** | **str** | The 6-digit verification code from your authenticator app. | 

## Example

```python
from interserver_api_client.models.update_account_tfa_request import UpdateAccountTfaRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAccountTfaRequest from a JSON string
update_account_tfa_request_instance = UpdateAccountTfaRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateAccountTfaRequest.to_json())

# convert the object into a dict
update_account_tfa_request_dict = update_account_tfa_request_instance.to_dict()
# create an instance of UpdateAccountTfaRequest from a dict
update_account_tfa_request_from_dict = UpdateAccountTfaRequest.from_dict(update_account_tfa_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



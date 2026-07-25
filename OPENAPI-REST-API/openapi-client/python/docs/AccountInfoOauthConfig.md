# AccountInfoOauthConfig

OAuth integration configuration including callback URL and available providers.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callback** | **str** |  | 
**providers** | [**AccountInfoOauthConfigProviders**](AccountInfoOauthConfigProviders.md) |  | 

## Example

```python
from interserver_api_client.models.account_info_oauth_config import AccountInfoOauthConfig

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoOauthConfig from a JSON string
account_info_oauth_config_instance = AccountInfoOauthConfig.from_json(json)
# print the JSON string representation of the object
print(AccountInfoOauthConfig.to_json())

# convert the object into a dict
account_info_oauth_config_dict = account_info_oauth_config_instance.to_dict()
# create an instance of AccountInfoOauthConfig from a dict
account_info_oauth_config_from_dict = AccountInfoOauthConfig.from_dict(account_info_oauth_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



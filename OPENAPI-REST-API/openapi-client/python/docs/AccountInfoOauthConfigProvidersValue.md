# AccountInfoOauthConfigProvidersValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**linked** | **bool** |  | [optional] 
**account** | **str** |  | [optional] 
**url** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.account_info_oauth_config_providers_value import AccountInfoOauthConfigProvidersValue

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoOauthConfigProvidersValue from a JSON string
account_info_oauth_config_providers_value_instance = AccountInfoOauthConfigProvidersValue.from_json(json)
# print the JSON string representation of the object
print(AccountInfoOauthConfigProvidersValue.to_json())

# convert the object into a dict
account_info_oauth_config_providers_value_dict = account_info_oauth_config_providers_value_instance.to_dict()
# create an instance of AccountInfoOauthConfigProvidersValue from a dict
account_info_oauth_config_providers_value_from_dict = AccountInfoOauthConfigProvidersValue.from_dict(account_info_oauth_config_providers_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



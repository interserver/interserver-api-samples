# AccountInfo

Contains the full account profile including personal info, billing details, OAuth connections, and security settings.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custid** | **str** |  | [optional] 
**ima** | **str** |  | [optional] 
**data** | [**AccountInfoData**](AccountInfoData.md) |  | [optional] 
**ip** | **str** |  | [optional] 
**oauthproviders** | [**AccountInfoOauthproviders**](AccountInfoOauthproviders.md) |  | [optional] 
**oauthconfig** | [**AccountInfoOauthConfig**](AccountInfoOauthConfig.md) |  | [optional] 
**oauthadapters** | **List[str]** |  | [optional] 
**limits** | [**AccountInfoLimits**](AccountInfoLimits.md) |  | [optional] 
**language** | **str** |  | [optional] 
**country_currencies** | [**AccountInfoCountryCurrencies**](AccountInfoCountryCurrencies.md) |  | [optional] 
**enable_locales** | **bool** |  | [optional] 
**enable_currencies** | **bool** |  | [optional] 
**gravatar** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.account_info import AccountInfo

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfo from a JSON string
account_info_instance = AccountInfo.from_json(json)
# print the JSON string representation of the object
print(AccountInfo.to_json())

# convert the object into a dict
account_info_dict = account_info_instance.to_dict()
# create an instance of AccountInfo from a dict
account_info_from_dict = AccountInfo.from_dict(account_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



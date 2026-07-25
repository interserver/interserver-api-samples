# GetAccountLocales200ResponseValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | English display name of the locale. | [optional] 
**local_name** | **str** | Display name of the locale in its own language. | [optional] 

## Example

```python
from interserver_api_client.models.get_account_locales200_response_value import GetAccountLocales200ResponseValue

# TODO update the JSON string below
json = "{}"
# create an instance of GetAccountLocales200ResponseValue from a JSON string
get_account_locales200_response_value_instance = GetAccountLocales200ResponseValue.from_json(json)
# print the JSON string representation of the object
print(GetAccountLocales200ResponseValue.to_json())

# convert the object into a dict
get_account_locales200_response_value_dict = get_account_locales200_response_value_instance.to_dict()
# create an instance of GetAccountLocales200ResponseValue from a dict
get_account_locales200_response_value_from_dict = GetAccountLocales200ResponseValue.from_dict(get_account_locales200_response_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



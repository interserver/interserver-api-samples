# AccountInfoCountryCurrencies

Maps country codes to their available currency options.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from interserver_api_client.models.account_info_country_currencies import AccountInfoCountryCurrencies

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoCountryCurrencies from a JSON string
account_info_country_currencies_instance = AccountInfoCountryCurrencies.from_json(json)
# print the JSON string representation of the object
print(AccountInfoCountryCurrencies.to_json())

# convert the object into a dict
account_info_country_currencies_dict = account_info_country_currencies_instance.to_dict()
# create an instance of AccountInfoCountryCurrencies from a dict
account_info_country_currencies_from_dict = AccountInfoCountryCurrencies.from_dict(account_info_country_currencies_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



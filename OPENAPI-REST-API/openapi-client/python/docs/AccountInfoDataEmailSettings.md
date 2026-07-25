# AccountInfoDataEmailSettings


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**admin_cc_bad_response** | **str** |  | [optional] 
**admin_mass_communications_tpl** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.account_info_data_email_settings import AccountInfoDataEmailSettings

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoDataEmailSettings from a JSON string
account_info_data_email_settings_instance = AccountInfoDataEmailSettings.from_json(json)
# print the JSON string representation of the object
print(AccountInfoDataEmailSettings.to_json())

# convert the object into a dict
account_info_data_email_settings_dict = account_info_data_email_settings_instance.to_dict()
# create an instance of AccountInfoDataEmailSettings from a dict
account_info_data_email_settings_from_dict = AccountInfoDataEmailSettings.from_dict(account_info_data_email_settings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



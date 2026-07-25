# AccountInfoLimits

IP address ranges used to restrict account access to specific IPs.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from interserver_api_client.models.account_info_limits import AccountInfoLimits

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoLimits from a JSON string
account_info_limits_instance = AccountInfoLimits.from_json(json)
# print the JSON string representation of the object
print(AccountInfoLimits.to_json())

# convert the object into a dict
account_info_limits_dict = account_info_limits_instance.to_dict()
# create an instance of AccountInfoLimits from a dict
account_info_limits_from_dict = AccountInfoLimits.from_dict(account_info_limits_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



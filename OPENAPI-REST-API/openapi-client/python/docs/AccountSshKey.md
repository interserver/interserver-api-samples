# AccountSshKey

SSH Keys

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssh_key** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.account_ssh_key import AccountSshKey

# TODO update the JSON string below
json = "{}"
# create an instance of AccountSshKey from a JSON string
account_ssh_key_instance = AccountSshKey.from_json(json)
# print the JSON string representation of the object
print(AccountSshKey.to_json())

# convert the object into a dict
account_ssh_key_dict = account_ssh_key_instance.to_dict()
# create an instance of AccountSshKey from a dict
account_ssh_key_from_dict = AccountSshKey.from_dict(account_ssh_key_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



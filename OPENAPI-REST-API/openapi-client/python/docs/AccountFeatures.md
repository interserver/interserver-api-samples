# AccountFeatures

Account Features data.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disable_reset** | **int** |  | [optional] 
**disable_reinstall** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.account_features import AccountFeatures

# TODO update the JSON string below
json = "{}"
# create an instance of AccountFeatures from a JSON string
account_features_instance = AccountFeatures.from_json(json)
# print the JSON string representation of the object
print(AccountFeatures.to_json())

# convert the object into a dict
account_features_dict = account_features_instance.to_dict()
# create an instance of AccountFeatures from a dict
account_features_from_dict = AccountFeatures.from_dict(account_features_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



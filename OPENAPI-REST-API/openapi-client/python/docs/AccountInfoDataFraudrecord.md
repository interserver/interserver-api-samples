# AccountInfoDataFraudrecord


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**score** | **str** |  | [optional] 
**count** | **str** |  | [optional] 
**reliability** | **str** |  | [optional] 
**code** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.account_info_data_fraudrecord import AccountInfoDataFraudrecord

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoDataFraudrecord from a JSON string
account_info_data_fraudrecord_instance = AccountInfoDataFraudrecord.from_json(json)
# print the JSON string representation of the object
print(AccountInfoDataFraudrecord.to_json())

# convert the object into a dict
account_info_data_fraudrecord_dict = account_info_data_fraudrecord_instance.to_dict()
# create an instance of AccountInfoDataFraudrecord from a dict
account_info_data_fraudrecord_from_dict = AccountInfoDataFraudrecord.from_dict(account_info_data_fraudrecord_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



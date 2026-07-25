# AccountInfoDataCc

Credit card information stored on the account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cc** | **str** |  | [optional] 
**cc_exp** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**address** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**zip** | **str** |  | [optional] 
**country** | **str** |  | [optional] 
**maxmind_riskscore** | **str** |  | [optional] 
**maxmind** | [**AccountInfoMaxMindResponse**](AccountInfoMaxMindResponse.md) |  | [optional] 
**verified** | **bool** |  | [optional] 

## Example

```python
from interserver_api_client.models.account_info_data_cc import AccountInfoDataCc

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoDataCc from a JSON string
account_info_data_cc_instance = AccountInfoDataCc.from_json(json)
# print the JSON string representation of the object
print(AccountInfoDataCc.to_json())

# convert the object into a dict
account_info_data_cc_dict = account_info_data_cc_instance.to_dict()
# create an instance of AccountInfoDataCc from a dict
account_info_data_cc_from_dict = AccountInfoDataCc.from_dict(account_info_data_cc_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



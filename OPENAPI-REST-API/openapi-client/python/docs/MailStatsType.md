# MailStatsType

Statistics about the mail usage including volume by IP, To address, and From address; as well as total sent / delivered counts and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time** | **str** |  | [optional] [default to '1h']
**usage** | **int** |  | [optional] 
**currency** | **str** |  | [optional] 
**currency_symbol** | **str** |  | [optional] 
**cost** | **float** |  | [optional] 
**received** | **int** |  | [optional] 
**sent** | **int** |  | [optional] 
**volume** | [**MailStatsTypeVolume**](MailStatsTypeVolume.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.mail_stats_type import MailStatsType

# TODO update the JSON string below
json = "{}"
# create an instance of MailStatsType from a JSON string
mail_stats_type_instance = MailStatsType.from_json(json)
# print the JSON string representation of the object
print(MailStatsType.to_json())

# convert the object into a dict
mail_stats_type_dict = mail_stats_type_instance.to_dict()
# create an instance of MailStatsType from a dict
mail_stats_type_from_dict = MailStatsType.from_dict(mail_stats_type_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



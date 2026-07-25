# MailStatsTypeVolumeTo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientdomain_com** | **int** |  | [optional] 
**usersite_net** | **int** |  | [optional] 
**salescompany_com** | **int** |  | [optional] 
**clientanothersite_com** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.mail_stats_type_volume_to import MailStatsTypeVolumeTo

# TODO update the JSON string below
json = "{}"
# create an instance of MailStatsTypeVolumeTo from a JSON string
mail_stats_type_volume_to_instance = MailStatsTypeVolumeTo.from_json(json)
# print the JSON string representation of the object
print(MailStatsTypeVolumeTo.to_json())

# convert the object into a dict
mail_stats_type_volume_to_dict = mail_stats_type_volume_to_instance.to_dict()
# create an instance of MailStatsTypeVolumeTo from a dict
mail_stats_type_volume_to_from_dict = MailStatsTypeVolumeTo.from_dict(mail_stats_type_volume_to_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# MailStatsTypeVolume


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | [**MailStatsTypeVolumeTo**](MailStatsTypeVolumeTo.md) |  | [optional] 
**var_from** | [**MailStatsTypeVolumeFrom**](MailStatsTypeVolumeFrom.md) |  | [optional] 
**ip** | [**MailStatsTypeVolumeIp**](MailStatsTypeVolumeIp.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.mail_stats_type_volume import MailStatsTypeVolume

# TODO update the JSON string below
json = "{}"
# create an instance of MailStatsTypeVolume from a JSON string
mail_stats_type_volume_instance = MailStatsTypeVolume.from_json(json)
# print the JSON string representation of the object
print(MailStatsTypeVolume.to_json())

# convert the object into a dict
mail_stats_type_volume_dict = mail_stats_type_volume_instance.to_dict()
# create an instance of MailStatsTypeVolume from a dict
mail_stats_type_volume_from_dict = MailStatsTypeVolume.from_dict(mail_stats_type_volume_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



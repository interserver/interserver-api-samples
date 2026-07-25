# BackupIPInfo

IP address information table for a backup service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | Title of the IP information table. | [optional] 
**rows** | [**List[BackupIPInfoRow]**](BackupIPInfoRow.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.backup_ip_info import BackupIPInfo

# TODO update the JSON string below
json = "{}"
# create an instance of BackupIPInfo from a JSON string
backup_ip_info_instance = BackupIPInfo.from_json(json)
# print the JSON string representation of the object
print(BackupIPInfo.to_json())

# convert the object into a dict
backup_ip_info_dict = backup_ip_info_instance.to_dict()
# create an instance of BackupIPInfo from a dict
backup_ip_info_from_dict = BackupIPInfo.from_dict(backup_ip_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



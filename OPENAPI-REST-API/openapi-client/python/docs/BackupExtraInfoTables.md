# BackupExtraInfoTables

Supplementary information tables for a backup service (IP info, etc.).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_info** | [**BackupIPInfo**](BackupIPInfo.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.backup_extra_info_tables import BackupExtraInfoTables

# TODO update the JSON string below
json = "{}"
# create an instance of BackupExtraInfoTables from a JSON string
backup_extra_info_tables_instance = BackupExtraInfoTables.from_json(json)
# print the JSON string representation of the object
print(BackupExtraInfoTables.to_json())

# convert the object into a dict
backup_extra_info_tables_dict = backup_extra_info_tables_instance.to_dict()
# create an instance of BackupExtraInfoTables from a dict
backup_extra_info_tables_from_dict = BackupExtraInfoTables.from_dict(backup_extra_info_tables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



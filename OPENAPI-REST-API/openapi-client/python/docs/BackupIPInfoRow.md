# BackupIPInfoRow

A single row in the backup IP information table.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **str** | Description of the IP information. | [optional] 
**value** | **str** | Value of the IP information. | [optional] 

## Example

```python
from interserver_api_client.models.backup_ip_info_row import BackupIPInfoRow

# TODO update the JSON string below
json = "{}"
# create an instance of BackupIPInfoRow from a JSON string
backup_ip_info_row_instance = BackupIPInfoRow.from_json(json)
# print the JSON string representation of the object
print(BackupIPInfoRow.to_json())

# convert the object into a dict
backup_ip_info_row_dict = backup_ip_info_row_instance.to_dict()
# create an instance of BackupIPInfoRow from a dict
backup_ip_info_row_from_dict = BackupIPInfoRow.from_dict(backup_ip_info_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



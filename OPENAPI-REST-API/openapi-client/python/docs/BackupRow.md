# BackupRow

A result row from the `Backups` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_id** | **str** | The id of the backup. | [optional] 
**backup_name** | **str** | The name of the backup. | [optional] 
**backup_cost** | **str** | The cost of the backup. | [optional] 
**backup_username** | **str** | The username of the backup. | [optional] 
**backup_status** | **str** | The status of the backup. | [optional] 
**services_name** | **str** | The services name of the backup. | [optional] 

## Example

```python
from interserver_api_client.models.backup_row import BackupRow

# TODO update the JSON string below
json = "{}"
# create an instance of BackupRow from a JSON string
backup_row_instance = BackupRow.from_json(json)
# print the JSON string representation of the object
print(BackupRow.to_json())

# convert the object into a dict
backup_row_dict = backup_row_instance.to_dict()
# create an instance of BackupRow from a dict
backup_row_from_dict = BackupRow.from_dict(backup_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



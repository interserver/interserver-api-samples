# VpsBackupRow

A single backed-up item and information about it.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Backup Type | 
**service** | **int** | The service id such as vps  id. | 
**name** | **str** | The name of the backup. | 
**size** | **int** | Size of the file in bytes | 
**var_date** | **int** | The creation date of the backup in a unix timestamp. | 

## Example

```python
from interserver_api_client.models.vps_backup_row import VpsBackupRow

# TODO update the JSON string below
json = "{}"
# create an instance of VpsBackupRow from a JSON string
vps_backup_row_instance = VpsBackupRow.from_json(json)
# print the JSON string representation of the object
print(VpsBackupRow.to_json())

# convert the object into a dict
vps_backup_row_dict = vps_backup_row_instance.to_dict()
# create an instance of VpsBackupRow from a dict
vps_backup_row_from_dict = VpsBackupRow.from_dict(vps_backup_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



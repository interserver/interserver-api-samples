# BackupServiceMaster


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_id** | **int** | Backup ID of the service master. | [optional] 
**backup_name** | **str** | Name of the backup service. | [optional] 
**backup_ip** | **str** | IP address of the backup service. | [optional] 
**backup_type** | **int** | Type of the backup service. | [optional] 
**backup_hdsize** | **int** | Size of the backup service&#39;s hard drive. | [optional] 
**backup_hdfree** | **int** | Amount of free space on the backup service&#39;s hard drive. | [optional] 
**backup_last_update** | **str** | Last update timestamp of the backup service. | [optional] 
**backup_available** | **int** | Availability status of the backup service. | [optional] 
**backup_iowait** | **int** | I/O wait status of the backup service. | [optional] 
**backup_order** | **int** | Order associated with the backup service. | [optional] 

## Example

```python
from interserver_api_client.models.backup_service_master import BackupServiceMaster

# TODO update the JSON string below
json = "{}"
# create an instance of BackupServiceMaster from a JSON string
backup_service_master_instance = BackupServiceMaster.from_json(json)
# print the JSON string representation of the object
print(BackupServiceMaster.to_json())

# convert the object into a dict
backup_service_master_dict = backup_service_master_instance.to_dict()
# create an instance of BackupServiceMaster from a dict
backup_service_master_from_dict = BackupServiceMaster.from_dict(backup_service_master_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



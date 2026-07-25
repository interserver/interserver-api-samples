# BackupServiceInfo

Core service record for a backup storage service including ID, status, quota, and billing details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_id** | **str** | Backup ID. | [optional] 
**backup_server** | **str** | Backup server ID. | [optional] 
**backup_username** | **str** | Backup username. | [optional] 
**backup_type** | **str** | Backup type. | [optional] 
**backup_currency** | **str** | Backup currency. | [optional] 
**backup_order_date** | **str** | Backup order date. | [optional] 
**backup_custid** | **str** | Backup customer ID. | [optional] 
**backup_quota** | **str** | Backup quota. | [optional] 
**backup_ip** | **str** | Backup IP address. | [optional] 
**backup_status** | **str** | Backup status. | [optional] 
**backup_invoice** | **str** | Backup invoice. | [optional] 
**backup_coupon** | **str** | Backup coupon. | [optional] 
**backup_extra** | **str** | Backup extra information. | [optional] 
**backup_server_status** | **str** | Backup server status. | [optional] 
**backup_comment** | **str** | Backup comment. | [optional] 

## Example

```python
from interserver_api_client.models.backup_service_info import BackupServiceInfo

# TODO update the JSON string below
json = "{}"
# create an instance of BackupServiceInfo from a JSON string
backup_service_info_instance = BackupServiceInfo.from_json(json)
# print the JSON string representation of the object
print(BackupServiceInfo.to_json())

# convert the object into a dict
backup_service_info_dict = backup_service_info_instance.to_dict()
# create an instance of BackupServiceInfo from a dict
backup_service_info_from_dict = BackupServiceInfo.from_dict(backup_service_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



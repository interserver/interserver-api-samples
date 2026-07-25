# Backup

Full detail view of a backup service including billing, service info, and configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**BackupServiceInfo**](BackupServiceInfo.md) |  | [optional] 
**client_links** | [**List[BackupClientLink]**](BackupClientLink.md) |  | [optional] 
**billing_details** | [**BackupBillingDetails**](BackupBillingDetails.md) |  | [optional] 
**cust_currency** | **str** | Customer&#39;s currency. | [optional] 
**cust_currency_symbol** | **str** | Customer&#39;s currency symbol. | [optional] 
**service_master** | [**BackupServiceMaster**](BackupServiceMaster.md) |  | [optional] 
**package** | **str** | Package information. | [optional] 
**service_extra** | **str** |  | [optional] 
**extra_info_tables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.backup import Backup

# TODO update the JSON string below
json = "{}"
# create an instance of Backup from a JSON string
backup_instance = Backup.from_json(json)
# print the JSON string representation of the object
print(Backup.to_json())

# convert the object into a dict
backup_dict = backup_instance.to_dict()
# create an instance of Backup from a dict
backup_from_dict = Backup.from_dict(backup_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



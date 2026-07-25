# InterServerClient::BackupServiceMaster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_id** | **Integer** | Backup ID of the service master. | [optional] |
| **backup_name** | **String** | Name of the backup service. | [optional] |
| **backup_ip** | **String** | IP address of the backup service. | [optional] |
| **backup_type** | **Integer** | Type of the backup service. | [optional] |
| **backup_hdsize** | **Integer** | Size of the backup service&#39;s hard drive. | [optional] |
| **backup_hdfree** | **Integer** | Amount of free space on the backup service&#39;s hard drive. | [optional] |
| **backup_last_update** | **String** | Last update timestamp of the backup service. | [optional] |
| **backup_available** | **Integer** | Availability status of the backup service. | [optional] |
| **backup_iowait** | **Integer** | I/O wait status of the backup service. | [optional] |
| **backup_order** | **Integer** | Order associated with the backup service. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupServiceMaster.new(
  backup_id: 38,
  backup_name: storage1400.is.cc,
  backup_ip: 44.22.11.88,
  backup_type: 703,
  backup_hdsize: 156448,
  backup_hdfree: 61374,
  backup_last_update: 2023-08-17T23:20:02.000Z,
  backup_available: 0,
  backup_iowait: 0,
  backup_order: 21359
)
```


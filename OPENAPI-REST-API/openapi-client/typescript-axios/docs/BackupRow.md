# BackupRow

A result row from the `Backups` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_id** | **string** | The id of the backup. | [optional] [default to undefined]
**backup_name** | **string** | The name of the backup. | [optional] [default to undefined]
**backup_cost** | **string** | The cost of the backup. | [optional] [default to undefined]
**backup_username** | **string** | The username of the backup. | [optional] [default to undefined]
**backup_status** | **string** | The status of the backup. | [optional] [default to undefined]
**services_name** | **string** | The services name of the backup. | [optional] [default to undefined]

## Example

```typescript
import { BackupRow } from '@interserver/myadmin-client';

const instance: BackupRow = {
    backup_id,
    backup_name,
    backup_cost,
    backup_username,
    backup_status,
    services_name,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

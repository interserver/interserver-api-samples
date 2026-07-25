# VpsBackupRow

A single backed-up item and information about it.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** | Backup Type | [default to undefined]
**service** | **number** | The service id such as vps  id. | [default to undefined]
**name** | **string** | The name of the backup. | [default to undefined]
**size** | **number** | Size of the file in bytes | [default to undefined]
**date** | **number** | The creation date of the backup in a unix timestamp. | [default to undefined]

## Example

```typescript
import { VpsBackupRow } from '@interserver/myadmin-client';

const instance: VpsBackupRow = {
    type,
    service,
    name,
    size,
    date,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# BackupIPInfo

IP address information table for a backup service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **string** | Title of the IP information table. | [optional] [default to undefined]
**rows** | [**Array&lt;BackupIPInfoRow&gt;**](BackupIPInfoRow.md) |  | [optional] [default to undefined]

## Example

```typescript
import { BackupIPInfo } from '@interserver/myadmin-client';

const instance: BackupIPInfo = {
    title,
    rows,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# VpsSnapshot

A VPS snapshot (point-in-time backup) stored on the host node.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Snapshot name. | [optional] [default to undefined]
**used** | **number** | Disk space used by this snapshot in bytes. | [optional] [default to undefined]
**date** | **number** | Unix timestamp of when the snapshot was created. | [optional] [default to undefined]

## Example

```typescript
import { VpsSnapshot } from '@interserver/myadmin-client';

const instance: VpsSnapshot = {
    name,
    used,
    date,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

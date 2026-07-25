# ServerOrderFieldLabels

Field labels for the server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bandwidth** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Bandwidth field label. | [optional] [default to undefined]
**ips** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | IPs field label. | [optional] [default to undefined]
**os** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Operating System field label. | [optional] [default to undefined]
**cp** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Control Panel field label. | [optional] [default to undefined]
**raid** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | RAID field label. | [optional] [default to undefined]
**memory** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Memory field label. | [optional] [default to undefined]
**hd** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Hard Drives field label | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderFieldLabels } from '@interserver/myadmin-client';

const instance: ServerOrderFieldLabels = {
    bandwidth,
    ips,
    os,
    cp,
    raid,
    memory,
    hd,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

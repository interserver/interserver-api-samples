# ServerOrderConfigIds

Configuration IDs for the server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**memory** | **number** | Memory configuration ID for the server order. | [optional] [default to undefined]
**bandwidth** | **string** | Bandwidth configuration ID for the server order. | [optional] [default to undefined]
**ips** | **string** | IPs configuration ID for the server order. | [optional] [default to undefined]
**os** | **string** | Operating System configuration ID for the server order. | [optional] [default to undefined]
**cp** | **number** | Control Panel configuration ID for the server order. | [optional] [default to undefined]
**raid** | **string** | RAID configuration ID for the server order. | [optional] [default to undefined]
**hd** | **string** | Hard Drives configuration ID for the server order. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderConfigIds } from '@interserver/myadmin-client';

const instance: ServerOrderConfigIds = {
    memory,
    bandwidth,
    ips,
    os,
    cp,
    raid,
    hd,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

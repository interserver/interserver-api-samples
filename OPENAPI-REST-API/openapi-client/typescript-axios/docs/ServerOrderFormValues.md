# ServerOrderFormValues

Form values for the server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**memory** | **number** | Memory value for the server order. | [optional] [default to undefined]
**bandwidth** | **string** | Bandwidth value for the server order. | [optional] [default to undefined]
**ips** | **string** | IPs value for the server order. | [optional] [default to undefined]
**os** | **string** | Operating System value for the server order. | [optional] [default to undefined]
**cp** | **number** | Control Panel value for the server order. | [optional] [default to undefined]
**raid** | **string** | RAID value for the server order. | [optional] [default to undefined]
**hd** | **string** | Hard Drives value for the server order. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderFormValues } from '@interserver/myadmin-client';

const instance: ServerOrderFormValues = {
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

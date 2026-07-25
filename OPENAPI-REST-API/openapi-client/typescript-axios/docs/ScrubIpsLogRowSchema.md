# ScrubIpsLogRowSchema


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **string** |  | [optional] [default to undefined]
**filter** | **string** |  | [optional] [default to undefined]
**blocked_ip** | **string** |  | [optional] [default to undefined]
**target_ip** | **string** |  | [optional] [default to undefined]
**target_port** | **number** |  | [optional] [default to undefined]
**protocol** | **string** |  | [optional] [default to undefined]
**byte_count** | **number** |  | [optional] [default to undefined]
**xdp_action** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { ScrubIpsLogRowSchema } from '@interserver/myadmin-client';

const instance: ScrubIpsLogRowSchema = {
    date,
    filter,
    blocked_ip,
    target_ip,
    target_port,
    protocol,
    byte_count,
    xdp_action,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

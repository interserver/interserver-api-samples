# ServerOrder

Object representing a server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**form_values** | [**ServerOrderFormValues**](ServerOrderFormValues.md) |  | [optional] [default to undefined]
**config_ids** | [**ServerOrderConfigIds**](ServerOrderConfigIds.md) |  | [optional] [default to undefined]
**cpu** | **number** | Number of CPUs for the server order. | [optional] [default to undefined]
**field_label** | [**ServerOrderFieldLabels**](ServerOrderFieldLabels.md) |  | [optional] [default to undefined]
**cpu_li** | [**ServerOrderCpuLi**](ServerOrderCpuLi.md) |  | [optional] [default to undefined]
**memory_li** | [**ServerOrderMemoryLi**](ServerOrderMemoryLi.md) |  | [optional] [default to undefined]
**bandwidth_li** | [**ServerOrderBandwidthLi**](ServerOrderBandwidthLi.md) |  | [optional] [default to undefined]
**ips_li** | [**ServerOrderIpsLi**](ServerOrderIpsLi.md) |  | [optional] [default to undefined]
**os_li** | [**ServerOrderOsLi**](ServerOrderOsLi.md) |  | [optional] [default to undefined]
**cp_li** | [**ServerOrderCpLi**](ServerOrderCpLi.md) |  | [optional] [default to undefined]
**raid_li** | [**Array&lt;ServerOrderRAID&gt;**](ServerOrderRAID.md) | RAID options for the server order. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrder } from '@interserver/myadmin-client';

const instance: ServerOrder = {
    form_values,
    config_ids,
    cpu,
    field_label,
    cpu_li,
    memory_li,
    bandwidth_li,
    ips_li,
    os_li,
    cp_li,
    raid_li,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

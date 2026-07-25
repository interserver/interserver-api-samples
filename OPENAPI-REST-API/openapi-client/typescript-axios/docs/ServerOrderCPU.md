# ServerOrderCPU

A CPU option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | CPU ID. | [optional] [default to undefined]
**price** | **number** | CPU price. | [optional] [default to undefined]
**img** | **string** | CPU image. | [optional] [default to undefined]
**short_desc** | **string** | Short description of the CPU. | [optional] [default to undefined]
**long_desc** | **string** | Long description of the CPU. | [optional] [default to undefined]
**location** | **string** | Location of the CPU. | [optional] [default to undefined]
**fsb** | **string** | Front Side Bus information. | [optional] [default to undefined]
**manu** | **string** | Manufacturer information. | [optional] [default to undefined]
**type** | **string** | CPU type. | [optional] [default to undefined]
**speed** | **string** | CPU speed. | [optional] [default to undefined]
**cache** | **string** | Cache information. | [optional] [default to undefined]
**active** | **string** | Active status. | [optional] [default to undefined]
**num_cores** | **string** | Number of cores. | [optional] [default to undefined]
**num_cpus** | **string** | Number of CPUs. | [optional] [default to undefined]
**benchmark** | **string** | CPU benchmark. | [optional] [default to undefined]
**monthly_price** | **number** | Monthly price. | [optional] [default to undefined]
**max_ram** | **string** | Maximum RAM supported. | [optional] [default to undefined]
**min_ram** | **string** | Minimum RAM required. | [optional] [default to undefined]
**max_lff** | **string** | Maximum LFF (Large Form Factor) supported. | [optional] [default to undefined]
**max_sff** | **string** | Maximum SFF (Small Form Factor) supported. | [optional] [default to undefined]
**max_nve** | **string** | Maximum NVMe drives supported. | [optional] [default to undefined]
**visible** | **string** | Visibility status. | [optional] [default to undefined]
**hd_ids** | **string** | Hard drive IDs. | [optional] [default to undefined]
**price_display** | **string** | Display of CPU price. | [optional] [default to undefined]
**monthly_price_display** | **string** | Display of monthly CPU price. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderCPU } from '@interserver/myadmin-client';

const instance: ServerOrderCPU = {
    id,
    price,
    img,
    short_desc,
    long_desc,
    location,
    fsb,
    manu,
    type,
    speed,
    cache,
    active,
    num_cores,
    num_cpus,
    benchmark,
    monthly_price,
    max_ram,
    min_ram,
    max_lff,
    max_sff,
    max_nve,
    visible,
    hd_ids,
    price_display,
    monthly_price_display,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

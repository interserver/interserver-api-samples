# BuyItNowRow

A buy-it-now dedicated server listing from the marketplace, with hardware specs and pricing.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **string** | Unique server ID. Use this as &#x60;server_id&#x60; in &#x60;POST /servers/order/buy_now_server&#x60;. | [optional] [default to undefined]
**cpu** | [**Array&lt;BuyItNowRowCpuInner&gt;**](BuyItNowRowCpuInner.md) |  | [optional] [default to undefined]
**memory** | **string** |  | [optional] [default to undefined]
**disk** | **{ [key: string]: string; }** |  | [optional] [default to undefined]
**bandwidth** | **string** |  | [optional] [default to undefined]
**ips** | **string** |  | [optional] [default to undefined]
**location** | **string** |  | [optional] [default to undefined]
**price** | **number** |  | [optional] [default to undefined]

## Example

```typescript
import { BuyItNowRow } from '@interserver/myadmin-client';

const instance: BuyItNowRow = {
    server_id,
    cpu,
    memory,
    disk,
    bandwidth,
    ips,
    location,
    price,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

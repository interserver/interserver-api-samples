# VpsTrafficResponse

VPS Traffic Information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**target** | **string** |  | [default to undefined]
**interval** | **number** |  | [default to undefined]
**history** | [**VpsTrafficHistoryResponse**](VpsTrafficHistoryResponse.md) |  | [default to undefined]
**last** | **string** |  | [default to undefined]
**times** | **Array&lt;string&gt;** |  | [default to undefined]
**totals** | [**VpsTrafficTotalsResposne**](VpsTrafficTotalsResposne.md) |  | [default to undefined]
**usage** | [**VpsTrafficUsageResponse**](VpsTrafficUsageResponse.md) |  | [default to undefined]
**data** | [**Array&lt;VpsTrafficDataSectionResponse&gt;**](VpsTrafficDataSectionResponse.md) |  | [default to undefined]

## Example

```typescript
import { VpsTrafficResponse } from '@interserver/myadmin-client';

const instance: VpsTrafficResponse = {
    name,
    target,
    interval,
    history,
    last,
    times,
    totals,
    usage,
    data,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

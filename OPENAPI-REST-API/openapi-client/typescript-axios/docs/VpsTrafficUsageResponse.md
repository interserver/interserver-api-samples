# VpsTrafficUsageResponse

VPS Traffic Usage Section

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | [default to undefined]
**peak** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | [default to undefined]
**average** | [**VpsTrafficUsageAverageResponse**](VpsTrafficUsageAverageResponse.md) |  | [default to undefined]

## Example

```typescript
import { VpsTrafficUsageResponse } from '@interserver/myadmin-client';

const instance: VpsTrafficUsageResponse = {
    current,
    peak,
    average,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

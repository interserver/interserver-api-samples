# StatusMonthlyBreakdown

Monthly mail delivery status breakdown, showing counts per status category.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_default** | [**MonthlyCounts**](MonthlyCounts.md) |  | [default to undefined]
**failed** | [**MonthlyCounts**](MonthlyCounts.md) |  | [default to undefined]
**rejected** | [**MonthlyCounts**](MonthlyCounts.md) |  | [default to undefined]
**pending** | [**MonthlyCounts**](MonthlyCounts.md) |  | [default to undefined]
**locked** | [**MonthlyCounts**](MonthlyCounts.md) |  | [default to undefined]
**paid** | [**MonthlyCounts**](MonthlyCounts.md) |  | [default to undefined]

## Example

```typescript
import { StatusMonthlyBreakdown } from '@interserver/myadmin-client';

const instance: StatusMonthlyBreakdown = {
    _default,
    failed,
    rejected,
    pending,
    locked,
    paid,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

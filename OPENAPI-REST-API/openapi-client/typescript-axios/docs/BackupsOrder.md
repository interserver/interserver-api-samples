# BackupsOrder

Available backup storage packages and pricing for ordering a new backup service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**packageCosts** | [**BackupsOrderPackageCosts**](BackupsOrderPackageCosts.md) |  | [default to undefined]
**serviceTypes** | [**BackupsOrderServiceTypes**](BackupsOrderServiceTypes.md) |  | [default to undefined]

## Example

```typescript
import { BackupsOrder } from '@interserver/myadmin-client';

const instance: BackupsOrder = {
    packageCosts,
    serviceTypes,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

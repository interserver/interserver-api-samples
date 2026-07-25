# VpsIPInfo

IP address information table for a VPS service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **string** | Title of the table | [optional] [default to undefined]
**rows** | [**Array&lt;VpsIPInfoRow&gt;**](VpsIPInfoRow.md) |  | [optional] [default to undefined]

## Example

```typescript
import { VpsIPInfo } from '@interserver/myadmin-client';

const instance: VpsIPInfo = {
    title,
    rows,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

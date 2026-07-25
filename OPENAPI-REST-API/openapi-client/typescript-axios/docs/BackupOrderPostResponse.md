# BackupOrderPostResponse

Backup Order Placement Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_continue** | **boolean** |  | [optional] [default to undefined]
**errors** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**total_cost** | **string** |  | [optional] [default to undefined]
**iid** | **string** |  | [optional] [default to undefined]
**iids** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**real_iids** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**serviceId** | **number** |  | [optional] [default to undefined]
**invoice_description** | **string** |  | [optional] [default to undefined]
**cj_params** | [**BackupOrderPostResponseCjParams**](BackupOrderPostResponseCjParams.md) |  | [optional] [default to undefined]

## Example

```typescript
import { BackupOrderPostResponse } from '@interserver/myadmin-client';

const instance: BackupOrderPostResponse = {
    _continue,
    errors,
    total_cost,
    iid,
    iids,
    real_iids,
    serviceId,
    invoice_description,
    cj_params,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

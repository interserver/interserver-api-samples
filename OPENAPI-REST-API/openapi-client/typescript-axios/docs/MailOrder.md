# MailOrder

A mail order record

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** | The ID of the order. | [default to undefined]
**status** | **string** | The order status. | [default to undefined]
**username** | **string** | The username to use for this order. | [default to undefined]
**comment** | **string** | Optional order comment. | [optional] [default to undefined]

## Example

```typescript
import { MailOrder } from '@interserver/myadmin-client';

const instance: MailOrder = {
    id,
    status,
    username,
    comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

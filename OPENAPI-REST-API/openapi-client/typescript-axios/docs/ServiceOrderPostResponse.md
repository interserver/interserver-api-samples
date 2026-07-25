# ServiceOrderPostResponse

Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_continue** | **boolean** | Whether the order was accepted and can proceed to payment. | [optional] [default to undefined]
**errors** | **Array&lt;string&gt;** | List of validation errors (empty on success). | [optional] [default to undefined]
**total_cost** | **string** | Total cost of the order. | [optional] [default to undefined]
**iid** | **string** | Primary invoice ID for payment. | [optional] [default to undefined]
**iids** | **Array&lt;string&gt;** | All invoice identifiers associated with the order. | [optional] [default to undefined]
**real_iids** | **Array&lt;string&gt;** | Numeric invoice IDs for use with billing endpoints. | [optional] [default to undefined]
**serviceId** | **number** | The new service ID created by the order. | [optional] [default to undefined]
**invoice_description** | **string** | Human-readable description of the invoice. | [optional] [default to undefined]

## Example

```typescript
import { ServiceOrderPostResponse } from '@interserver/myadmin-client';

const instance: ServiceOrderPostResponse = {
    _continue,
    errors,
    total_cost,
    iid,
    iids,
    real_iids,
    serviceId,
    invoice_description,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

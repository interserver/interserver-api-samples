# ServersBuyNowResponse

Success response after placing a buy-it-now dedicated server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **boolean** | Whether the order was placed successfully. | [optional] [default to undefined]
**text** | **string** | Human-readable status message. | [optional] [default to undefined]
**order_details** | [**ServersBuyNowResponseOrderDetails**](ServersBuyNowResponseOrderDetails.md) |  | [optional] [default to undefined]

## Example

```typescript
import { ServersBuyNowResponse } from '@interserver/myadmin-client';

const instance: ServersBuyNowResponse = {
    success,
    text,
    order_details,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

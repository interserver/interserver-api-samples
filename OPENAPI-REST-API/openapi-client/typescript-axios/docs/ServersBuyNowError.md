# ServersBuyNowError

Error response when a buy-it-now server order fails validation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **boolean** | Always false for error responses. | [optional] [default to undefined]
**text** | **string** | Human-readable error summary. | [optional] [default to undefined]
**errors** | **Array&lt;string&gt;** | List of specific validation error messages. | [optional] [default to undefined]

## Example

```typescript
import { ServersBuyNowError } from '@interserver/myadmin-client';

const instance: ServersBuyNowError = {
    success,
    text,
    errors,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

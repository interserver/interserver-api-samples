# InitiatePayment200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** | The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result). | [optional] [default to undefined]
**redirect** | **string** | URL to redirect the user to for payment (when type is &#x60;redirect&#x60;). | [optional] [default to undefined]
**action** | **string** | Form action URL (when type is &#x60;submit&#x60;). | [optional] [default to undefined]
**method** | **string** | HTTP method for the form submission (when type is &#x60;submit&#x60;). | [optional] [default to undefined]
**items** | **object** | Form field name-value pairs to submit (when type is &#x60;submit&#x60;). | [optional] [default to undefined]
**text** | **string** | Status or result text. | [optional] [default to undefined]

## Example

```typescript
import { InitiatePayment200Response } from '@interserver/myadmin-client';

const instance: InitiatePayment200Response = {
    type,
    redirect,
    action,
    method,
    items,
    text,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

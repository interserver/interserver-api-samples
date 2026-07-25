# SuccessTextResponse

Response with success flag and text description.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **boolean** | Indicates whether or not the command was successful or not. | [default to undefined]
**text** | **string** | Text associated with the response. | [optional] [default to undefined]
**action** | **string** | Optional Action relating to the response. | [optional] [default to undefined]

## Example

```typescript
import { SuccessTextResponse } from '@interserver/myadmin-client';

const instance: SuccessTextResponse = {
    success,
    text,
    action,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

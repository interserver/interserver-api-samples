# SendMail

Details for an Email

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **string** | The Contact whom is the primary recipient of this email. | [default to undefined]
**from** | **string** | The contact whom is the this email is from. | [default to undefined]
**subject** | **string** | The subject or title of the email | [default to undefined]
**body** | **string** | The main email contents. | [default to undefined]

## Example

```typescript
import { SendMail } from '@interserver/myadmin-client';

const instance: SendMail = {
    to,
    from,
    subject,
    body,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

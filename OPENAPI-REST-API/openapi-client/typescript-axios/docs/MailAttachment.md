# MailAttachment

(optional) File attachments to include in the email.  The file contents must be base64

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filename** | **string** | The filename of the attached file. | [default to undefined]
**data** | **string** | The file contents base64 encoded | [default to undefined]

## Example

```typescript
import { MailAttachment } from '@interserver/myadmin-client';

const instance: MailAttachment = {
    filename,
    data,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

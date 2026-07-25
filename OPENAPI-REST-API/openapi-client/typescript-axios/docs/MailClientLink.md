# MailClientLink

A navigation link for mail service actions in the client portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **string** | The label of the client link. | [optional] [default to undefined]
**link** | **string** | The link URL of the client link. | [optional] [default to undefined]
**icon** | **string** | The icon class of the client link. | [optional] [default to undefined]
**icon_text** | **string** | The text for the icon of the client link. | [optional] [default to undefined]
**help_text** | **string** | Help text for the client link. | [optional] [default to undefined]
**other_attr** | **string** | Additional attributes for the client link. | [optional] [default to undefined]

## Example

```typescript
import { MailClientLink } from '@interserver/myadmin-client';

const instance: MailClientLink = {
    label,
    link,
    icon,
    icon_text,
    help_text,
    other_attr,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# MailDelistResponse

Blocklist status information for a mail service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** | Mail service ID. | [optional] [default to undefined]
**local** | **Array&lt;object&gt;** | Local blocklist entries. | [optional] [default to undefined]
**mbtrap** | **Array&lt;object&gt;** | MailBaby trap block entries. | [optional] [default to undefined]
**subject** | **Array&lt;object&gt;** | Subject-based block entries. | [optional] [default to undefined]
**manual** | **Array&lt;object&gt;** | Manually blocked entries. | [optional] [default to undefined]

## Example

```typescript
import { MailDelistResponse } from '@interserver/myadmin-client';

const instance: MailDelistResponse = {
    id,
    local,
    mbtrap,
    subject,
    manual,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

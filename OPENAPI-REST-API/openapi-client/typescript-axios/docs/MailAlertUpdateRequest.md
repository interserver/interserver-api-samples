# MailAlertUpdateRequest

Payload for updating an existing mail alert.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alert_id** | **number** | Alert ID to update. | [optional] [default to undefined]
**type** | **string** | Alert type identifier. | [optional] [default to undefined]
**value** | **string** | Alert value or threshold. | [optional] [default to undefined]
**to** | **string** | Email address to notify. | [optional] [default to undefined]
**enabled** | **string** | Whether the alert is enabled. | [optional] [default to undefined]

## Example

```typescript
import { MailAlertUpdateRequest } from '@interserver/myadmin-client';

const instance: MailAlertUpdateRequest = {
    alert_id,
    type,
    value,
    to,
    enabled,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

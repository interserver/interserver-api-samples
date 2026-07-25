# MailDeliverabilityResponse

Deliverability statistics for a mail service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stat** | **object** | Delivered and bounced counts. | [optional] [default to undefined]
**percent** | **number** | Bounce percentage. | [optional] [default to undefined]
**table_data** | **Array&lt;Array&lt;string&gt;&gt;** | Detailed deliverability breakdown by sender or domain. | [optional] [default to undefined]

## Example

```typescript
import { MailDeliverabilityResponse } from '@interserver/myadmin-client';

const instance: MailDeliverabilityResponse = {
    stat,
    percent,
    table_data,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

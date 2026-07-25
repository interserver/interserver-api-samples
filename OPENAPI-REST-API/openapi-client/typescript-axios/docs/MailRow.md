# MailRow

A result row from the `Mail` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mail_id** | **string** | The id of the mail. | [optional] [default to undefined]
**repeat_invoices_cost** | **string** | The repeat invoices cost of the mail. | [optional] [default to undefined]
**mail_username** | **string** | The username of the mail. | [optional] [default to undefined]
**mail_status** | **string** | The status of the mail. | [optional] [default to undefined]
**services_name** | **string** | The services name of the mail. | [optional] [default to undefined]

## Example

```typescript
import { MailRow } from '@interserver/myadmin-client';

const instance: MailRow = {
    mail_id,
    repeat_invoices_cost,
    mail_username,
    mail_status,
    services_name,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

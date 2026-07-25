# AccountInfoPost

Request to update account information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Your name. | [default to undefined]
**address** | **string** | Your address. | [default to undefined]
**city** | **string** | Your city. | [default to undefined]
**state** | **string** | Your state. | [default to undefined]
**zip** | **string** | Your ZIP code. | [default to undefined]
**country** | **string** | Your country. | [default to undefined]
**phone** | **string** | Your phone number. | [default to undefined]
**company** | **string** | Your company name. | [optional] [default to undefined]
**address2** | **string** | Additional address information. | [optional] [default to undefined]
**locale** | **string** | Your preferred locale. | [optional] [default to undefined]
**email_invoices** | **string** | Your email for invoice notifications. | [optional] [default to undefined]
**email_abuse** | **string** | Your email for abuse notifications. | [optional] [default to undefined]
**disable_reset** | **boolean** | Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. | [optional] [default to undefined]
**disable_reinstall** | **boolean** | Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. | [optional] [default to undefined]
**disable_server_notifications** | **boolean** | Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. | [optional] [default to undefined]
**disable_email_notifications** | **boolean** | Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. | [optional] [default to undefined]
**gstin** | **string** | Your GST identification number (if applicable). | [optional] [default to undefined]

## Example

```typescript
import { AccountInfoPost } from '@interserver/myadmin-client';

const instance: AccountInfoPost = {
    name,
    address,
    city,
    state,
    zip,
    country,
    phone,
    company,
    address2,
    locale,
    email_invoices,
    email_abuse,
    disable_reset,
    disable_reinstall,
    disable_server_notifications,
    disable_email_notifications,
    gstin,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

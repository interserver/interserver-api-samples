# WebsiteRow

A result row from the `Webhosting` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**website_id** | **string** | The id of the website. | [default to undefined]
**website_hostname** | **string** | The hostname of the website. | [default to undefined]
**repeat_invoices_cost** | **string** | The repeat invoices cost of the website. | [default to undefined]
**website_status** | **string** | The status of the website. | [default to undefined]
**services_name** | **string** | The services name of the website. | [default to undefined]
**website_comment** | **string** | The comment of the website. | [default to undefined]

## Example

```typescript
import { WebsiteRow } from '@interserver/myadmin-client';

const instance: WebsiteRow = {
    website_id,
    website_hostname,
    repeat_invoices_cost,
    website_status,
    services_name,
    website_comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

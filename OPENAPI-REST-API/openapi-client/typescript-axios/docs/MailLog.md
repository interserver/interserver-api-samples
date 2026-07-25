# MailLog

Paginated mail log response.  Contains the full matched count (`total`) plus a page of `MailLogEntry` records.  The `total` reflects the grouping mode: with `groupby=recipient` it counts delivery attempts, with `groupby=message` it counts unique messages.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **number** | Total number of log entries that match the supplied filters, regardless of &#x60;skip&#x60; and &#x60;limit&#x60;.  Reflects the &#x60;groupby&#x60; mode. | [default to undefined]
**skip** | **number** | The &#x60;skip&#x60; value used for this page (echoed from the request). | [default to undefined]
**limit** | **number** | The &#x60;limit&#x60; value used for this page (echoed from the request). | [default to undefined]
**emails** | [**Array&lt;MailLogEntry&gt;**](MailLogEntry.md) |  | [default to undefined]

## Example

```typescript
import { MailLog } from '@interserver/myadmin-client';

const instance: MailLog = {
    total,
    skip,
    limit,
    emails,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

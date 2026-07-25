# MailLogEntry

A single email record in the mail log.  Combines data from the message store (envelope metadata), the queue release table (delivery status and response), and the sender delivery table (MX routing details).  When `groupby=recipient` each row represents one delivery attempt; when `groupby=message` delivery fields reflect one arbitrary recipient.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **number** | Internal auto-increment database row ID. | [default to undefined]
**id** | **string** | The relay-assigned mail ID (18-19 hex characters).  Matches the &#x60;mailid&#x60; filter parameter and the &#x60;text&#x60; value returned by send endpoints. | [default to undefined]
**from** | **string** | SMTP envelope &#x60;MAIL FROM&#x60; address. | [default to undefined]
**to** | **string** | SMTP envelope &#x60;RCPT TO&#x60; address. | [default to undefined]
**created** | **string** | Human-readable creation timestamp in &#x60;YYYY-MM-DD HH:MM:SS&#x60; format. | [default to undefined]
**time** | **number** | Unix timestamp of message acceptance.  Corresponds to the &#x60;startDate&#x60; and &#x60;endDate&#x60; filter parameters. | [default to undefined]
**user** | **string** | The SMTP AUTH username used to submit the message (e.g. &#x60;mb5658&#x60;). | [default to undefined]
**transtype** | **string** | SMTP transaction type negotiated with the relay. | [default to undefined]
**origin** | **string** | IP address of the client that submitted the message to the relay. | [default to undefined]
**_interface** | **string** | Relay interface name that accepted the message. | [default to undefined]
**subject** | **string** | The &#x60;Subject&#x60; header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. | [optional] [default to undefined]
**messageId** | **string** | The &#x60;Message-ID&#x60; header value.  Can be used with the &#x60;messageId&#x60; filter for subsequent lookups. | [optional] [default to undefined]
**sendingZone** | **string** | The sending zone assigned by the relay for outbound delivery. | [optional] [default to undefined]
**bodySize** | **number** | Size of the message body in bytes. | [optional] [default to undefined]
**seq** | **number** | Sequence index of this recipient in a multi-recipient message. Starts at 1. | [optional] [default to undefined]
**delivered** | **number** | Delivery status flag.  &#x60;1&#x60; &#x3D; successfully delivered to destination MX. &#x60;0&#x60; &#x3D; queued, deferred, or failed.  &#x60;null&#x60; &#x3D; delivery not yet attempted. | [optional] [default to undefined]
**code** | **number** | The SMTP response code from the destination MX server (e.g. &#x60;250&#x60;). | [optional] [default to undefined]
**recipient** | **string** | The specific recipient address this delivery record is for. | [optional] [default to undefined]
**response** | **string** | The full SMTP response string received from the destination MX server. | [optional] [default to undefined]
**domain** | **string** | The destination domain for this delivery attempt. | [optional] [default to undefined]
**locked** | **number** | Whether the queue entry is currently locked for delivery processing. | [optional] [default to undefined]
**lockTime** | **string** | Millisecond-precision timestamp of the last queue lock acquisition. | [optional] [default to undefined]
**assigned** | **string** | The relay server node assigned to deliver this message. | [optional] [default to undefined]
**queued** | **string** | ISO 8601 timestamp when the message was placed into the delivery queue. | [optional] [default to undefined]
**mxHostname** | **string** | The MX hostname the relay connected to for delivery.  Corresponds to the &#x60;mx&#x60; filter parameter. | [optional] [default to undefined]

## Example

```typescript
import { MailLogEntry } from '@interserver/myadmin-client';

const instance: MailLogEntry = {
    _id,
    id,
    from,
    to,
    created,
    time,
    user,
    transtype,
    origin,
    _interface,
    subject,
    messageId,
    sendingZone,
    bodySize,
    seq,
    delivered,
    code,
    recipient,
    response,
    domain,
    locked,
    lockTime,
    assigned,
    queued,
    mxHostname,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

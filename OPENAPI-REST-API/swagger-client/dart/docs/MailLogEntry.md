# swagger.model.MailLogEntry

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Internal auto-increment database row ID. | [default to null]
**id** | **String** | The relay-assigned mail ID (18-19 hex characters).  Matches the &#x60;mailid&#x60; filter parameter and the &#x60;text&#x60; value returned by send endpoints. | [default to null]
**from** | **String** | SMTP envelope &#x60;MAIL FROM&#x60; address. | [default to null]
**to** | **String** | SMTP envelope &#x60;RCPT TO&#x60; address. | [default to null]
**subject** | **String** | The &#x60;Subject&#x60; header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. | [optional] [default to null]
**messageId** | **String** | The &#x60;Message-ID&#x60; header value.  Can be used with the &#x60;messageId&#x60; filter for subsequent lookups. | [optional] [default to null]
**created** | **String** | Human-readable creation timestamp in &#x60;YYYY-MM-DD HH:MM:SS&#x60; format. | [default to null]
**time** | **int** | Unix timestamp of message acceptance.  Corresponds to the &#x60;startDate&#x60; and &#x60;endDate&#x60; filter parameters. | [default to null]
**user** | **String** | The SMTP AUTH username used to submit the message (e.g. &#x60;mb5658&#x60;). | [default to null]
**transtype** | **String** | SMTP transaction type negotiated with the relay. | [default to null]
**origin** | **String** | IP address of the client that submitted the message to the relay. | [default to null]
**interface** | **String** | Relay interface name that accepted the message. | [default to null]
**sendingZone** | **String** | The sending zone assigned by the relay for outbound delivery. | [optional] [default to null]
**bodySize** | **int** | Size of the message body in bytes. | [optional] [default to null]
**seq** | **int** | Sequence index of this recipient in a multi-recipient message. Starts at 1. | [optional] [default to null]
**delivered** | **int** | Delivery status flag.  &#x60;1&#x60; &#x3D; successfully delivered to destination MX. &#x60;0&#x60; &#x3D; queued, deferred, or failed.  &#x60;null&#x60; &#x3D; delivery not yet attempted. | [optional] [default to null]
**code** | **int** | The SMTP response code from the destination MX server (e.g. &#x60;250&#x60;). | [optional] [default to null]
**recipient** | **String** | The specific recipient address this delivery record is for. | [optional] [default to null]
**response** | **String** | The full SMTP response string received from the destination MX server. | [optional] [default to null]
**domain** | **String** | The destination domain for this delivery attempt. | [optional] [default to null]
**locked** | **int** | Whether the queue entry is currently locked for delivery processing. | [optional] [default to null]
**lockTime** | **String** | Millisecond-precision timestamp of the last queue lock acquisition. | [optional] [default to null]
**assigned** | **String** | The relay server node assigned to deliver this message. | [optional] [default to null]
**queued** | **String** | ISO 8601 timestamp when the message was placed into the delivery queue. | [optional] [default to null]
**mxHostname** | **String** | The MX hostname the relay connected to for delivery.  Corresponds to the &#x60;mx&#x60; filter parameter. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# interserver_api.model.MailLogEntry

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Internal auto-increment database row ID. | 
**id** | **String** | The relay-assigned mail ID (18-19 hex characters).  Matches the `mailid` filter parameter and the `text` value returned by send endpoints. | 
**from** | **String** | SMTP envelope `MAIL FROM` address. | 
**to** | **String** | SMTP envelope `RCPT TO` address. | 
**created** | **String** | Human-readable creation timestamp in `YYYY-MM-DD HH:MM:SS` format. | 
**time** | **int** | Unix timestamp of message acceptance.  Corresponds to the `startDate` and `endDate` filter parameters. | 
**user** | **String** | The SMTP AUTH username used to submit the message (e.g. `mb5658`). | 
**transtype** | **String** | SMTP transaction type negotiated with the relay. | 
**origin** | **String** | IP address of the client that submitted the message to the relay. | 
**interface_** | **String** | Relay interface name that accepted the message. | 
**subject** | **Optional&lt;String?&gt;** | The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. | [optional] 
**messageId** | **Optional&lt;String?&gt;** | The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups. | [optional] 
**sendingZone** | **Optional&lt;String?&gt;** | The sending zone assigned by the relay for outbound delivery. | [optional] 
**bodySize** | **Optional&lt;int?&gt;** | Size of the message body in bytes. | [optional] 
**seq** | **Optional&lt;int?&gt;** | Sequence index of this recipient in a multi-recipient message. Starts at 1. | [optional] 
**delivered** | **Optional&lt;int?&gt;** | Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted. | [optional] 
**code** | **Optional&lt;int?&gt;** | The SMTP response code from the destination MX server (e.g. `250`). | [optional] 
**recipient** | **Optional&lt;String?&gt;** | The specific recipient address this delivery record is for. | [optional] 
**response** | **Optional&lt;String?&gt;** | The full SMTP response string received from the destination MX server. | [optional] 
**domain** | **Optional&lt;String?&gt;** | The destination domain for this delivery attempt. | [optional] 
**locked** | **Optional&lt;int?&gt;** | Whether the queue entry is currently locked for delivery processing. | [optional] 
**lockTime** | **Optional&lt;String?&gt;** | Millisecond-precision timestamp of the last queue lock acquisition. | [optional] 
**assigned** | **Optional&lt;String?&gt;** | The relay server node assigned to deliver this message. | [optional] 
**queued** | **Optional&lt;String?&gt;** | ISO 8601 timestamp when the message was placed into the delivery queue. | [optional] 
**mxHostname** | **Optional&lt;String?&gt;** | The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



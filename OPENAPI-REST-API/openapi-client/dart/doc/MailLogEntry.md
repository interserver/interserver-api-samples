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
**subject** | **String** | The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. | [optional] 
**messageId** | **String** | The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups. | [optional] 
**sendingZone** | **String** | The sending zone assigned by the relay for outbound delivery. | [optional] 
**bodySize** | **int** | Size of the message body in bytes. | [optional] 
**seq** | **int** | Sequence index of this recipient in a multi-recipient message. Starts at 1. | [optional] 
**delivered** | **int** | Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted. | [optional] 
**code** | **int** | The SMTP response code from the destination MX server (e.g. `250`). | [optional] 
**recipient** | **String** | The specific recipient address this delivery record is for. | [optional] 
**response** | **String** | The full SMTP response string received from the destination MX server. | [optional] 
**domain** | **String** | The destination domain for this delivery attempt. | [optional] 
**locked** | **int** | Whether the queue entry is currently locked for delivery processing. | [optional] 
**lockTime** | **String** | Millisecond-precision timestamp of the last queue lock acquisition. | [optional] 
**assigned** | **String** | The relay server node assigned to deliver this message. | [optional] 
**queued** | **String** | ISO 8601 timestamp when the message was placed into the delivery queue. | [optional] 
**mxHostname** | **String** | The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



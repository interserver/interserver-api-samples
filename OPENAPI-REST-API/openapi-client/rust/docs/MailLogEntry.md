# MailLogEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **i32** | Internal auto-increment database row ID. | 
**id** | **String** | The relay-assigned mail ID (18-19 hex characters).  Matches the `mailid` filter parameter and the `text` value returned by send endpoints. | 
**from** | **String** | SMTP envelope `MAIL FROM` address. | 
**to** | **String** | SMTP envelope `RCPT TO` address. | 
**created** | **String** | Human-readable creation timestamp in `YYYY-MM-DD HH:MM:SS` format. | 
**time** | **i32** | Unix timestamp of message acceptance.  Corresponds to the `startDate` and `endDate` filter parameters. | 
**user** | **String** | The SMTP AUTH username used to submit the message (e.g. `mb5658`). | 
**transtype** | **String** | SMTP transaction type negotiated with the relay. | 
**origin** | **String** | IP address of the client that submitted the message to the relay. | 
**interface** | **String** | Relay interface name that accepted the message. | 
**subject** | Option<**String**> | The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. | [optional]
**message_id** | Option<**String**> | The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups. | [optional]
**sending_zone** | Option<**String**> | The sending zone assigned by the relay for outbound delivery. | [optional]
**body_size** | Option<**i32**> | Size of the message body in bytes. | [optional]
**seq** | Option<**i32**> | Sequence index of this recipient in a multi-recipient message. Starts at 1. | [optional]
**delivered** | Option<**i32**> | Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted. | [optional]
**code** | Option<**i32**> | The SMTP response code from the destination MX server (e.g. `250`). | [optional]
**recipient** | Option<**String**> | The specific recipient address this delivery record is for. | [optional]
**response** | Option<**String**> | The full SMTP response string received from the destination MX server. | [optional]
**domain** | Option<**String**> | The destination domain for this delivery attempt. | [optional]
**locked** | Option<**i32**> | Whether the queue entry is currently locked for delivery processing. | [optional]
**lock_time** | Option<**String**> | Millisecond-precision timestamp of the last queue lock acquisition. | [optional]
**assigned** | Option<**String**> | The relay server node assigned to deliver this message. | [optional]
**queued** | Option<**String**> | ISO 8601 timestamp when the message was placed into the delivery queue. | [optional]
**mx_hostname** | Option<**String**> | The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



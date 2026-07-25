# interserverapi::MailLogEntry

A single email record in the mail log.  Combines data from the message store (envelope metadata), the queue release table (delivery status and response), and the sender delivery table (MX routing details).  When `groupby=recipient` each row represents one delivery attempt; when `groupby=message` delivery fields reflect one arbitrary recipient.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **integer** | Internal auto-increment database row ID. | 
**id** | **character** | The relay-assigned mail ID (18-19 hex characters).  Matches the &#x60;mailid&#x60; filter parameter and the &#x60;text&#x60; value returned by send endpoints. | 
**from** | **character** | SMTP envelope &#x60;MAIL FROM&#x60; address. | 
**to** | **character** | SMTP envelope &#x60;RCPT TO&#x60; address. | 
**subject** | **character** | The &#x60;Subject&#x60; header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. | [optional] 
**messageId** | **character** | The &#x60;Message-ID&#x60; header value.  Can be used with the &#x60;messageId&#x60; filter for subsequent lookups. | [optional] 
**created** | **character** | Human-readable creation timestamp in &#x60;YYYY-MM-DD HH:MM:SS&#x60; format. | 
**time** | **integer** | Unix timestamp of message acceptance.  Corresponds to the &#x60;startDate&#x60; and &#x60;endDate&#x60; filter parameters. | 
**user** | **character** | The SMTP AUTH username used to submit the message (e.g. &#x60;mb5658&#x60;). | 
**transtype** | **character** | SMTP transaction type negotiated with the relay. | 
**origin** | **character** | IP address of the client that submitted the message to the relay. | 
**interface** | **character** | Relay interface name that accepted the message. | 
**sendingZone** | **character** | The sending zone assigned by the relay for outbound delivery. | [optional] 
**bodySize** | **integer** | Size of the message body in bytes. | [optional] 
**seq** | **integer** | Sequence index of this recipient in a multi-recipient message. Starts at 1. | [optional] 
**delivered** | **integer** | Delivery status flag.  &#x60;1&#x60; &#x3D; successfully delivered to destination MX. &#x60;0&#x60; &#x3D; queued, deferred, or failed.  &#x60;null&#x60; &#x3D; delivery not yet attempted. | [optional] 
**code** | **integer** | The SMTP response code from the destination MX server (e.g. &#x60;250&#x60;). | [optional] 
**recipient** | **character** | The specific recipient address this delivery record is for. | [optional] 
**response** | **character** | The full SMTP response string received from the destination MX server. | [optional] 
**domain** | **character** | The destination domain for this delivery attempt. | [optional] 
**locked** | **integer** | Whether the queue entry is currently locked for delivery processing. | [optional] 
**lockTime** | **character** | Millisecond-precision timestamp of the last queue lock acquisition. | [optional] 
**assigned** | **character** | The relay server node assigned to deliver this message. | [optional] 
**queued** | **character** | ISO 8601 timestamp when the message was placed into the delivery queue. | [optional] 
**mxHostname** | **character** | The MX hostname the relay connected to for delivery.  Corresponds to the &#x60;mx&#x60; filter parameter. | [optional] 



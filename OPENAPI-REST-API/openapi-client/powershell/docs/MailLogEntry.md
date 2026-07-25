# MailLogEntry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Internal auto-increment database row ID. | 
**Id** | **String** | The relay-assigned mail ID (18-19 hex characters).  Matches the &#x60;mailid&#x60; filter parameter and the &#x60;text&#x60; value returned by send endpoints. | 
**VarFrom** | **String** | SMTP envelope &#x60;MAIL FROM&#x60; address. | 
**To** | **String** | SMTP envelope &#x60;RCPT TO&#x60; address. | 
**Subject** | **String** | The &#x60;Subject&#x60; header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. | [optional] 
**MessageId** | **String** | The &#x60;Message-ID&#x60; header value.  Can be used with the &#x60;messageId&#x60; filter for subsequent lookups. | [optional] 
**Created** | **String** | Human-readable creation timestamp in &#x60;YYYY-MM-DD HH:MM:SS&#x60; format. | 
**Time** | **Int32** | Unix timestamp of message acceptance.  Corresponds to the &#x60;startDate&#x60; and &#x60;endDate&#x60; filter parameters. | 
**User** | **String** | The SMTP AUTH username used to submit the message (e.g. &#x60;mb5658&#x60;). | 
**Transtype** | **String** | SMTP transaction type negotiated with the relay. | 
**Origin** | **String** | IP address of the client that submitted the message to the relay. | 
**Interface** | **String** | Relay interface name that accepted the message. | 
**SendingZone** | **String** | The sending zone assigned by the relay for outbound delivery. | [optional] 
**BodySize** | **Int32** | Size of the message body in bytes. | [optional] 
**Seq** | **Int32** | Sequence index of this recipient in a multi-recipient message. Starts at 1. | [optional] 
**Delivered** | **Int32** | Delivery status flag.  &#x60;1&#x60; &#x3D; successfully delivered to destination MX. &#x60;0&#x60; &#x3D; queued, deferred, or failed.  &#x60;null&#x60; &#x3D; delivery not yet attempted. | [optional] 
**Code** | **Int32** | The SMTP response code from the destination MX server (e.g. &#x60;250&#x60;). | [optional] 
**Recipient** | **String** | The specific recipient address this delivery record is for. | [optional] 
**Response** | **String** | The full SMTP response string received from the destination MX server. | [optional] 
**Domain** | **String** | The destination domain for this delivery attempt. | [optional] 
**Locked** | **Int32** | Whether the queue entry is currently locked for delivery processing. | [optional] 
**LockTime** | **String** | Millisecond-precision timestamp of the last queue lock acquisition. | [optional] 
**Assigned** | **String** | The relay server node assigned to deliver this message. | [optional] 
**Queued** | **String** | ISO 8601 timestamp when the message was placed into the delivery queue. | [optional] 
**MxHostname** | **String** | The MX hostname the relay connected to for delivery.  Corresponds to the &#x60;mx&#x60; filter parameter. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailLogEntry = Initialize-InterserverApiMailLogEntry  -Id 103172 `
 -Id 17c7eda538e0005d03 `
 -VarFrom person@mysite.com `
 -To client@isp.com `
 -Subject sell 0.005 shares `
 -MessageId &lt;vmiLEebsuCbSpUxD7oN3REpaN4VbN6BrdCAbNKIrdAo@relay0.mailbaby.net&gt; `
 -Created 2021-10-14 08:50:10 `
 -Time 1634215809 `
 -User mb5658 `
 -Transtype ESMTPSA `
 -Origin 199.231.189.154 `
 -Interface feeder `
 -SendingZone interserver `
 -BodySize 63 `
 -Seq 1 `
 -Delivered 1 `
 -Code 250 `
 -Recipient client@isp.com `
 -Response 250 2.0.0 Ok queued as C91D83E128C `
 -Domain interserver.net `
 -Locked 1 `
 -LockTime 1634215818533 `
 -Assigned relay1 `
 -Queued 2021-10-14T12:50:15.487Z `
 -MxHostname mx.j.is.cc
```

- Convert the resource to JSON
```powershell
$MailLogEntry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


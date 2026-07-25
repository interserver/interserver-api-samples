# MailLogEntry

A single email record in the mail log.  Combines data from the message store (envelope metadata), the queue release table (delivery status and response), and the sender delivery table (MX routing details).  When `groupby=recipient` each row represents one delivery attempt; when `groupby=message` delivery fields reflect one arbitrary recipient.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Internal auto-increment database row ID. | 
**id** | **str** | The relay-assigned mail ID (18-19 hex characters).  Matches the &#x60;mailid&#x60; filter parameter and the &#x60;text&#x60; value returned by send endpoints. | 
**var_from** | **str** | SMTP envelope &#x60;MAIL FROM&#x60; address. | 
**to** | **str** | SMTP envelope &#x60;RCPT TO&#x60; address. | 
**subject** | **str** | The &#x60;Subject&#x60; header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. | [optional] 
**message_id** | **str** | The &#x60;Message-ID&#x60; header value.  Can be used with the &#x60;messageId&#x60; filter for subsequent lookups. | [optional] 
**created** | **str** | Human-readable creation timestamp in &#x60;YYYY-MM-DD HH:MM:SS&#x60; format. | 
**time** | **int** | Unix timestamp of message acceptance.  Corresponds to the &#x60;startDate&#x60; and &#x60;endDate&#x60; filter parameters. | 
**user** | **str** | The SMTP AUTH username used to submit the message (e.g. &#x60;mb5658&#x60;). | 
**transtype** | **str** | SMTP transaction type negotiated with the relay. | 
**origin** | **str** | IP address of the client that submitted the message to the relay. | 
**interface** | **str** | Relay interface name that accepted the message. | 
**sending_zone** | **str** | The sending zone assigned by the relay for outbound delivery. | [optional] 
**body_size** | **int** | Size of the message body in bytes. | [optional] 
**seq** | **int** | Sequence index of this recipient in a multi-recipient message. Starts at 1. | [optional] 
**delivered** | **int** | Delivery status flag.  &#x60;1&#x60; &#x3D; successfully delivered to destination MX. &#x60;0&#x60; &#x3D; queued, deferred, or failed.  &#x60;null&#x60; &#x3D; delivery not yet attempted. | [optional] 
**code** | **int** | The SMTP response code from the destination MX server (e.g. &#x60;250&#x60;). | [optional] 
**recipient** | **str** | The specific recipient address this delivery record is for. | [optional] 
**response** | **str** | The full SMTP response string received from the destination MX server. | [optional] 
**domain** | **str** | The destination domain for this delivery attempt. | [optional] 
**locked** | **int** | Whether the queue entry is currently locked for delivery processing. | [optional] 
**lock_time** | **str** | Millisecond-precision timestamp of the last queue lock acquisition. | [optional] 
**assigned** | **str** | The relay server node assigned to deliver this message. | [optional] 
**queued** | **str** | ISO 8601 timestamp when the message was placed into the delivery queue. | [optional] 
**mx_hostname** | **str** | The MX hostname the relay connected to for delivery.  Corresponds to the &#x60;mx&#x60; filter parameter. | [optional] 

## Example

```python
from interserver_api_client.models.mail_log_entry import MailLogEntry

# TODO update the JSON string below
json = "{}"
# create an instance of MailLogEntry from a JSON string
mail_log_entry_instance = MailLogEntry.from_json(json)
# print the JSON string representation of the object
print(MailLogEntry.to_json())

# convert the object into a dict
mail_log_entry_dict = mail_log_entry_instance.to_dict()
# create an instance of MailLogEntry from a dict
mail_log_entry_from_dict = MailLogEntry.from_dict(mail_log_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# MailLog

Paginated mail log response.  Contains the full matched count (`total`) plus a page of `MailLogEntry` records.  The `total` reflects the grouping mode: with `groupby=recipient` it counts delivery attempts, with `groupby=message` it counts unique messages.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** | Total number of log entries that match the supplied filters, regardless of &#x60;skip&#x60; and &#x60;limit&#x60;.  Reflects the &#x60;groupby&#x60; mode. | 
**skip** | **int** | The &#x60;skip&#x60; value used for this page (echoed from the request). | 
**limit** | **int** | The &#x60;limit&#x60; value used for this page (echoed from the request). | 
**emails** | [**List[MailLogEntry]**](MailLogEntry.md) |  | 

## Example

```python
from interserver_api_client.models.mail_log import MailLog

# TODO update the JSON string below
json = "{}"
# create an instance of MailLog from a JSON string
mail_log_instance = MailLog.from_json(json)
# print the JSON string representation of the object
print(MailLog.to_json())

# convert the object into a dict
mail_log_dict = mail_log_instance.to_dict()
# create an instance of MailLog from a dict
mail_log_from_dict = MailLog.from_dict(mail_log_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



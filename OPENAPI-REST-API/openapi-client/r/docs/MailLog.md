# interserverapi::MailLog

Paginated mail log response.  Contains the full matched count (`total`) plus a page of `MailLogEntry` records.  The `total` reflects the grouping mode: with `groupby=recipient` it counts delivery attempts, with `groupby=message` it counts unique messages.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **integer** | Total number of log entries that match the supplied filters, regardless of &#x60;skip&#x60; and &#x60;limit&#x60;.  Reflects the &#x60;groupby&#x60; mode. | 
**skip** | **integer** | The &#x60;skip&#x60; value used for this page (echoed from the request). | 
**limit** | **integer** | The &#x60;limit&#x60; value used for this page (echoed from the request). | 
**emails** | [**array[MailLogEntry]**](MailLogEntry.md) |  | 



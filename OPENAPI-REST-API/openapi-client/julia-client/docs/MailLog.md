# MailLog


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`total`** | **`Int64`** | Total number of log entries that match the supplied filters, regardless of &#x60;skip&#x60; and &#x60;limit&#x60;.  Reflects the &#x60;groupby&#x60; mode. | [default to nothing]
**`skip`** | **`Int64`** | The &#x60;skip&#x60; value used for this page (echoed from the request). | [default to nothing]
**`limit`** | **`Int64`** | The &#x60;limit&#x60; value used for this page (echoed from the request). | [default to nothing]
**`emails`** | [**`Vector{MailLogEntry}`**](MailLogEntry.md) |  | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)



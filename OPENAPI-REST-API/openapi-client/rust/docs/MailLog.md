# MailLog

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **i32** | Total number of log entries that match the supplied filters, regardless of `skip` and `limit`.  Reflects the `groupby` mode. | 
**skip** | **i32** | The `skip` value used for this page (echoed from the request). | 
**limit** | **i32** | The `limit` value used for this page (echoed from the request). | 
**emails** | [**Vec<models::MailLogEntry>**](MailLogEntry.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ServerBulkIpmiPowerResponseResultsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**i32**> | Server ID this result corresponds to. | [optional]
**asset** | Option<**i32**> | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional]
**text** | Option<**String**> | IPMI power-status output for this server. | [optional]
**error** | Option<**String**> | Error message for this server, if processing failed (mutually exclusive with `text`). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



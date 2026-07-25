# ServerBulkIpmiPowerResponseResultsInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`id`** | **`Int64`** | Server ID this result corresponds to. | [optional] [default to nothing]
**`asset`** | **`Int64`** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] [default to nothing]
**`text`** | **`String`** | IPMI power-status output for this server. | [optional] [default to nothing]
**`error`** | **`String`** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)



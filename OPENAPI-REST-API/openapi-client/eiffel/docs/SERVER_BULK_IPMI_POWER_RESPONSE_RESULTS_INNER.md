# SERVER_BULK_IPMI_POWER_RESPONSE_RESULTS_INNER

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **INTEGER_32** | Server ID this result corresponds to. | [optional] [default to null]
**asset** | **INTEGER_32** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] [default to null]
**text** | [**STRING_32**](STRING_32.md) | IPMI power-status output for this server. | [optional] [default to null]
**error** | [**STRING_32**](STRING_32.md) | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



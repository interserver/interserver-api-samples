# ServerBulkIpmiPowerResponseResults

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | Server ID this result corresponds to. | [optional] [default to null]
**Asset** | **int32** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] [default to null]
**Text** | **string** | IPMI power-status output for this server. | [optional] [default to null]
**Error_** | **string** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


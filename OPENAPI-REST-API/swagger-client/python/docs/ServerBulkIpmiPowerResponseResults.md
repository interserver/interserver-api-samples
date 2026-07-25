# ServerBulkIpmiPowerResponseResults

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Server ID this result corresponds to. | [optional] 
**asset** | **int** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] 
**text** | **str** | IPMI power-status output for this server. | [optional] 
**error** | **str** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


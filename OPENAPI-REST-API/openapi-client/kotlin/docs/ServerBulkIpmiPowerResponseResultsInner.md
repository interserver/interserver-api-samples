
# ServerBulkIpmiPowerResponseResultsInner

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.Int** | Server ID this result corresponds to. |  [optional] |
| **asset** | **kotlin.Int** | Asset ID that was queried for the server (omitted on errors before asset selection). |  [optional] |
| **text** | **kotlin.String** | IPMI power-status output for this server. |  [optional] |
| **error** | **kotlin.String** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). |  [optional] |




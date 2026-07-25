

# ServerBulkIpmiPowerResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | Server ID this result corresponds to. |  [optional]
**asset** | **Int** | Asset ID that was queried for the server (omitted on errors before asset selection). |  [optional]
**text** | **String** | IPMI power-status output for this server. |  [optional]
**error** | **String** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). |  [optional]




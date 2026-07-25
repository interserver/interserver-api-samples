# interserverapi::ServerBulkIpmiPowerResponseResultsInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** | Server ID this result corresponds to. | [optional] 
**asset** | **integer** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] 
**text** | **character** | IPMI power-status output for this server. | [optional] 
**error** | **character** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] 



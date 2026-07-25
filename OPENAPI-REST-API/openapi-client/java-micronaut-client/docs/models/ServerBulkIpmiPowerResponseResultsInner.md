

# ServerBulkIpmiPowerResponseResultsInner

The class is defined in **[ServerBulkIpmiPowerResponseResultsInner.java](../../src/main/java/org/openapitools/model/ServerBulkIpmiPowerResponseResultsInner.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | `Integer` | Server ID this result corresponds to. |  [optional property]
**asset** | `Integer` | Asset ID that was queried for the server (omitted on errors before asset selection). |  [optional property]
**text** | `String` | IPMI power-status output for this server. |  [optional property]
**error** | `String` | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). |  [optional property]







# interserver_api.model.ServerBulkIpmiPowerResponseResultsInner

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Optional&lt;int?&gt;** | Server ID this result corresponds to. | [optional] 
**asset** | **Optional&lt;int?&gt;** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] 
**text** | **Optional&lt;String?&gt;** | IPMI power-status output for this server. | [optional] 
**error** | **Optional&lt;String?&gt;** | Error message for this server, if processing failed (mutually exclusive with `text`). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



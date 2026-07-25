# interserver_api.model.ServerBulkIpmiPowerResponseResultsInner

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Server ID this result corresponds to. | [optional] 
**asset** | **int** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] 
**text** | **String** | IPMI power-status output for this server. | [optional] 
**error** | **String** | Error message for this server, if processing failed (mutually exclusive with `text`). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



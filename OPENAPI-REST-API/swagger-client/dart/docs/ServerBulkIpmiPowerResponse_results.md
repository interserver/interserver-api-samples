# swagger.model.ServerBulkIpmiPowerResponseResults

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Server ID this result corresponds to. | [optional] [default to null]
**asset** | **int** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] [default to null]
**text** | **String** | IPMI power-status output for this server. | [optional] [default to null]
**error** | **String** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


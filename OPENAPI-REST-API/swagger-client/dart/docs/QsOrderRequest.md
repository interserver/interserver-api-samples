# swagger.model.QsOrderRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **int** | QuickServer plan/server id from getNewQs. | [default to null]
**password** | **String** | Root password for the QuickServer. | [default to null]
**os** | **String** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to &quot;&quot;]
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | [default to null]
**comment** | **String** | Free-form note saved on the service row. | [optional] [default to &quot;&quot;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


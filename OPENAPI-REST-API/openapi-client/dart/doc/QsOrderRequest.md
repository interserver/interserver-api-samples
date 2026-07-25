# openapi.model.QsOrderRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **int** | QuickServer plan/server id from getNewQs. | 
**password** | **String** | Root password for the QuickServer. | 
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**os** | **String** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to '']
**comment** | **String** | Free-form note saved on the service row. | [optional] [default to '']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



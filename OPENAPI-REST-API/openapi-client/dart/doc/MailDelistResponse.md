# interserver_api.model.MailDelistResponse

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Mail service ID. | [optional] 
**local** | **List<Object>** | Local blocklist entries. | [optional] [default to const []]
**mbtrap** | **List<Object>** | MailBaby trap block entries. | [optional] [default to const []]
**subject** | **List<Object>** | Subject-based block entries. | [optional] [default to const []]
**manual** | **List<Object>** | Manually blocked entries. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



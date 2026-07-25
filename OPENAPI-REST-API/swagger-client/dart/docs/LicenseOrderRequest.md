# swagger.model.LicenseOrderRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **int** | License service type id from getNewLicense.serviceTypes (must be buyable). | [default to null]
**ip** | **String** | IP address the license is bound to. | [default to null]
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | [default to null]
**frequency** | **int** | Billing frequency in months. | [optional] [default to 1]
**coupon** | **String** | Coupon code. | [optional] [default to &quot;&quot;]
**comment** | **String** | Free-form note saved on the service row. | [optional] [default to &quot;&quot;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


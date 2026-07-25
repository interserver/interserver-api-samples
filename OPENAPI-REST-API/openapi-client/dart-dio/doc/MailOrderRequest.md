# interserver_api.model.MailOrderRequest

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceType** | **int** | Mail plan service type id from getNewMail.serviceTypes (must be buyable). | 
**coupon** | **Optional&lt;String?&gt;** | Coupon code. | [optional] [default to '']
**comment** | **Optional&lt;String?&gt;** | Free-form note saved on the service row (used on addMail). | [optional] [default to '']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



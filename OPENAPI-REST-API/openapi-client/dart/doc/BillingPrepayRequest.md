# interserver_api.model.BillingPrepayRequest

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**module** | **String** | Module the prepay should be applied to (for example `default`). | [optional] 
**amount** | **num** | Amount to add to prepay balance. Minimum is $10. | [optional] 
**automaticUse** | **String** | Whether the prepay balance should be used automatically. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# interserver_api.model.DomainOrderRequest

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**type** | **Optional&lt;String?&gt;** | Order type. | [optional] [default to 'register']
**coupon** | **Optional&lt;String?&gt;** | Coupon code (addDomain only). | [optional] [default to '']
**whoisPrivacy** | **Optional&lt;String?&gt;** | Set to \"enable\" to add Whois privacy (addDomain only). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



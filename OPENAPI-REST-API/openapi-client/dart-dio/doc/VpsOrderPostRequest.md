# interserver_api.model.VpsOrderPostRequest

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**osDistro** | **String** | OS Distribution | 
**slices** | **int** | Number of slices | [default to 1]
**vpsPlatform** | **String** | VPS Platform | 
**period** | **int** | Billing Period or Frequency | [default to 1]
**location** | **int** | Location | [default to 1]
**osVersion** | **String** | OS Version | 
**hostname** | **String** | The hostname to assign to the VPS | [default to '']
**rootpass** | **String** | Root password to assign to the VVPS | 
**controlpanel** | **Optional&lt;String?&gt;** | Control Panel | [optional] 
**coupon** | **Optional&lt;String?&gt;** | Coupon | [optional] [default to '']
**comment** | **Optional&lt;String?&gt;** | Order comments or notes | [optional] [default to '']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



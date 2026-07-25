# interserver_api.model.PlaceBuyNowServerRequest

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serverId** | **num** | The ID of the buy-it-now server configuration to order. Use the server listing from `GET /servers/order/buy_now_server` to find valid IDs. | [optional] 
**serverHostname** | **String** | The fully-qualified hostname to assign to the server. | [optional] 
**serverRootPassword** | **String** | The root or administrator password to set on the server. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



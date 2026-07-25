# swagger.model.BuyItNowRow

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serverId** | **String** | Unique server ID. Use this as &#x60;server_id&#x60; in &#x60;POST /servers/order/buy_now_server&#x60;. | [optional] [default to null]
**cpu** | [**List&lt;OneOfBuyItNowRowCpuItems&gt;**](Object.md) |  | [optional] [default to []]
**memory** | **String** |  | [optional] [default to null]
**disk** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**bandwidth** | **String** |  | [optional] [default to null]
**ips** | **String** |  | [optional] [default to null]
**location** | **String** |  | [optional] [default to null]
**price** | **int** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


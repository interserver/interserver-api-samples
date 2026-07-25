# interserver_api.model.BuyItNowRow

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serverId** | **String** | Unique server ID. Use this as `server_id` in `POST /servers/order/buy_now_server`. | [optional] 
**cpu** | [**List<BuyItNowRowCpuInner>**](BuyItNowRowCpuInner.md) |  | [optional] [default to const []]
**memory** | **String** |  | [optional] 
**disk** | **Map<String, String>** |  | [optional] [default to const {}]
**bandwidth** | **String** |  | [optional] 
**ips** | **String** |  | [optional] 
**location** | **String** |  | [optional] 
**price** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



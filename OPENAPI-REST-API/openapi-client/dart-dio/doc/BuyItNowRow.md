# interserver_api.model.BuyItNowRow

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serverId** | **Optional&lt;String?&gt;** | Unique server ID. Use this as `server_id` in `POST /servers/order/buy_now_server`. | [optional] 
**cpu** | [**Optional&lt;List&lt;BuyItNowRowCpuInner&gt;?&gt;**](BuyItNowRowCpuInner.md) |  | [optional] 
**memory** | **Optional&lt;String?&gt;** |  | [optional] 
**disk** | **Optional&lt;Map&lt;String, String&gt;?&gt;** |  | [optional] 
**bandwidth** | **Optional&lt;String?&gt;** |  | [optional] 
**ips** | **Optional&lt;String?&gt;** |  | [optional] 
**location** | **Optional&lt;String?&gt;** |  | [optional] 
**price** | **Optional&lt;int?&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



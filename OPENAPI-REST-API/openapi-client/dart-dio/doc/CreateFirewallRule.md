# interserver_api.model.CreateFirewallRule

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocolId** | **int** | 1 = TCP, 2 = UDP | 
**xdpAction** | **int** | 1 = Block,  0 = Whitelist | 
**destinationPort** | **Optional&lt;int?&gt;** |  | [optional] [default to 80]
**sourceIp** | **Optional&lt;String?&gt;** | Source IP address to match. Use '0.0.0.0' to match any source. | [optional] [default to '0.0.0.0']
**sourcePort** | **Optional&lt;int?&gt;** |  | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



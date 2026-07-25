# swagger.model.CreateFirewallRule

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destinationPort** | **int** |  | [optional] [default to 80]
**sourceIp** | **String** | Source IP address to match. Use &#x27;0.0.0.0&#x27; to match any source. | [optional] [default to &quot;0.0.0.0&quot;]
**sourcePort** | **int** |  | [optional] [default to 0]
**protocolId** | **int** | 1 &#x3D; TCP, 2 &#x3D; UDP | [default to null]
**xdpAction** | **int** | 1 &#x3D; Block,  0 &#x3D; Whitelist | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


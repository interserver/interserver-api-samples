# swagger.model.ServerSwitchport

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchportId** | **int** | Unique identifier for the switchport. | [default to null]
**switchId** | **String** | Unique identifier for the switch associated with the switchport. | [default to null]
**switch_** | **String** | Name of the switch associated with the switchport. | [default to null]
**port** | **String** | Port name on the switch. | [default to null]
**blade** | **String** | Blade name associated with the port. | [default to null]
**justport** | **String** | Port identifier. | [default to null]
**graphId** | **String** | Identifier for the graph associated with the switchport. | [default to null]
**vlans** | **List&lt;String&gt;** | List of VLANs associated with the switchport. | [optional] [default to []]
**vlans6** | **List&lt;String&gt;** | List of IPv6 VLANs associated with the switchport. | [optional] [default to []]
**assetId** | **int** | Unique identifier of the asset associated with the switchport. | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


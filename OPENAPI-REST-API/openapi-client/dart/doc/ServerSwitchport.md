# interserver_api.model.ServerSwitchport

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchportId** | **int** | Unique identifier for the switchport. | 
**switchId** | **String** | Unique identifier for the switch associated with the switchport. | 
**switch_** | **String** | Name of the switch associated with the switchport. | 
**port** | **String** | Port name on the switch. | 
**blade** | **String** | Blade name associated with the port. | 
**justport** | **String** | Port identifier. | 
**graphId** | **String** | Identifier for the graph associated with the switchport. | 
**assetId** | **int** | Unique identifier of the asset associated with the switchport. | 
**vlans** | **List<String>** | List of VLANs associated with the switchport. | [optional] [default to const []]
**vlans6** | **List<String>** | List of IPv6 VLANs associated with the switchport. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



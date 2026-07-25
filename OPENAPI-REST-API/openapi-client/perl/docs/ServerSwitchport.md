# InterServerAPI::Object::ServerSwitchport

## Load the model package
```perl
use InterServerAPI::Object::ServerSwitchport;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchport_id** | **int** | Unique identifier for the switchport. | 
**switch_id** | **string** | Unique identifier for the switch associated with the switchport. | 
**switch** | **string** | Name of the switch associated with the switchport. | 
**port** | **string** | Port name on the switch. | 
**blade** | **string** | Blade name associated with the port. | 
**justport** | **string** | Port identifier. | 
**graph_id** | **string** | Identifier for the graph associated with the switchport. | 
**asset_id** | **int** | Unique identifier of the asset associated with the switchport. | 
**vlans** | **ARRAY[string]** | List of VLANs associated with the switchport. | [optional] 
**vlans6** | **ARRAY[string]** | List of IPv6 VLANs associated with the switchport. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



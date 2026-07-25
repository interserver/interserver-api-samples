# ServerSwitchport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchport_id** | **i32** | Unique identifier for the switchport. | 
**switch_id** | **String** | Unique identifier for the switch associated with the switchport. | 
**switch** | **String** | Name of the switch associated with the switchport. | 
**port** | **String** | Port name on the switch. | 
**blade** | **String** | Blade name associated with the port. | 
**justport** | **String** | Port identifier. | 
**graph_id** | **String** | Identifier for the graph associated with the switchport. | 
**asset_id** | **i32** | Unique identifier of the asset associated with the switchport. | 
**vlans** | Option<**Vec<String>**> | List of VLANs associated with the switchport. | [optional]
**vlans6** | Option<**Vec<String>**> | List of IPv6 VLANs associated with the switchport. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# SERVER_SWITCHPORT

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchport_id** | **INTEGER_32** | Unique identifier for the switchport. | [default to null]
**switch_id** | [**STRING_32**](STRING_32.md) | Unique identifier for the switch associated with the switchport. | [default to null]
**switch** | [**STRING_32**](STRING_32.md) | Name of the switch associated with the switchport. | [default to null]
**port** | [**STRING_32**](STRING_32.md) | Port name on the switch. | [default to null]
**blade** | [**STRING_32**](STRING_32.md) | Blade name associated with the port. | [default to null]
**justport** | [**STRING_32**](STRING_32.md) | Port identifier. | [default to null]
**graph_id** | [**STRING_32**](STRING_32.md) | Identifier for the graph associated with the switchport. | [default to null]
**asset_id** | **INTEGER_32** | Unique identifier of the asset associated with the switchport. | [default to null]
**vlans** | [**LIST [STRING_32]**](STRING_32.md) | List of VLANs associated with the switchport. | [optional] [default to null]
**vlans6** | [**LIST [STRING_32]**](STRING_32.md) | List of IPv6 VLANs associated with the switchport. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



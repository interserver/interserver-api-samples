# ServerSwitchport


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`switchport_id`** | **`Int64`** | Unique identifier for the switchport. | [default to nothing]
**`switch_id`** | **`String`** | Unique identifier for the switch associated with the switchport. | [default to nothing]
**`switch`** | **`String`** | Name of the switch associated with the switchport. | [default to nothing]
**`port`** | **`String`** | Port name on the switch. | [default to nothing]
**`blade`** | **`String`** | Blade name associated with the port. | [default to nothing]
**`justport`** | **`String`** | Port identifier. | [default to nothing]
**`graph_id`** | **`String`** | Identifier for the graph associated with the switchport. | [default to nothing]
**`asset_id`** | **`Int64`** | Unique identifier of the asset associated with the switchport. | [default to nothing]
**`vlans`** | **`Vector{String}`** | List of VLANs associated with the switchport. | [optional] [default to nothing]
**`vlans6`** | **`Vector{String}`** | List of IPv6 VLANs associated with the switchport. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)



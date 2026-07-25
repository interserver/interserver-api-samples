# ServerAsset


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`id`** | **`Int64`** | Unique identifier for the asset. | [default to nothing]
**`order_id`** | **`String`** | Order identifier for the asset. | [default to nothing]
**`hostname`** | **`String`** | Hostname associated with the asset. | [default to nothing]
**`status`** | **`String`** | Status of the asset. | [default to nothing]
**`primary_ipv4`** | **`String`** | Primary IPv4 address of the asset. | [default to nothing]
**`primary_ipv6`** | **`String`** | Primary IPv6 address of the asset. | [default to nothing]
**`datacenter`** | **`String`** | Datacenter identifier for the asset. | [default to nothing]
**`type_id`** | **`String`** | Type identifier for the asset. | [default to nothing]
**`asset_tag`** | **`String`** | Asset tag associated with the asset. | [default to nothing]
**`rack`** | **`String`** | Rack identifier for the asset. | [default to nothing]
**`row`** | **`String`** | Row identifier for the asset. | [default to nothing]
**`col`** | **`String`** | Column identifier for the asset. | [default to nothing]
**`unit_start`** | **`String`** | Starting unit identifier for the asset. | [default to nothing]
**`unit_end`** | **`String`** | Ending unit identifier for the asset. | [default to nothing]
**`unit_sub`** | **`String`** | Subunit identifier for the asset. | [default to nothing]
**`ipmi_mac`** | **`String`** | IPMI MAC address associated with the asset. | [default to nothing]
**`ipmi_ip`** | **`String`** | IPMI IP address associated with the asset. | [default to nothing]
**`ipmi_working`** | **`String`** | IPMI working status associated with the asset. | [default to nothing]
**`company`** | **`String`** | Company associated with the asset. | [default to nothing]
**`comments`** | **`String`** | Comments associated with the asset. | [default to nothing]
**`make`** | **`String`** | Make of the asset. | [default to nothing]
**`model`** | **`String`** | Model of the asset. | [default to nothing]
**`description`** | **`String`** | Description of the asset. | [default to nothing]
**`customer_id`** | **`String`** | Customer identifier for the asset. | [default to nothing]
**`external_id`** | **`String`** | External identifier for the asset. | [default to nothing]
**`billing_status`** | **`String`** | Billing status of the asset. | [default to nothing]
**`overdue`** | **`String`** | Overdue status of the asset. | [default to nothing]
**`asset_id`** | **`String`** | Asset identifier for the asset. | [default to nothing]
**`asset_name`** | **`String`** | Name of the asset. | [default to nothing]
**`rack_id`** | **`String`** | Rack identifier for the asset. | [default to nothing]
**`rack_name`** | **`String`** | Rack name associated with the asset. | [default to nothing]
**`rack_location`** | **`String`** | Location of the rack associated with the asset. | [default to nothing]
**`rack_size`** | **`String`** | Size of the rack associated with the asset. | [default to nothing]
**`rack_x`** | **`String`** | X-coordinate of the asset within the rack. | [default to nothing]
**`rack_y`** | **`String`** | Y-coordinate of the asset within the rack. | [default to nothing]
**`switchports`** | **`Vector{Int64}`** | List of switchports associated with the asset. | [default to nothing]
**`vlans`** | **`Vector{String}`** | List of VLANs associated with the asset. | [default to nothing]
**`vlans6`** | **`Vector{String}`** | List of IPv6 VLANs associated with the asset. | [default to nothing]
**`lease`** | [**`*ServerLease`**](ServerLease.md) |  | [default to nothing]
**`mac`** | **`String`** | MAC address associated with the asset. | [optional] [default to nothing]
**`ipmi_admin_username`** | **`String`** | IPMI admin username associated with the asset. | [optional] [default to nothing]
**`ipmi_admin_password`** | **`String`** | IPMI admin password associated with the asset. | [optional] [default to nothing]
**`ipmi_client_username`** | **`String`** | IPMI client username associated with the asset. | [optional] [default to nothing]
**`ipmi_client_password`** | **`String`** | IPMI client password associated with the asset. | [optional] [default to nothing]
**`ipmi_updated`** | **`String`** | IPMI update status associated with the asset. | [optional] [default to nothing]
**`create_timestamp`** | **`String`** | Timestamp of asset creation. | [optional] [default to nothing]
**`update_timestamp`** | **`String`** | Timestamp of asset update. | [optional] [default to nothing]
**`comment`** | **`String`** | Comment associated with the asset. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)



# ServerAsset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** | Unique identifier for the asset. | 
**order_id** | **String** | Order identifier for the asset. | 
**hostname** | **String** | Hostname associated with the asset. | 
**status** | **String** | Status of the asset. | 
**primary_ipv4** | **String** | Primary IPv4 address of the asset. | 
**primary_ipv6** | **String** | Primary IPv6 address of the asset. | 
**datacenter** | **String** | Datacenter identifier for the asset. | 
**type_id** | **String** | Type identifier for the asset. | 
**asset_tag** | **String** | Asset tag associated with the asset. | 
**rack** | **String** | Rack identifier for the asset. | 
**row** | **String** | Row identifier for the asset. | 
**col** | **String** | Column identifier for the asset. | 
**unit_start** | **String** | Starting unit identifier for the asset. | 
**unit_end** | **String** | Ending unit identifier for the asset. | 
**unit_sub** | **String** | Subunit identifier for the asset. | 
**ipmi_mac** | **String** | IPMI MAC address associated with the asset. | 
**ipmi_ip** | **String** | IPMI IP address associated with the asset. | 
**ipmi_working** | **String** | IPMI working status associated with the asset. | 
**company** | **String** | Company associated with the asset. | 
**comments** | **String** | Comments associated with the asset. | 
**make** | **String** | Make of the asset. | 
**model** | **String** | Model of the asset. | 
**description** | **String** | Description of the asset. | 
**customer_id** | **String** | Customer identifier for the asset. | 
**external_id** | **String** | External identifier for the asset. | 
**billing_status** | **String** | Billing status of the asset. | 
**overdue** | **String** | Overdue status of the asset. | 
**asset_id** | **String** | Asset identifier for the asset. | 
**asset_name** | **String** | Name of the asset. | 
**rack_id** | **String** | Rack identifier for the asset. | 
**rack_name** | **String** | Rack name associated with the asset. | 
**rack_location** | **String** | Location of the rack associated with the asset. | 
**rack_size** | **String** | Size of the rack associated with the asset. | 
**rack_x** | **String** | X-coordinate of the asset within the rack. | 
**rack_y** | **String** | Y-coordinate of the asset within the rack. | 
**switchports** | **Vec<i32>** | List of switchports associated with the asset. | 
**vlans** | **Vec<String>** | List of VLANs associated with the asset. | 
**vlans6** | **Vec<String>** | List of IPv6 VLANs associated with the asset. | 
**lease** | [**models::ServerLease**](ServerLease.md) |  | 
**mac** | Option<**String**> | MAC address associated with the asset. | [optional]
**ipmi_admin_username** | Option<**String**> | IPMI admin username associated with the asset. | [optional]
**ipmi_admin_password** | Option<**String**> | IPMI admin password associated with the asset. | [optional]
**ipmi_client_username** | Option<**String**> | IPMI client username associated with the asset. | [optional]
**ipmi_client_password** | Option<**String**> | IPMI client password associated with the asset. | [optional]
**ipmi_updated** | Option<**String**> | IPMI update status associated with the asset. | [optional]
**create_timestamp** | Option<**String**> | Timestamp of asset creation. | [optional]
**update_timestamp** | Option<**String**> | Timestamp of asset update. | [optional]
**comment** | Option<**String**> | Comment associated with the asset. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# InterserverApiClient::ServerAsset

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique identifier for the asset. | 
**order_id** | **String** | Order identifier for the asset. | 
**hostname** | **String** | Hostname associated with the asset. | 
**status** | **String** | Status of the asset. | 
**primary_ipv4** | **String** | Primary IPv4 address of the asset. | 
**primary_ipv6** | **String** | Primary IPv6 address of the asset. | 
**mac** | **String** | MAC address associated with the asset. | [optional] 
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
**ipmi_admin_username** | **String** | IPMI admin username associated with the asset. | [optional] 
**ipmi_admin_password** | **String** | IPMI admin password associated with the asset. | [optional] 
**ipmi_client_username** | **String** | IPMI client username associated with the asset. | [optional] 
**ipmi_client_password** | **String** | IPMI client password associated with the asset. | [optional] 
**ipmi_updated** | **String** | IPMI update status associated with the asset. | [optional] 
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
**create_timestamp** | **String** | Timestamp of asset creation. | [optional] 
**update_timestamp** | **String** | Timestamp of asset update. | [optional] 
**asset_id** | **String** | Asset identifier for the asset. | 
**asset_name** | **String** | Name of the asset. | 
**rack_id** | **String** | Rack identifier for the asset. | 
**rack_name** | **String** | Rack name associated with the asset. | 
**rack_location** | **String** | Location of the rack associated with the asset. | 
**rack_size** | **String** | Size of the rack associated with the asset. | 
**rack_x** | **String** | X-coordinate of the asset within the rack. | 
**rack_y** | **String** | Y-coordinate of the asset within the rack. | 
**comment** | **String** | Comment associated with the asset. | [optional] 
**switchports** | **Array&lt;Integer&gt;** | List of switchports associated with the asset. | 
**vlans** | **Array&lt;String&gt;** | List of VLANs associated with the asset. | 
**vlans6** | **Array&lt;String&gt;** | List of IPv6 VLANs associated with the asset. | 
**lease** | [**ServerLease**](ServerLease.md) |  | 


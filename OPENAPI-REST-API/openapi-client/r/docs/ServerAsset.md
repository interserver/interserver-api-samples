# interserverapi::ServerAsset


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** | Unique identifier for the asset. | 
**order_id** | **character** | Order identifier for the asset. | 
**hostname** | **character** | Hostname associated with the asset. | 
**status** | **character** | Status of the asset. | 
**primary_ipv4** | **character** | Primary IPv4 address of the asset. | 
**primary_ipv6** | **character** | Primary IPv6 address of the asset. | 
**datacenter** | **character** | Datacenter identifier for the asset. | 
**type_id** | **character** | Type identifier for the asset. | 
**asset_tag** | **character** | Asset tag associated with the asset. | 
**rack** | **character** | Rack identifier for the asset. | 
**row** | **character** | Row identifier for the asset. | 
**col** | **character** | Column identifier for the asset. | 
**unit_start** | **character** | Starting unit identifier for the asset. | 
**unit_end** | **character** | Ending unit identifier for the asset. | 
**unit_sub** | **character** | Subunit identifier for the asset. | 
**ipmi_mac** | **character** | IPMI MAC address associated with the asset. | 
**ipmi_ip** | **character** | IPMI IP address associated with the asset. | 
**ipmi_working** | **character** | IPMI working status associated with the asset. | 
**company** | **character** | Company associated with the asset. | 
**comments** | **character** | Comments associated with the asset. | 
**make** | **character** | Make of the asset. | 
**model** | **character** | Model of the asset. | 
**description** | **character** | Description of the asset. | 
**customer_id** | **character** | Customer identifier for the asset. | 
**external_id** | **character** | External identifier for the asset. | 
**billing_status** | **character** | Billing status of the asset. | 
**overdue** | **character** | Overdue status of the asset. | 
**asset_id** | **character** | Asset identifier for the asset. | 
**asset_name** | **character** | Name of the asset. | 
**rack_id** | **character** | Rack identifier for the asset. | 
**rack_name** | **character** | Rack name associated with the asset. | 
**rack_location** | **character** | Location of the rack associated with the asset. | 
**rack_size** | **character** | Size of the rack associated with the asset. | 
**rack_x** | **character** | X-coordinate of the asset within the rack. | 
**rack_y** | **character** | Y-coordinate of the asset within the rack. | 
**switchports** | **array[integer]** | List of switchports associated with the asset. | 
**vlans** | **array[character]** | List of VLANs associated with the asset. | 
**vlans6** | **array[character]** | List of IPv6 VLANs associated with the asset. | 
**lease** | [**ServerLease**](ServerLease.md) |  | 
**mac** | **character** | MAC address associated with the asset. | [optional] 
**ipmi_admin_username** | **character** | IPMI admin username associated with the asset. | [optional] 
**ipmi_admin_password** | **character** | IPMI admin password associated with the asset. | [optional] 
**ipmi_client_username** | **character** | IPMI client username associated with the asset. | [optional] 
**ipmi_client_password** | **character** | IPMI client password associated with the asset. | [optional] 
**ipmi_updated** | **character** | IPMI update status associated with the asset. | [optional] 
**create_timestamp** | **character** | Timestamp of asset creation. | [optional] 
**update_timestamp** | **character** | Timestamp of asset update. | [optional] 
**comment** | **character** | Comment associated with the asset. | [optional] 



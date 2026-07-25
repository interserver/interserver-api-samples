# InterServerAPI::Object::ServerAsset

## Load the model package
```perl
use InterServerAPI::Object::ServerAsset;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier for the asset. | 
**order_id** | **string** | Order identifier for the asset. | 
**hostname** | **string** | Hostname associated with the asset. | 
**status** | **string** | Status of the asset. | 
**primary_ipv4** | **string** | Primary IPv4 address of the asset. | 
**primary_ipv6** | **string** | Primary IPv6 address of the asset. | 
**mac** | **string** | MAC address associated with the asset. | [optional] 
**datacenter** | **string** | Datacenter identifier for the asset. | 
**type_id** | **string** | Type identifier for the asset. | 
**asset_tag** | **string** | Asset tag associated with the asset. | 
**rack** | **string** | Rack identifier for the asset. | 
**row** | **string** | Row identifier for the asset. | 
**col** | **string** | Column identifier for the asset. | 
**unit_start** | **string** | Starting unit identifier for the asset. | 
**unit_end** | **string** | Ending unit identifier for the asset. | 
**unit_sub** | **string** | Subunit identifier for the asset. | 
**ipmi_mac** | **string** | IPMI MAC address associated with the asset. | 
**ipmi_ip** | **string** | IPMI IP address associated with the asset. | 
**ipmi_admin_username** | **string** | IPMI admin username associated with the asset. | [optional] 
**ipmi_admin_password** | **string** | IPMI admin password associated with the asset. | [optional] 
**ipmi_client_username** | **string** | IPMI client username associated with the asset. | [optional] 
**ipmi_client_password** | **string** | IPMI client password associated with the asset. | [optional] 
**ipmi_updated** | **string** | IPMI update status associated with the asset. | [optional] 
**ipmi_working** | **string** | IPMI working status associated with the asset. | 
**company** | **string** | Company associated with the asset. | 
**comments** | **string** | Comments associated with the asset. | 
**make** | **string** | Make of the asset. | 
**model** | **string** | Model of the asset. | 
**description** | **string** | Description of the asset. | 
**customer_id** | **string** | Customer identifier for the asset. | 
**external_id** | **string** | External identifier for the asset. | 
**billing_status** | **string** | Billing status of the asset. | 
**overdue** | **string** | Overdue status of the asset. | 
**create_timestamp** | **string** | Timestamp of asset creation. | [optional] 
**update_timestamp** | **string** | Timestamp of asset update. | [optional] 
**asset_id** | **string** | Asset identifier for the asset. | 
**asset_name** | **string** | Name of the asset. | 
**rack_id** | **string** | Rack identifier for the asset. | 
**rack_name** | **string** | Rack name associated with the asset. | 
**rack_location** | **string** | Location of the rack associated with the asset. | 
**rack_size** | **string** | Size of the rack associated with the asset. | 
**rack_x** | **string** | X-coordinate of the asset within the rack. | 
**rack_y** | **string** | Y-coordinate of the asset within the rack. | 
**comment** | **string** | Comment associated with the asset. | [optional] 
**switchports** | **ARRAY[int]** | List of switchports associated with the asset. | 
**vlans** | **ARRAY[string]** | List of VLANs associated with the asset. | 
**vlans6** | **ARRAY[string]** | List of IPv6 VLANs associated with the asset. | 
**lease** | [**ServerLease**](ServerLease.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



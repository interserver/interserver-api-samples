# ServerAsset


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier for the asset. | 
**order_id** | **str** | Order identifier for the asset. | 
**hostname** | **str** | Hostname associated with the asset. | 
**status** | **str** | Status of the asset. | 
**primary_ipv4** | **str** | Primary IPv4 address of the asset. | 
**primary_ipv6** | **str** | Primary IPv6 address of the asset. | 
**datacenter** | **str** | Datacenter identifier for the asset. | 
**type_id** | **str** | Type identifier for the asset. | 
**asset_tag** | **str** | Asset tag associated with the asset. | 
**rack** | **str** | Rack identifier for the asset. | 
**row** | **str** | Row identifier for the asset. | 
**col** | **str** | Column identifier for the asset. | 
**unit_start** | **str** | Starting unit identifier for the asset. | 
**unit_end** | **str** | Ending unit identifier for the asset. | 
**unit_sub** | **str** | Subunit identifier for the asset. | 
**ipmi_mac** | **str** | IPMI MAC address associated with the asset. | 
**ipmi_ip** | **str** | IPMI IP address associated with the asset. | 
**ipmi_working** | **str** | IPMI working status associated with the asset. | 
**company** | **str** | Company associated with the asset. | 
**comments** | **str** | Comments associated with the asset. | 
**make** | **str** | Make of the asset. | 
**model** | **str** | Model of the asset. | 
**description** | **str** | Description of the asset. | 
**customer_id** | **str** | Customer identifier for the asset. | 
**external_id** | **str** | External identifier for the asset. | 
**billing_status** | **str** | Billing status of the asset. | 
**overdue** | **str** | Overdue status of the asset. | 
**asset_id** | **str** | Asset identifier for the asset. | 
**asset_name** | **str** | Name of the asset. | 
**rack_id** | **str** | Rack identifier for the asset. | 
**rack_name** | **str** | Rack name associated with the asset. | 
**rack_location** | **str** | Location of the rack associated with the asset. | 
**rack_size** | **str** | Size of the rack associated with the asset. | 
**rack_x** | **str** | X-coordinate of the asset within the rack. | 
**rack_y** | **str** | Y-coordinate of the asset within the rack. | 
**switchports** | **List[int]** | List of switchports associated with the asset. | 
**vlans** | **List[str]** | List of VLANs associated with the asset. | 
**vlans6** | **List[str]** | List of IPv6 VLANs associated with the asset. | 
**lease** | [**ServerLease**](ServerLease.md) |  | 
**mac** | **str** | MAC address associated with the asset. | [optional] 
**ipmi_admin_username** | **str** | IPMI admin username associated with the asset. | [optional] 
**ipmi_admin_password** | **str** | IPMI admin password associated with the asset. | [optional] 
**ipmi_client_username** | **str** | IPMI client username associated with the asset. | [optional] 
**ipmi_client_password** | **str** | IPMI client password associated with the asset. | [optional] 
**ipmi_updated** | **str** | IPMI update status associated with the asset. | [optional] 
**create_timestamp** | **str** | Timestamp of asset creation. | [optional] 
**update_timestamp** | **str** | Timestamp of asset update. | [optional] 
**comment** | **str** | Comment associated with the asset. | [optional] 

## Example

```python
from interserver_api_client.models.server_asset import ServerAsset

# TODO update the JSON string below
json = "{}"
# create an instance of ServerAsset from a JSON string
server_asset_instance = ServerAsset.from_json(json)
# print the JSON string representation of the object
print(ServerAsset.to_json())

# convert the object into a dict
server_asset_dict = server_asset_instance.to_dict()
# create an instance of ServerAsset from a dict
server_asset_from_dict = ServerAsset.from_dict(server_asset_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ServerAsset


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** | Unique identifier for the asset. | [default to undefined]
**order_id** | **string** | Order identifier for the asset. | [default to undefined]
**hostname** | **string** | Hostname associated with the asset. | [default to undefined]
**status** | **string** | Status of the asset. | [default to undefined]
**primary_ipv4** | **string** | Primary IPv4 address of the asset. | [default to undefined]
**primary_ipv6** | **string** | Primary IPv6 address of the asset. | [default to undefined]
**datacenter** | **string** | Datacenter identifier for the asset. | [default to undefined]
**type_id** | **string** | Type identifier for the asset. | [default to undefined]
**asset_tag** | **string** | Asset tag associated with the asset. | [default to undefined]
**rack** | **string** | Rack identifier for the asset. | [default to undefined]
**row** | **string** | Row identifier for the asset. | [default to undefined]
**col** | **string** | Column identifier for the asset. | [default to undefined]
**unit_start** | **string** | Starting unit identifier for the asset. | [default to undefined]
**unit_end** | **string** | Ending unit identifier for the asset. | [default to undefined]
**unit_sub** | **string** | Subunit identifier for the asset. | [default to undefined]
**ipmi_mac** | **string** | IPMI MAC address associated with the asset. | [default to undefined]
**ipmi_ip** | **string** | IPMI IP address associated with the asset. | [default to undefined]
**ipmi_working** | **string** | IPMI working status associated with the asset. | [default to undefined]
**company** | **string** | Company associated with the asset. | [default to undefined]
**comments** | **string** | Comments associated with the asset. | [default to undefined]
**make** | **string** | Make of the asset. | [default to undefined]
**model** | **string** | Model of the asset. | [default to undefined]
**description** | **string** | Description of the asset. | [default to undefined]
**customer_id** | **string** | Customer identifier for the asset. | [default to undefined]
**external_id** | **string** | External identifier for the asset. | [default to undefined]
**billing_status** | **string** | Billing status of the asset. | [default to undefined]
**overdue** | **string** | Overdue status of the asset. | [default to undefined]
**asset_id** | **string** | Asset identifier for the asset. | [default to undefined]
**asset_name** | **string** | Name of the asset. | [default to undefined]
**rack_id** | **string** | Rack identifier for the asset. | [default to undefined]
**rack_name** | **string** | Rack name associated with the asset. | [default to undefined]
**rack_location** | **string** | Location of the rack associated with the asset. | [default to undefined]
**rack_size** | **string** | Size of the rack associated with the asset. | [default to undefined]
**rack_x** | **string** | X-coordinate of the asset within the rack. | [default to undefined]
**rack_y** | **string** | Y-coordinate of the asset within the rack. | [default to undefined]
**switchports** | **Array&lt;number&gt;** | List of switchports associated with the asset. | [default to undefined]
**vlans** | **Array&lt;string&gt;** | List of VLANs associated with the asset. | [default to undefined]
**vlans6** | **Array&lt;string&gt;** | List of IPv6 VLANs associated with the asset. | [default to undefined]
**lease** | [**ServerLease**](ServerLease.md) |  | [default to undefined]
**mac** | **string** | MAC address associated with the asset. | [optional] [default to undefined]
**ipmi_admin_username** | **string** | IPMI admin username associated with the asset. | [optional] [default to undefined]
**ipmi_admin_password** | **string** | IPMI admin password associated with the asset. | [optional] [default to undefined]
**ipmi_client_username** | **string** | IPMI client username associated with the asset. | [optional] [default to undefined]
**ipmi_client_password** | **string** | IPMI client password associated with the asset. | [optional] [default to undefined]
**ipmi_updated** | **string** | IPMI update status associated with the asset. | [optional] [default to undefined]
**create_timestamp** | **string** | Timestamp of asset creation. | [optional] [default to undefined]
**update_timestamp** | **string** | Timestamp of asset update. | [optional] [default to undefined]
**comment** | **string** | Comment associated with the asset. | [optional] [default to undefined]

## Example

```typescript
import { ServerAsset } from '@interserver/myadmin-client';

const instance: ServerAsset = {
    id,
    order_id,
    hostname,
    status,
    primary_ipv4,
    primary_ipv6,
    datacenter,
    type_id,
    asset_tag,
    rack,
    row,
    col,
    unit_start,
    unit_end,
    unit_sub,
    ipmi_mac,
    ipmi_ip,
    ipmi_working,
    company,
    comments,
    make,
    model,
    description,
    customer_id,
    external_id,
    billing_status,
    overdue,
    asset_id,
    asset_name,
    rack_id,
    rack_name,
    rack_location,
    rack_size,
    rack_x,
    rack_y,
    switchports,
    vlans,
    vlans6,
    lease,
    mac,
    ipmi_admin_username,
    ipmi_admin_password,
    ipmi_client_username,
    ipmi_client_password,
    ipmi_updated,
    create_timestamp,
    update_timestamp,
    comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

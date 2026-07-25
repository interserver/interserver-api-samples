# InterServerClient::ServerSwitchport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **switchport_id** | **Integer** | Unique identifier for the switchport. |  |
| **switch_id** | **String** | Unique identifier for the switch associated with the switchport. |  |
| **switch** | **String** | Name of the switch associated with the switchport. |  |
| **port** | **String** | Port name on the switch. |  |
| **blade** | **String** | Blade name associated with the port. |  |
| **justport** | **String** | Port identifier. |  |
| **graph_id** | **String** | Identifier for the graph associated with the switchport. |  |
| **asset_id** | **Integer** | Unique identifier of the asset associated with the switchport. |  |
| **vlans** | **Array&lt;String&gt;** | List of VLANs associated with the switchport. | [optional] |
| **vlans6** | **Array&lt;String&gt;** | List of IPv6 VLANs associated with the switchport. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerSwitchport.new(
  switchport_id: 10414,
  switch_id: 118,
  switch: edge1,
  port: Ethernet1/33,
  blade: Ethernet1,
  justport: 33,
  graph_id: 12622,
  asset_id: 3497,
  vlans: [],
  vlans6: []
)
```


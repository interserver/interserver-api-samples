# ServerSwitchport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchport_id** | **number** | Unique identifier for the switchport. | [default to undefined]
**switch_id** | **string** | Unique identifier for the switch associated with the switchport. | [default to undefined]
**_switch** | **string** | Name of the switch associated with the switchport. | [default to undefined]
**port** | **string** | Port name on the switch. | [default to undefined]
**blade** | **string** | Blade name associated with the port. | [default to undefined]
**justport** | **string** | Port identifier. | [default to undefined]
**graph_id** | **string** | Identifier for the graph associated with the switchport. | [default to undefined]
**asset_id** | **number** | Unique identifier of the asset associated with the switchport. | [default to undefined]
**vlans** | **Array&lt;string&gt;** | List of VLANs associated with the switchport. | [optional] [default to undefined]
**vlans6** | **Array&lt;string&gt;** | List of IPv6 VLANs associated with the switchport. | [optional] [default to undefined]

## Example

```typescript
import { ServerSwitchport } from '@interserver/myadmin-client';

const instance: ServerSwitchport = {
    switchport_id,
    switch_id,
    _switch,
    port,
    blade,
    justport,
    graph_id,
    asset_id,
    vlans,
    vlans6,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

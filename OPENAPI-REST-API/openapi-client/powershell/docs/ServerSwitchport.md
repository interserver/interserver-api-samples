# ServerSwitchport
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SwitchportId** | **Int32** | Unique identifier for the switchport. | 
**SwitchId** | **String** | Unique identifier for the switch associated with the switchport. | 
**VarSwitch** | **String** | Name of the switch associated with the switchport. | 
**Port** | **String** | Port name on the switch. | 
**Blade** | **String** | Blade name associated with the port. | 
**Justport** | **String** | Port identifier. | 
**GraphId** | **String** | Identifier for the graph associated with the switchport. | 
**Vlans** | **String[]** | List of VLANs associated with the switchport. | [optional] 
**Vlans6** | **String[]** | List of IPv6 VLANs associated with the switchport. | [optional] 
**AssetId** | **Int32** | Unique identifier of the asset associated with the switchport. | 

## Examples

- Prepare the resource
```powershell
$ServerSwitchport = Initialize-InterserverApiServerSwitchport  -SwitchportId 10414 `
 -SwitchId 118 `
 -VarSwitch edge1 `
 -Port Ethernet1/33 `
 -Blade Ethernet1 `
 -Justport 33 `
 -GraphId 12622 `
 -Vlans [] `
 -Vlans6 [] `
 -AssetId 3497
```

- Convert the resource to JSON
```powershell
$ServerSwitchport | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


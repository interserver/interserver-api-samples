# ServerNetworkInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Vlans** | **String[]** | List of VLANs. | 
**Vlans6** | **String[]** | List of IPv6 VLANs. | 
**Assets** | [**ServerNetworkInfoAssets**](ServerNetworkInfoAssets.md) |  | 
**Switchports** | [**ServerNetworkInfoSwitchports**](ServerNetworkInfoSwitchports.md) |  | 

## Examples

- Prepare the resource
```powershell
$ServerNetworkInfo = Initialize-InterserverApiServerNetworkInfo  -Vlans [] `
 -Vlans6 [] `
 -Assets null `
 -Switchports null
```

- Convert the resource to JSON
```powershell
$ServerNetworkInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


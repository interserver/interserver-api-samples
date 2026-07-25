# ServerAsset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Unique identifier for the asset. | 
**OrderId** | **String** | Order identifier for the asset. | 
**Hostname** | **String** | Hostname associated with the asset. | 
**Status** | **String** | Status of the asset. | 
**PrimaryIpv4** | **String** | Primary IPv4 address of the asset. | 
**PrimaryIpv6** | **String** | Primary IPv6 address of the asset. | 
**Mac** | **String** | MAC address associated with the asset. | [optional] 
**Datacenter** | **String** | Datacenter identifier for the asset. | 
**TypeId** | **String** | Type identifier for the asset. | 
**AssetTag** | **String** | Asset tag associated with the asset. | 
**Rack** | **String** | Rack identifier for the asset. | 
**Row** | **String** | Row identifier for the asset. | 
**Col** | **String** | Column identifier for the asset. | 
**UnitStart** | **String** | Starting unit identifier for the asset. | 
**UnitEnd** | **String** | Ending unit identifier for the asset. | 
**UnitSub** | **String** | Subunit identifier for the asset. | 
**IpmiMac** | **String** | IPMI MAC address associated with the asset. | 
**IpmiIp** | **String** | IPMI IP address associated with the asset. | 
**IpmiAdminUsername** | **String** | IPMI admin username associated with the asset. | [optional] 
**IpmiAdminPassword** | **String** | IPMI admin password associated with the asset. | [optional] 
**IpmiClientUsername** | **String** | IPMI client username associated with the asset. | [optional] 
**IpmiClientPassword** | **String** | IPMI client password associated with the asset. | [optional] 
**IpmiUpdated** | **String** | IPMI update status associated with the asset. | [optional] 
**IpmiWorking** | **String** | IPMI working status associated with the asset. | 
**Company** | **String** | Company associated with the asset. | 
**Comments** | **String** | Comments associated with the asset. | 
**Make** | **String** | Make of the asset. | 
**Model** | **String** | Model of the asset. | 
**Description** | **String** | Description of the asset. | 
**CustomerId** | **String** | Customer identifier for the asset. | 
**ExternalId** | **String** | External identifier for the asset. | 
**BillingStatus** | **String** | Billing status of the asset. | 
**Overdue** | **String** | Overdue status of the asset. | 
**CreateTimestamp** | **String** | Timestamp of asset creation. | [optional] 
**UpdateTimestamp** | **String** | Timestamp of asset update. | [optional] 
**AssetId** | **String** | Asset identifier for the asset. | 
**AssetName** | **String** | Name of the asset. | 
**RackId** | **String** | Rack identifier for the asset. | 
**RackName** | **String** | Rack name associated with the asset. | 
**RackLocation** | **String** | Location of the rack associated with the asset. | 
**RackSize** | **String** | Size of the rack associated with the asset. | 
**RackX** | **String** | X-coordinate of the asset within the rack. | 
**RackY** | **String** | Y-coordinate of the asset within the rack. | 
**Comment** | **String** | Comment associated with the asset. | [optional] 
**Switchports** | **Int32[]** | List of switchports associated with the asset. | 
**Vlans** | **String[]** | List of VLANs associated with the asset. | 
**Vlans6** | **String[]** | List of IPv6 VLANs associated with the asset. | 
**Lease** | [**ServerLease**](ServerLease.md) |  | 

## Examples

- Prepare the resource
```powershell
$ServerAsset = Initialize-InterserverApiServerAsset  -Id 3497 `
 -OrderId 16058 `
 -Hostname myserver.host.com `
 -Status active `
 -PrimaryIpv4 1.2.3.250 `
 -PrimaryIpv6  `
 -Mac null `
 -Datacenter 2 `
 -TypeId 1 `
 -AssetTag  `
 -Rack 68 `
 -Row 017 `
 -Col 06 `
 -UnitStart 37 `
 -UnitEnd 37 `
 -UnitSub 0 `
 -IpmiMac 0c:c4:7a:af:35:00 `
 -IpmiIp 10.8.69.7 `
 -IpmiAdminUsername null `
 -IpmiAdminPassword null `
 -IpmiClientUsername null `
 -IpmiClientPassword null `
 -IpmiUpdated null `
 -IpmiWorking 0 `
 -Company int `
 -Comments  `
 -Make Supermicro `
 -Model SYS-6018R-TDW `
 -Description  `
 -CustomerId int5377 `
 -ExternalId  `
 -BillingStatus active `
 -Overdue 0 `
 -CreateTimestamp null `
 -UpdateTimestamp null `
 -AssetId 1 `
 -AssetName server `
 -RackId 68 `
 -RackName 112.16 `
 -RackLocation 2 `
 -RackSize 44 `
 -RackX 25 `
 -RackY 5 `
 -Comment null `
 -Switchports [10414] `
 -Vlans [] `
 -Vlans6 [] `
 -Lease null
```

- Convert the resource to JSON
```powershell
$ServerAsset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


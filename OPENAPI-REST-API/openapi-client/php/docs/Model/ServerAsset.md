# ServerAsset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier for the asset. |
**orderId** | **string** | Order identifier for the asset. |
**hostname** | **string** | Hostname associated with the asset. |
**status** | **string** | Status of the asset. |
**primaryIpv4** | **string** | Primary IPv4 address of the asset. |
**primaryIpv6** | **string** | Primary IPv6 address of the asset. |
**datacenter** | **string** | Datacenter identifier for the asset. |
**typeId** | **string** | Type identifier for the asset. |
**assetTag** | **string** | Asset tag associated with the asset. |
**rack** | **string** | Rack identifier for the asset. |
**row** | **string** | Row identifier for the asset. |
**col** | **string** | Column identifier for the asset. |
**unitStart** | **string** | Starting unit identifier for the asset. |
**unitEnd** | **string** | Ending unit identifier for the asset. |
**unitSub** | **string** | Subunit identifier for the asset. |
**ipmiMac** | **string** | IPMI MAC address associated with the asset. |
**ipmiIp** | **string** | IPMI IP address associated with the asset. |
**ipmiWorking** | **string** | IPMI working status associated with the asset. |
**company** | **string** | Company associated with the asset. |
**comments** | **string** | Comments associated with the asset. |
**make** | **string** | Make of the asset. |
**model** | **string** | Model of the asset. |
**description** | **string** | Description of the asset. |
**customerId** | **string** | Customer identifier for the asset. |
**externalId** | **string** | External identifier for the asset. |
**billingStatus** | **string** | Billing status of the asset. |
**overdue** | **string** | Overdue status of the asset. |
**assetId** | **string** | Asset identifier for the asset. |
**assetName** | **string** | Name of the asset. |
**rackId** | **string** | Rack identifier for the asset. |
**rackName** | **string** | Rack name associated with the asset. |
**rackLocation** | **string** | Location of the rack associated with the asset. |
**rackSize** | **string** | Size of the rack associated with the asset. |
**rackX** | **string** | X-coordinate of the asset within the rack. |
**rackY** | **string** | Y-coordinate of the asset within the rack. |
**switchports** | **int[]** | List of switchports associated with the asset. |
**vlans** | **string[]** | List of VLANs associated with the asset. |
**vlans6** | **string[]** | List of IPv6 VLANs associated with the asset. |
**lease** | [**\Interserver\\MyAdmin\Model\ServerLease**](ServerLease.md) |  |
**mac** | **string** | MAC address associated with the asset. | [optional]
**ipmiAdminUsername** | **string** | IPMI admin username associated with the asset. | [optional]
**ipmiAdminPassword** | **string** | IPMI admin password associated with the asset. | [optional]
**ipmiClientUsername** | **string** | IPMI client username associated with the asset. | [optional]
**ipmiClientPassword** | **string** | IPMI client password associated with the asset. | [optional]
**ipmiUpdated** | **string** | IPMI update status associated with the asset. | [optional]
**createTimestamp** | **string** | Timestamp of asset creation. | [optional]
**updateTimestamp** | **string** | Timestamp of asset update. | [optional]
**comment** | **string** | Comment associated with the asset. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

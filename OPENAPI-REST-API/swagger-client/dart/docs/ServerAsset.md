# swagger.model.ServerAsset

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier for the asset. | [default to null]
**orderId** | **String** | Order identifier for the asset. | [default to null]
**hostname** | **String** | Hostname associated with the asset. | [default to null]
**status** | **String** | Status of the asset. | [default to null]
**primaryIpv4** | **String** | Primary IPv4 address of the asset. | [default to null]
**primaryIpv6** | **String** | Primary IPv6 address of the asset. | [default to null]
**mac** | **String** | MAC address associated with the asset. | [optional] [default to null]
**datacenter** | **String** | Datacenter identifier for the asset. | [default to null]
**typeId** | **String** | Type identifier for the asset. | [default to null]
**assetTag** | **String** | Asset tag associated with the asset. | [default to null]
**rack** | **String** | Rack identifier for the asset. | [default to null]
**row** | **String** | Row identifier for the asset. | [default to null]
**col** | **String** | Column identifier for the asset. | [default to null]
**unitStart** | **String** | Starting unit identifier for the asset. | [default to null]
**unitEnd** | **String** | Ending unit identifier for the asset. | [default to null]
**unitSub** | **String** | Subunit identifier for the asset. | [default to null]
**ipmiMac** | **String** | IPMI MAC address associated with the asset. | [default to null]
**ipmiIp** | **String** | IPMI IP address associated with the asset. | [default to null]
**ipmiAdminUsername** | **String** | IPMI admin username associated with the asset. | [optional] [default to null]
**ipmiAdminPassword** | **String** | IPMI admin password associated with the asset. | [optional] [default to null]
**ipmiClientUsername** | **String** | IPMI client username associated with the asset. | [optional] [default to null]
**ipmiClientPassword** | **String** | IPMI client password associated with the asset. | [optional] [default to null]
**ipmiUpdated** | **String** | IPMI update status associated with the asset. | [optional] [default to null]
**ipmiWorking** | **String** | IPMI working status associated with the asset. | [default to null]
**company** | **String** | Company associated with the asset. | [default to null]
**comments** | **String** | Comments associated with the asset. | [default to null]
**make** | **String** | Make of the asset. | [default to null]
**model** | **String** | Model of the asset. | [default to null]
**description** | **String** | Description of the asset. | [default to null]
**customerId** | **String** | Customer identifier for the asset. | [default to null]
**externalId** | **String** | External identifier for the asset. | [default to null]
**billingStatus** | **String** | Billing status of the asset. | [default to null]
**overdue** | **String** | Overdue status of the asset. | [default to null]
**createTimestamp** | **String** | Timestamp of asset creation. | [optional] [default to null]
**updateTimestamp** | **String** | Timestamp of asset update. | [optional] [default to null]
**assetId** | **String** | Asset identifier for the asset. | [default to null]
**assetName** | **String** | Name of the asset. | [default to null]
**rackId** | **String** | Rack identifier for the asset. | [default to null]
**rackName** | **String** | Rack name associated with the asset. | [default to null]
**rackLocation** | **String** | Location of the rack associated with the asset. | [default to null]
**rackSize** | **String** | Size of the rack associated with the asset. | [default to null]
**rackX** | **String** | X-coordinate of the asset within the rack. | [default to null]
**rackY** | **String** | Y-coordinate of the asset within the rack. | [default to null]
**comment** | **String** | Comment associated with the asset. | [optional] [default to null]
**switchports** | **List&lt;int&gt;** | List of switchports associated with the asset. | [default to []]
**vlans** | **List&lt;String&gt;** | List of VLANs associated with the asset. | [default to []]
**vlans6** | **List&lt;String&gt;** | List of IPv6 VLANs associated with the asset. | [default to []]
**lease** | [**ServerLease**](ServerLease.md) |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


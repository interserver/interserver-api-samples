# QuickserverServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QsId** | **String** | Quickserver ID | [optional] 
**QsCustid** | **String** | Customer ID | [optional] 
**QsServer** | **String** | Server information | [optional] 
**QsIp** | **String** | IP address | [optional] 
**QsIpv6** | **String** | IPv6 address (null) | [optional] 
**QsVzid** | **String** | VZ ID | [optional] 
**QsCurrency** | **String** | Currency | [optional] 
**QsType** | **String** | Type | [optional] 
**QsOrderDate** | **String** | Order date | [optional] 
**QsStatus** | **String** | Status | [optional] 
**QsInvoice** | **String** | Invoice number | [optional] 
**QsCoupon** | **String** | Coupon information | [optional] 
**QsExtra** | **String** | Extra information | [optional] 
**QsHostname** | **String** | Hostname | [optional] 
**QsServerStatus** | **String** | Server status | [optional] 
**QsComment** | **String** | Comment | [optional] 
**QsSlices** | **String** | Slices information | [optional] 
**QsVnc** | **String** | VNC information | [optional] 
**QsVncPort** | **Int32** | VNC port (null) | [optional] 
**QsRootpass** | **String** | Root password | [optional] 
**QsMac** | **String** | MAC address | [optional] 
**QsOs** | **String** | Operating system | [optional] 
**QsVersion** | **String** | OS version | [optional] 
**QsLocation** | **String** | Location | [optional] 
**QsPlatform** | **String** | Platform (null) | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickserverServiceInfo = Initialize-InterserverApiQuickserverServiceInfo  -QsId 24355 `
 -QsCustid 771282 `
 -QsServer 365 `
 -QsIp  `
 -QsIpv6 null `
 -QsVzid qs24355 `
 -QsCurrency USD `
 -QsType 700 `
 -QsOrderDate 2023-04-11T20:00:06.000Z `
 -QsStatus canceled `
 -QsInvoice 20297531 `
 -QsCoupon 0 `
 -QsExtra {&quot;platform&quot;:&quot;kvm&quot;} `
 -QsHostname qs24355 `
 -QsServerStatus deleted `
 -QsComment  `
 -QsSlices 0 `
 -QsVnc 99.88.77.66 `
 -QsVncPort null `
 -QsRootpass  `
 -QsMac  `
 -QsOs ubuntu24 `
 -QsVersion Ubuntu `
 -QsLocation 1 `
 -QsPlatform null
```

- Convert the resource to JSON
```powershell
$QuickserverServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


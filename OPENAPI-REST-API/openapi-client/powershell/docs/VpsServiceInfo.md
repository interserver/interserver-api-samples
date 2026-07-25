# VpsServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VpsId** | **String** | VPS ID | [optional] 
**VpsCustid** | **String** | Customer ID | [optional] 
**VpsServer** | **String** | Server ID | [optional] 
**VpsIp** | **String** | IP address of the VPS | [optional] 
**VpsIpv6** | **String** | IPv6 address of the VPS | [optional] 
**VpsVzid** | **String** | VPS Virtuozzo ID | [optional] 
**VpsCurrency** | **String** | Currency used for billing | [optional] 
**VpsType** | **String** | VPS type | [optional] 
**VpsOrderDate** | **String** | Date of VPS order | [optional] 
**VpsStatus** | **String** | VPS status | [optional] 
**VpsInvoice** | **String** | VPS invoice number | [optional] 
**VpsCoupon** | **String** | VPS coupon code | [optional] 
**VpsExtra** | **String** | Additional information about the VPS | [optional] 
**VpsHostname** | **String** | VPS hostname | [optional] 
**VpsServerStatus** | **String** | Status of the VPS server | [optional] 
**VpsComment** | **String** | Comment associated with the VPS | [optional] 
**VpsSlices** | **String** | Number of VPS slices | [optional] 
**VpsVnc** | **String** | VNC address | [optional] 
**VpsVncPort** | **String** | VNC port | [optional] 
**VpsRootpass** | **String** | Root password of the VPS | [optional] 
**VpsMac** | **String** | MAC address of the VPS | [optional] 
**VpsOs** | **String** | Operating system of the VPS | [optional] 
**VpsVersion** | **String** | Version of the operating system | [optional] 
**VpsLocation** | **String** | Location of the VPS | [optional] 
**VpsPlatform** | **String** | Virtualization platform | [optional] 
**VpsDiskused** | **String** | Amount of disk space used | [optional] 
**VpsDiskmax** | **String** | Maximum disk space available | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsServiceInfo = Initialize-InterserverApiVpsServiceInfo  -VpsId 85872 `
 -VpsCustid 223513 `
 -VpsServer 2439 `
 -VpsIp 1.2.3.4 `
 -VpsIpv6 null `
 -VpsVzid vps85872 `
 -VpsCurrency USD `
 -VpsType 33 `
 -VpsOrderDate 2022-12-26T20:14:59.000Z `
 -VpsStatus active `
 -VpsInvoice 20130799 `
 -VpsCoupon 3646 `
 -VpsExtra {&quot;spice&quot;:5903,&quot;snapshots&quot;:[{&quot;name&quot;:&quot;third&quot;,&quot;used&quot;:36490445,&quot;date&quot;:1692095220},{&quot;name&quot;:&quot;second&quot;,&quot;used&quot;:40894464,&quot;date&quot;:1692181620},{&quot;name&quot;:&quot;first&quot;,&quot;used&quot;:54735668,&quot;date&quot;:1692268020}]} `
 -VpsHostname vps85872 `
 -VpsServerStatus running `
 -VpsComment my-web-2 `
 -VpsSlices 16 `
 -VpsVnc 8.7.6.5 `
 -VpsVncPort 5902 `
 -VpsRootpass mypassword `
 -VpsMac 00:16:3e:27:59:b2 `
 -VpsOs ubuntu24 `
 -VpsVersion ubuntu `
 -VpsLocation 1 `
 -VpsPlatform kvm `
 -VpsDiskused 0 `
 -VpsDiskmax 0
```

- Convert the resource to JSON
```powershell
$VpsServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


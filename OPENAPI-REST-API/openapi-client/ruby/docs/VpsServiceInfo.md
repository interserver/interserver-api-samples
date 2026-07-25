# InterServerClient::VpsServiceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vps_id** | **String** | VPS ID | [optional] |
| **vps_custid** | **String** | Customer ID | [optional] |
| **vps_server** | **String** | Server ID | [optional] |
| **vps_ip** | **String** | IP address of the VPS | [optional] |
| **vps_ipv6** | **String** | IPv6 address of the VPS | [optional] |
| **vps_vzid** | **String** | VPS Virtuozzo ID | [optional] |
| **vps_currency** | **String** | Currency used for billing | [optional] |
| **vps_type** | **String** | VPS type | [optional] |
| **vps_order_date** | **String** | Date of VPS order | [optional] |
| **vps_status** | **String** | VPS status | [optional] |
| **vps_invoice** | **String** | VPS invoice number | [optional] |
| **vps_coupon** | **String** | VPS coupon code | [optional] |
| **vps_extra** | **String** | Additional information about the VPS | [optional] |
| **vps_hostname** | **String** | VPS hostname | [optional] |
| **vps_server_status** | **String** | Status of the VPS server | [optional] |
| **vps_comment** | **String** | Comment associated with the VPS | [optional] |
| **vps_slices** | **String** | Number of VPS slices | [optional] |
| **vps_vnc** | **String** | VNC address | [optional] |
| **vps_vnc_port** | **String** | VNC port | [optional] |
| **vps_rootpass** | **String** | Root password of the VPS | [optional] |
| **vps_mac** | **String** | MAC address of the VPS | [optional] |
| **vps_os** | **String** | Operating system of the VPS | [optional] |
| **vps_version** | **String** | Version of the operating system | [optional] |
| **vps_location** | **String** | Location of the VPS | [optional] |
| **vps_platform** | **String** | Virtualization platform | [optional] |
| **vps_diskused** | **String** | Amount of disk space used | [optional] |
| **vps_diskmax** | **String** | Maximum disk space available | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsServiceInfo.new(
  vps_id: 85872,
  vps_custid: 223513,
  vps_server: 2439,
  vps_ip: 1.2.3.4,
  vps_ipv6: null,
  vps_vzid: vps85872,
  vps_currency: USD,
  vps_type: 33,
  vps_order_date: 2022-12-26T20:14:59.000Z,
  vps_status: active,
  vps_invoice: 20130799,
  vps_coupon: 3646,
  vps_extra: {&quot;spice&quot;:5903,&quot;snapshots&quot;:[{&quot;name&quot;:&quot;third&quot;,&quot;used&quot;:36490445,&quot;date&quot;:1692095220},{&quot;name&quot;:&quot;second&quot;,&quot;used&quot;:40894464,&quot;date&quot;:1692181620},{&quot;name&quot;:&quot;first&quot;,&quot;used&quot;:54735668,&quot;date&quot;:1692268020}]},
  vps_hostname: vps85872,
  vps_server_status: running,
  vps_comment: my-web-2,
  vps_slices: 16,
  vps_vnc: 8.7.6.5,
  vps_vnc_port: 5902,
  vps_rootpass: mypassword,
  vps_mac: 00:16:3e:27:59:b2,
  vps_os: ubuntu24,
  vps_version: ubuntu,
  vps_location: 1,
  vps_platform: kvm,
  vps_diskused: 0,
  vps_diskmax: 0
)
```

